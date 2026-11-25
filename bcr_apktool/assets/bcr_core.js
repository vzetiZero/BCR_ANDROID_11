/* BCR Android — script tiêm vào MỌI khung, chạy trước khi trang tải (document-start).
 *
 * Thay cho phần CDP của bản desktop:
 *   - Đọc bảng cầu / khay chip / ô cược ngay trong khung chứa bàn.
 *   - Bấm chip + ô cược bằng sự kiện chuột tổng hợp; trả thêm toạ độ tuyệt đối
 *     để native bấm bằng cảm ứng thật khi site chặn sự kiện tổng hợp.
 *
 * Cầu nối: native cài `BcrNative.postMessage(String)` (WebViewCompat
 * addWebMessageListener, cho phép mọi origin nên khung bàn khác origin vẫn nói
 * chuyện được). Mỗi khung tự gửi/nhận JSON; native gửi lệnh ngược lại bằng
 * `replyProxy.postMessage(json)`, khung nhận qua sự kiện `message`.
 *
 * Chỉ đọc DOM của chính trang đang mở. Không đọc cookie/token, không gửi dữ liệu
 * ra ngoài thiết bị.
 */
(function () {
  'use strict';
  if (window.__BCR_INSTALLED__) return;
  window.__BCR_INSTALLED__ = true;

  var FRAME_ID = 'f' + Math.random().toString(36).slice(2, 10) + '_' + (Date.now() % 100000);
  var MIN_TEXT_GROUP = 6;
  var MIN_SVG_GROUP = 12;
  var SPECIAL_IDS = [
    'LightningBac0001', 'XXXtremeLB000001', 'NoCommBac0000001',
    'gwbaccarat000001', 'Empgwbaccarat001', 'PTBaccarat000001', 'InsuranceBac0001'
  ];
  var outbox = [];

  function sleep(ms) { return new Promise(function (r) { setTimeout(r, ms); }); }

  /* ============================== nguồn kết quả ==============================
   *
   * Script này KHÔNG đụng vào bất kỳ API mạng nào của trang (không thay `WebSocket`,
   * không `fetch`, không `XMLHttpRequest`). Bản v1.8 từng thay `window.WebSocket` để
   * nghe khung mạng — chính chỗ đó làm đứt prototype chain và khiến nhà cái đá phiên
   * ngay khi ván bắt đầu, nên đã gỡ sạch.
   *
   * Kết quả tay giờ đọc từ BẢNG CẦU của bàn: mỗi ván mới là một ô `roadItem` mới. Đó
   * là dữ liệu trang vốn đã công khai cho người chơi, nên không có gì để site phát hiện.
   */

  /* ============================== cầu nối native ============================== */

  function post(payload) {
    payload.frameId = FRAME_ID;
    payload.url = location.href;
    outbox.push(JSON.stringify(payload));
    if (outbox.length > 60) outbox.shift();
    flush();
  }

  function flush() {
    if (!outbox.length) return;
    var api = window.BcrNative;
    if (!api || typeof api.postMessage !== 'function') return;
    while (outbox.length) {
      var text = outbox[0];
      try {
        api.postMessage(text);
        outbox.shift();
      } catch (e) {
        return;
      }
    }
  }

  function reply(id, cmd, ok, result, error) {
    post({ __bcr: 'res', id: id, cmd: cmd, ok: ok, result: result || null, error: error || '' });
  }

  /* Chuyển lệnh xuống khung con. postMessage đi qua được cả khung KHÁC origin — đây là
   * lý do bản Android không cần CDP như desktop. Mỗi khung chỉ xử lý một lệnh một lần. */
  var handled = {};
  function relay(msg) {
    var depth = Number(msg.depth || 0);
    if (depth >= 5) return;
    var count = 0;
    try { count = window.frames.length; } catch (e) { return; }
    for (var i = 0; i < count; i++) {
      var copy = {};
      for (var key in msg) {
        if (Object.prototype.hasOwnProperty.call(msg, key)) copy[key] = msg[key];
      }
      copy.depth = depth + 1;
      try { window.frames[i].postMessage(JSON.stringify(copy), '*'); } catch (e) { /* bỏ qua */ }
    }
  }

  window.addEventListener('message', function (evt) {
    var raw = evt && evt.data;
    if (typeof raw !== 'string') return;
    var msg;
    try { msg = JSON.parse(raw); } catch (e) { return; }
    onCommand(msg);
  }, false);

  /* Kênh chính thức của WebViewCompat.addWebMessageListener: object BcrNative vừa có
   * postMessage() vừa phát 'message'. Object này có thể xuất hiện sau document-start nên
   * phải thử lại vài nhịp. */
  function bindNativeChannel() {
    var api = window.BcrNative;
    if (!api || typeof api.addEventListener !== 'function') return false;
    api.addEventListener('message', function (evt) {
      var raw = evt && evt.data;
      if (typeof raw !== 'string') return;
      var msg;
      try { msg = JSON.parse(raw); } catch (e) { return; }
      onCommand(msg);
    });
    flush();
    return true;
  }

  var nativeReady = bindNativeChannel();
  var bindTries = 0;
  var bindTimer = setInterval(function () {
    bindTries += 1;
    if (nativeReady || bindTries > 100) {
      clearInterval(bindTimer);
      return;
    }
    nativeReady = bindNativeChannel();
    if (nativeReady) clearInterval(bindTimer);
  }, 100);

  function onCommand(msg) {
    if (!msg || msg.__bcr !== 'cmd') return;
    if (handled[msg.id]) return;
    handled[msg.id] = Date.now();
    var cutoff = Date.now() - 120000;
    for (var id in handled) {
      if (handled[id] < cutoff) delete handled[id];
    }
    relay(msg);
    handle(msg);
  }

  /* Đường dự phòng: native gọi trực tiếp trong khung gốc (WebView cũ không có
   * WebMessageListener). */
  window.__BCR__ = {
    dispatch: function (json) {
      var msg;
      try { msg = JSON.parse(json); } catch (e) { return false; }
      onCommand(msg);
      return true;
    },
    version: '2'
  };

  function handle(msg) {
    var id = msg.id, cmd = msg.cmd, args = msg.args || {};
    if (msg.targetFrameId && msg.targetFrameId !== FRAME_ID) return;
    var out;
    try {
      out = Promise.resolve(run(cmd, args));
    } catch (err) {
      reply(id, cmd, false, null, String((err && err.message) || err));
      return;
    }
    out.then(function (result) {
      reply(id, cmd, true, result, '');
    }, function (err) {
      reply(id, cmd, false, null, String((err && err.message) || err));
    });
  }

  /* Báo hiện diện một lần khi khung sẵn sàng (native biết khung mới xuất hiện). */
  function hello() {
    post({ __bcr: 'hello', ready: true, top: window === window.top, href: location.href });
  }
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', hello, { once: true });
  }
  setTimeout(hello, 400);

  /* ================================ tiện ích DOM ================================ */

  function txt(el) {
    return el ? String(el.innerText || el.textContent || '').replace(/\s+/g, ' ').trim() : '';
  }

  function visible(el) {
    if (!el) return false;
    var r = el.getBoundingClientRect();
    if (r.width <= 4 || r.height <= 4) return false;
    var st = getComputedStyle(el);
    return st.display !== 'none' && st.visibility !== 'hidden' && st.opacity !== '0';
  }

  function digits(s) {
    if (s === null || s === undefined) return null;
    // Bỏ ký tự điều khiển unicode mà site chèn quanh số tiền (U+2066..U+2069), rồi bỏ
    // tiền tố tiền tệ "VN2"/"VND"/"USD" — nếu không, chữ số 2 trong "VN2" bị đọc thành số.
    // Không dùng \b vì site viết liền "BANKERVN2 20" (chữ cái dính liền mã tiền tệ).
    var text = String(s)
      .replace(/[\u2066\u2067\u2068\u2069\u200e\u200f]/g, '')
      .replace(/(?:VN2|VND|USDT|USD|CNY|THB|KRW|JPY|EUR)/gi, ' ');
    var m = text.match(/\d[\d.,]*/);
    if (!m) return null;
    return parseInt(m[0].replace(/[^\d]/g, ''), 10);
  }

  function hueOf(color) {
    var m = /rgba?\(\s*(\d+)[,\s]+(\d+)[,\s]+(\d+)/.exec(color || '');
    if (!m) return null;
    var r = +m[1] / 255, g = +m[2] / 255, b = +m[3] / 255;
    var mx = Math.max(r, g, b), mn = Math.min(r, g, b), d = mx - mn;
    if (d < 0.15) return null;
    var h;
    if (mx === r) h = ((g - b) / d) % 6;
    else if (mx === g) h = (b - r) / d + 2;
    else h = (r - g) / d + 4;
    return (h * 60 + 360) % 360;
  }

  function sideOf(color) {
    var h = hueOf(color);
    if (h === null) return null;
    if (h >= 335 || h <= 22) return 'B';
    if (h >= 190 && h <= 275) return 'P';
    if (h >= 75 && h <= 170) return 'T';
    return null;
  }

  function ancestorAt(el, levels) {
    var node = el;
    for (var i = 0; i < levels && node.parentElement; i++) node = node.parentElement;
    return node;
  }

  /* ------------------------- đọc state React của trang -------------------------
   *
   * Trang là React: mỗi element có khoá `__reactFiber$xxx` trỏ vào fiber, và
   * `memoizedProps` chứa ĐÚNG số tiền đang đặt — không phải con số vẽ ra màn hình.
   *
   * Đây là nguồn chính xác nhất: cộng `data-value` các chip trong DOM có thể sai khi
   * site đang chạy animation (chip cũ chưa gỡ, chip mới đã vẽ, hoặc chỉ vẽ chip trên
   * cùng kèm nhãn tổng). Fiber thì luôn là state thật mà site sẽ gửi đi.
   */
  function reactFiberOf(el) {
    if (!el) return null;
    var key = Object.keys(el).filter(function (n) {
      return n.indexOf('__reactFiber$') === 0 || n.indexOf('__reactInternalInstance$') === 0;
    })[0];
    return key ? el[key] : null;
  }

  /* Chỉ những tên prop THẬT SỰ là "tổng tiền đang đặt" trên ô này.
   *
   * Bản nháp trước dùng /amount|total|stake|bet|value|sum/ nên khớp cả `value` (mệnh
   * giá chip), `betId`, và đi ngược 25 tầng fiber nên có thể chạm component của bàn
   * khác → đọc ra số tiền của ô khác. Sai kiểu đó khiến app tưởng "đã đặt đủ" rồi
   * dừng giữa chừng, hoặc tệ hơn là bấm bù quá mức. Giờ khớp CHÍNH XÁC tên. */
  var STRICT_AMOUNT_KEYS = [
    'amount', 'betamount', 'totalamount', 'stake', 'totalstake',
    'bettotal', 'totalbet', 'placedamount', 'betvalue', 'totalvalue',
    'spotamount', 'chipamount'
  ];

  function strictAmountIn(obj) {
    if (!obj || typeof obj !== 'object') return null;
    var keys = Object.keys(obj);
    for (var i = 0; i < keys.length && i < 80; i++) {
      var k = keys[i].toLowerCase();
      if (STRICT_AMOUNT_KEYS.indexOf(k) < 0) continue;
      var v = obj[keys[i]];
      if (typeof v === 'number' && isFinite(v) && v >= 0) return v;
    }
    return null;
  }

  /**
   * Số tiền THẬT đang đặt trên một ô cược, đọc từ React state.
   *
   * Chỉ đi tối đa 6 tầng fiber (phần tử ô cược và vài cha gần nhất) để không lạc sang
   * component của ô/bàn khác. Trả null khi không chắc chắn.
   */
  function reactAmountOf(spot) {
    try {
      var f = reactFiberOf(spot);
      for (var i = 0; f && i < 6; i++) {
        var props = f.memoizedProps;
        if (props && typeof props === 'object') {
          var direct = strictAmountIn(props);
          if (direct !== null) return direct;
          // Dạng bọc: { bet: { amount } }, { spot: { total } }, { state: { amount } }…
          var holders = [props.bet, props.spot, props.state, props.data, props.betSpot];
          for (var h = 0; h < holders.length; h++) {
            var n = strictAmountIn(holders[h]);
            if (n !== null) return n;
          }
        }
        f = f.return;
      }
    } catch (e) { /* fiber bị cắt: dùng DOM */ }
    return null;
  }

  function bestGrouping(nodes, from, to, minSize) {
    var best = null;
    for (var levels = from; levels <= to; levels++) {
      var map = new Map();
      for (var i = 0; i < nodes.length; i++) {
        var key = ancestorAt(nodes[i], levels);
        var arr = map.get(key);
        if (!arr) map.set(key, (arr = []));
        arr.push(nodes[i]);
      }
      var groups = [];
      map.forEach(function (g) { if (g.length >= minSize) groups.push(g); });
      if (!groups.length) continue;
      var score = groups.length * 100000;
      for (var j = 0; j < groups.length; j++) score += groups[j].length;
      if (!best || score > best.score) best = { score: score, groups: groups };
    }
    return best ? best.groups : [];
  }

  function gridOrder(items) {
    function uniq(arr) {
      return arr.slice().sort(function (a, b) { return a - b; })
        .filter(function (v, i, a) { return i === 0 || v - a[i - 1] > 6; });
    }
    var xLines = uniq(items.map(function (i) { return i.x; }));
    var yLines = uniq(items.map(function (i) { return i.y; }));
    function near(v, lines) {
      var bi = 0, bd = Infinity;
      for (var i = 0; i < lines.length; i++) {
        var d = Math.abs(lines[i] - v);
        if (d < bd) { bd = d; bi = i; }
      }
      return bi;
    }
    var pos = items.map(function (it, idx) {
      return { idx: idx, c: near(it.x, xLines), r: near(it.y, yLines) };
    });
    var geo = pos.slice().sort(function (a, b) { return (a.c - b.c) || (a.r - b.r); })
      .map(function (p) { return p.idx; });
    return { geo: geo, dom: pos.map(function (p) { return p.idx; }), cols: xLines.length, rows: yLines.length };
  }

  function orderedLetters(items) {
    var g = gridOrder(items);
    var useGeo = g.cols >= 2 && g.rows >= 2;
    var order = useGeo ? g.geo : g.dom;
    return {
      letters: order.map(function (i) { return items[i].side; }).join(''),
      order: useGeo ? 'geo' : 'dom', cols: g.cols, rows: g.rows
    };
  }

  function nameFromText(t) {
    var words = (t || '').split(' ');
    var acc = '';
    for (var i = 0; i < words.length && i < 5; i++) {
      acc = acc ? acc + ' ' + words[i] : words[i];
      if (/[A-Za-z][\w'-]*\d{1,3}$/.test(words[i])) break;
    }
    return /^[A-Za-z][A-Za-z0-9 .&'-]{0,30}\d{1,3}$/.test(acc) ? acc : '';
  }

  function labelFor(container) {
    var node = container;
    for (var up = 0; up < 9 && node; up++) {
      var attrs = node.attributes || [];
      for (var i = 0; i < attrs.length; i++) {
        var a = attrs[i];
        if (/^(data-|aria-|title)/i.test(a.name) && /\d/.test(a.value) && a.value.length <= 40) {
          return a.value.trim();
        }
      }
      var t = txt(node);
      var nm = nameFromText(t);
      if (nm) return nm;
      var short = /([A-Za-z]\d{1,3}(?![\d]))/.exec(t);
      if (short) return short[1];
      node = node.parentElement;
    }
    return '';
  }

  function boxOf(items) {
    var xs = items.map(function (i) { return i.x; });
    var ys = items.map(function (i) { return i.y; });
    return {
      w: Math.max.apply(null, xs) - Math.min.apply(null, xs),
      h: Math.max.apply(null, ys) - Math.min.apply(null, ys),
      x: Math.round(Math.min.apply(null, xs)), y: Math.round(Math.min.apply(null, ys))
    };
  }

  function dedupe(roads) {
    var seen = new Map();
    for (var i = 0; i < roads.length; i++) {
      var r = roads[i];
      var key = (r.label || '?') + '|' + r.letters;
      if (!seen.has(key)) seen.set(key, r);
    }
    var out = [];
    seen.forEach(function (v) { out.push(v); });
    return out;
  }

  /* ============================ các nguồn đọc cầu ============================ */

  function textRoads() {
    var leaves = [];
    document.querySelectorAll('*').forEach(function (el) {
      if (el.childElementCount !== 0) return;
      var t = String(el.textContent || '').trim().toUpperCase();
      if (t !== 'B' && t !== 'P' && t !== 'T') return;
      var r = el.getBoundingClientRect();
      if (r.width > 0 && r.height > 0) {
        leaves.push({ el: el, x: r.x + r.width / 2, y: r.y + r.height / 2, side: t });
      }
    });
    if (leaves.length < MIN_TEXT_GROUP) return { roads: [], scanned: leaves.length };
    var groups = bestGrouping(leaves.map(function (l) { return l.el; }), 1, 9, MIN_TEXT_GROUP);
    var byEl = new Map();
    leaves.forEach(function (l) { byEl.set(l.el, l); });
    var roads = groups.map(function (group) {
      var items = group.map(function (el) { return byEl.get(el); });
      var res = orderedLetters(items);
      return {
        letters: res.letters, label: labelFor(group[0]),
        source: 'text-' + res.order, box: boxOf(items)
      };
    }).filter(function (r) { return r.letters.length >= MIN_TEXT_GROUP && r.box.w > 40; });
    return { roads: dedupe(roads), scanned: leaves.length };
  }

  function svgRoads() {
    var shapes = [];
    document.querySelectorAll('svg circle, svg ellipse, svg rect, svg path, svg use').forEach(function (el) {
      var st = getComputedStyle(el);
      var side = sideOf(st.fill) || sideOf(st.stroke);
      if (!side) return;
      var r = el.getBoundingClientRect();
      if (r.width < 5 || r.height < 5 || r.width > 70 || r.height > 70) return;
      if (el.closest('button,[role=button]')) return;
      shapes.push({ el: el, x: r.x + r.width / 2, y: r.y + r.height / 2, side: side });
    });
    if (shapes.length < MIN_SVG_GROUP) return { roads: [], scanned: shapes.length };
    var groups = bestGrouping(shapes.map(function (s) { return s.el; }), 1, 9, MIN_SVG_GROUP);
    var byEl = new Map();
    shapes.forEach(function (s) { byEl.set(s.el, s); });
    var roads = groups.map(function (group) {
      var items = group.map(function (el) { return byEl.get(el); });
      var res = orderedLetters(items);
      var box = boxOf(items);
      var sides = new Set(res.letters.replace(/T/g, '').split(''));
      return {
        letters: res.letters, label: labelFor(group[0]), source: 'svg-' + res.order, box: box,
        ok: res.cols >= 3 && res.rows >= 2 && box.w > 60 && sides.size >= 1
          && box.h / Math.max(1, res.rows) < 60
      };
    }).filter(function (r) { return r.ok; });
    return { roads: dedupe(roads), scanned: shapes.length };
  }

  /* Big Road: letters = mỗi tay một ký tự, hoà là 'T' nối sau ký tự quyết định. */
  function historyLetters(history) {
    var letters = '';
    for (var i = 0; i < history.length; i++) {
      var item = history[i] || {};
      var side = item.c === 'R' ? 'B' : (item.c === 'B' ? 'P' : null);
      var ties = (item.ties === undefined || item.ties === null) ? 0 : item.ties;
      var posOk = Array.isArray(item.pos) && item.pos.length === 2 && item.pos.every(function (p) {
        return typeof p === 'number' && isFinite(p) && p >= 0 && Math.floor(p) === p;
      });
      if (!side || typeof ties !== 'number' || ties < 0 || ties > 50 || !posOk) {
        return { letters: '', readError: 'Dữ liệu Big Road không đúng định dạng; không suy đoán kết quả.' };
      }
      letters += side;
      for (var t = 0; t < ties; t++) letters += 'T';
      if (letters.length > 400) {
        return { letters: '', readError: 'Lịch sử vượt giới hạn 400 tay.' };
      }
    }
    var readError = '';
    if (history.length && (history[0].pos[0] !== 0 || history[0].pos[1] !== 0)) {
      readError = 'Big Road bị cắt đầu; không đủ lịch sử để chọn bàn.';
    } else if (history[0] && history[0].ties) {
      readError = 'Ô đầu có hòa: Big Road không cho biết hòa trước hay sau tay đầu.';
    }
    return { letters: letters, readError: readError };
  }

  /* Đi NGƯỢC từ fiber của canvas lên props.history/props.table (rẻ hơn duyệt cả cây). */
  function canvasRoads() {
    var canvases = Array.prototype.slice.call(
      document.querySelectorAll('[data-role="history-roads"] canvas'));
    var roads = [];
    for (var i = 0; i < canvases.length; i++) {
      var canvas = canvases[i];
      var rect = canvas.getBoundingClientRect();
      if (!rect.width || !rect.height) continue;
      var key = Object.keys(canvas).filter(function (n) {
        return n.indexOf('__reactFiber$') === 0;
      })[0];
      var fiber = key ? canvas[key] : null;
      var history = null, table = null, gameType = '';
      for (var step = 0; fiber && step < 200; step++, fiber = fiber.return) {
        var props = fiber.memoizedProps || {};
        if (!history && props.type === 'BaccaratHistoryRoadTypeBig' && Array.isArray(props.history)) {
          history = props.history;
        }
        if (!gameType && typeof props.gameType === 'string') gameType = props.gameType;
        if (!table && props.table && typeof props.table.id === 'string') table = props.table;
        if (history && table) break;
      }
      if (!table || !/^[A-Za-z0-9_-]{1,80}$/.test(table.id)) continue;
      if (['baccarat', 'luckybaccarat'].indexOf(gameType) < 0) continue;
      var read = history
        ? historyLetters(history)
        : { letters: '', readError: 'Chưa đọc được lịch sử Canvas của bàn.' };
      var details = table.gameDetails || {};
      if ((details.gameConfig || {}).lightning || SPECIAL_IDS.indexOf(table.id) >= 0) {
        read.readError = 'Bàn có luật trả thưởng đặc biệt; chỉ xem cầu, không giả lập theo bàn chuẩn.';
      }
      roads.push({
        letters: read.letters,
        label: typeof table.title === 'string' ? table.title : table.id,
        table_id: table.id, game_type: gameType, read_error: read.readError,
        source: 'evo-canvas-big',
        box: {
          x: Math.round(rect.x), y: Math.round(rect.y),
          w: Math.round(rect.width), h: Math.round(rect.height)
        }
      });
    }
    return { roads: roads, scanned: canvases.length };
  }

  function beadRoads() {
    var roads = [];
    var names = { Banker: 'B', Player: 'P', Tie: 'T' };
    document.querySelectorAll('[data-role="Bead-road"]').forEach(function (bead) {
      var items = bead.querySelectorAll('[data-role="roadItem"][name]');
      if (!items.length) return;
      var letters = '', readError = '', skipped = 0;
      for (var i = 0; i < items.length; i++) {
        // Ô cầu có thể ghi "Banker Player" (ván có cả hai) — lấy ký tự ĐẦU làm cửa quyết định.
        var raw = (items[i].getAttribute('name') || '').trim().split(/\s+/)[0];
        var side = names[raw];
        if (!side) {
          // Không xoá cả cầu vì một ô lạ: bỏ qua ô đó và ghi lại số ô đã bỏ. Xoá sạch
          // khiến app không đọc được cầu nào dù bàn hoàn toàn bình thường.
          skipped += 1;
          continue;
        }
        letters += side;
        if (letters.length > 400) {
          letters = letters.slice(-400);
          readError = 'Cầu dài quá 400 tay, chỉ giữ 400 tay gần nhất.';
        }
      }
      if (skipped > 0 && !readError) {
        readError = 'Bỏ qua ' + skipped + ' ô cầu có ký hiệu lạ.';
      }
      if (!letters.length) return;
      var r = bead.getBoundingClientRect();
      roads.push({
        letters: letters, label: '', read_error: readError, source: 'evo-bead',
        box: {
          x: Math.round(r.x), y: Math.round(r.y),
          w: Math.round(r.width), h: Math.round(r.height)
        }
      });
    });
    return { roads: roads, scanned: roads.length };
  }

  /**
   * Đọc cầu NHẸ cho vòng lặp: chỉ lấy chuỗi ký tự của bảng cầu, không quét sảnh,
   * không đọc khay chip. Trả về cầu DÀI NHẤT tìm được (bàn thật có thể có nhiều bảng).
   *
   * Đây là nguồn kết quả của app: mỗi ván mới = một ô `roadItem` mới ở cuối cầu, nên
   * native so độ dài để biết tay mình vừa thắng hay thua. Không đụng API mạng của trang.
   */
  function roadOnly() {
    var best = '';
    var source = '';
    var tid = tableIdFromUrl();

    var bead = beadRoads();
    for (var i = 0; i < bead.roads.length; i++) {
      if (bead.roads[i].letters.length > best.length) {
        best = bead.roads[i].letters;
        source = 'bead';
      }
    }

    // Bàn mới render bằng canvas: đọc thêm nếu cầu DOM chưa có.
    if (!best.length) {
      var evo = canvasRoads();
      for (var j = 0; j < evo.roads.length; j++) {
        if (evo.roads[j].letters.length > best.length) {
          best = evo.roads[j].letters;
          source = 'canvas';
        }
      }
    }

    return {
      ok: true,
      in_table: !!tid,
      table_id: tid,
      letters: best,
      hands: best.length,
      source: source,
      road_items: document.querySelectorAll('[data-role="roadItem"][name]').length
    };
  }

  /* ================================= quét trang ================================= */

  function tableIdFromUrl() {
    var m = /[#?&]table_id=([^&]+)/.exec(location.href);
    return m ? decodeURIComponent(m[1]) : '';
  }

  function walletText() {
    // Site mới (Evolution r2) đặt số dư trong [data-role="balance-label-value"]; bản cũ dùng
    // header-balance/footer-balance. Đọc lần lượt để chạy được ở cả hai.
    var el = document.querySelector('[data-role="balance-label-value"]')
      || document.querySelector('[data-role="header-balance"]')
      || document.querySelector('[data-role="footer-balance"]');
    return el ? txt(el) : '';
  }

  /**
   * Hạn mức cược của từng cửa chính, đọc từ bảng "BET LIMITS" của bàn.
   * Bàn thật (Evolution r2) ghi dạng "BANKER⁦VN2 20⁩ – 100,000⁩0.95:1" → lấy số ĐẦU = min,
   * số SAU dấu gạch = max. Trả {} khi bàn không hiện bảng này.
   */
  function betLimits() {
    var out = {};
    var rows = [
      ['B', 'bet-limits_banker'],
      ['P', 'bet-limits_player'],
      ['T', 'bet-limits_tie']
    ];
    for (var i = 0; i < rows.length; i++) {
      var side = rows[i][0];
      var el = document.querySelector('[data-role="' + rows[i][1] + '"]');
      if (!el) continue;
      var text = String(txt(el))
        .replace(/[\u2066\u2067\u2068\u2069\u200e\u200f]/g, '')
        .replace(/(?:VN2|VND|USDT|USD)/gi, ' ')
        .replace(/:\s*\d+(?:\.\d+)?/g, ' ');   // bỏ tỉ lệ trả thưởng "0.95:1", "8:1"
      var nums = text.match(/\d{1,3}(?:[.,]\d{3})*|\d+/g);
      if (!nums || !nums.length) continue;
      var parse = function (s) { return parseInt(String(s).replace(/[^\d]/g, ''), 10); };
      out[side] = { min: parse(nums[0]), max: nums.length > 1 ? parse(nums[1]) : null };
    }
    return out;
  }

  function tableTileOf(tile) {
    var key = Object.keys(tile).filter(function (n) {
      return n.indexOf('__reactFiber$') === 0;
    })[0];
    var f = key ? tile[key] : null;
    for (var i = 0; f && i < 60; i++) {
      if (f.memoizedProps && f.memoizedProps.table && f.memoizedProps.table.gameDetails) {
        return f.memoizedProps.table;
      }
      f = f.return;
    }
    return null;
  }

  function lobbyTiles() {
    var out = [];
    document.querySelectorAll('[data-role="table-tile"]').forEach(function (tile) {
      var table = tableTileOf(tile);
      if (!table || typeof table.id !== 'string' || !table.id) return;
      var details = table.gameDetails || {};
      out.push({
        id: table.id,
        title: typeof table.title === 'string' ? table.title : table.id,
        game_type: details.gameType || '',
        lightning: !!((details.gameConfig || {}).lightning),
        special: SPECIAL_IDS.indexOf(table.id) >= 0
      });
    });
    return out;
  }

  function scanPage() {
    var tiles = lobbyTiles();
    var inLobby = tiles.length > 0;
    var tid = tableIdFromUrl();
    var out = null, kind = '';

    if (!inLobby && tid) {
      var evo = canvasRoads();
      if (evo.roads.length) { out = evo; kind = 'evo-canvas'; }
      else {
        var bead = beadRoads();
        if (bead.roads.length) { out = bead; kind = 'evo-bead'; }
        else { out = evo; kind = 'evo-canvas'; }
      }
    } else if (!inLobby) {
      var bodyLen = document.body ? String(document.body.innerText || '').length : 0;
      if (bodyLen > 60) {
        var text = textRoads();
        out = text;
        kind = 'text';
        if (!text.roads.length) {
          var svg = svgRoads();
          out = { roads: svg.roads, scanned: Math.max(text.scanned, svg.scanned) };
          kind = 'svg';
        }
      } else {
        out = { roads: [], scanned: 0 };
        kind = 'empty';
      }
    } else {
      out = { roads: [], scanned: 0 };
      kind = 'lobby';
    }

    var spots = null;
    try { spots = readChips(); } catch (e) { spots = null; }

    return {
      page: {
        url: location.origin + location.pathname,
        table_id: tid,
        title: (document.title || '').slice(0, 80),
        wallet: walletText(),
        limits: betLimits()
      },
      in_table: !inLobby && !!tid,
      in_lobby: inLobby,
      tables: out.roads.map(function (r) {
        return {
          label: r.label || (out.roads.length === 1 && tid ? tid : 'ban ' + r.box.w),
          letters: r.letters, source: r.source, table_id: r.table_id || '',
          read_error: r.read_error || ''
        };
      }),
      lobby: { tiles: tiles },
      chips: spots,
      diag: { kind: kind, scanned: out.scanned, roads: out.roads.length }
    };
  }

  /* ============================== khay chip / ô cược ============================== */

  function trayOf() {
    var named = document.querySelector('[data-role="chip-stack"]');
    if (named) return named;
    var chips = Array.prototype.slice.call(document.querySelectorAll('[data-role="chip"][data-value]'))
      .filter(function (el) {
        return visible(el) && !el.closest('[data-role^="bet-spot-"]')
          && (parseInt(el.getAttribute('data-value'), 10) || 0) > 0;
      });
    if (!chips.length) return null;
    var node = chips[0];
    for (var i = 0; i < 8 && node && node !== document.body; i++) {
      var count = Array.prototype.slice.call(node.querySelectorAll('[data-role="chip"][data-value]'))
        .filter(function (el) {
          return visible(el) && !el.closest('[data-role^="bet-spot-"]');
        }).length;
      if (count >= chips.length) return node;
      node = node.parentElement;
    }
    return chips[0].parentElement;
  }

  /* ======================= TỰ CHỌN MỆNH GIÁ (auto) =======================
   *
   * Người dùng KHÔNG tự chọn chip. Tool đọc hết mệnh giá trong khay rồi ghép tổ
   * hợp ít chi phí nhất, vì:
   *   - native chỉ thấy mệnh giá lúc khay đang thu gọn → hay chọn chip nhỏ, phải
   *     bấm hàng trăm cú, không kịp cửa sổ cược của bàn EV;
   *   - mỗi cú bấm tốn [delay] ms, mỗi lần ĐỔI mệnh giá tốn thêm ~250 ms (mở khay,
   *     chọn, xác nhận) → tối ưu phải tính cả hai khoản, không chỉ đếm số chip.
   */

  function gcdOf(a, b) {
    while (b) { var t = a % b; a = b; b = t; }
    return a;
  }

  /** Đọc mọi mệnh giá đang thấy trong khay/chip đang chọn. */
  function readTrayDenoms() {
    var out = [];
    var seen = {};
    var scopes = [
      document.querySelector('[data-role="chip-stack"]'),
      document.querySelector('[data-role="chip-stack-toggle"]'),
      document.querySelector('[data-role="selected-chip"]')
    ];
    for (var s = 0; s < scopes.length; s++) {
      var scope = scopes[s];
      if (!scope) continue;
      var els = scope.querySelectorAll('[data-role="chip"][data-value]');
      for (var i = 0; i < els.length; i++) {
        var el = els[i];
        if (!visible(el)) continue;
        var v = parseInt(el.getAttribute('data-value'), 10);
        if (isFinite(v) && v > 0 && !seen[v]) { seen[v] = 1; out.push(v); }
      }
    }
    out.sort(function (a, b) { return a - b; });
    return out;
  }

  /**
   * Mở khay để thấy ĐẦY ĐỦ mệnh giá.
   * Chỉ bấm nút toggle khi khay đang hiện ít mệnh giá; nếu đã thấy nhiều thì giữ
   * nguyên (bấm toggle lúc khay đang mở sẽ ĐÓNG nó lại).
   */
  async function revealDenominations(side, timeoutMs) {
    var denoms = readTrayDenoms();
    if (denoms.length >= 6) return denoms;
    var toggle = document.querySelector('[data-role="chip-stack-toggle"]');
    if (!toggle || !visible(toggle)) return denoms;
    var p = pointOf(toggle);
    if (!p) return denoms;

    var before = spotAmount(side);
    synthTap({ el: toggle, x: p.x, y: p.y });

    var until = Date.now() + (Number(timeoutMs) || 900);
    var grewAt = Date.now();
    while (Date.now() < until) {
      await sleep(18);
      var now = readTrayDenoms();
      if (now.length > denoms.length) { denoms = now; grewAt = Date.now(); }
      else if (denoms.length && Date.now() - grewAt > 200) break;
    }

    // Mở khay mà tiền trên ô đổi nghĩa là đã lỡ đặt gì đó — báo cho nơi gọi.
    var after = spotAmount(side);
    if (before !== null && after !== null && Math.abs(after - before) > 0.5) {
      denoms.spotChanged = true;
    }
    return denoms;
  }

  /** Tổ hợp CHÍNH XÁC với ít chip nhất (DP không giới hạn số đồng). */
  function minChipPlan(amount, coins) {
    var g = coins.reduce(function (a, b) { return gcdOf(a, b); });
    if (!g || amount % g !== 0) return null;
    var target = amount / g;
    if (target > 20000) return null;
    var units = coins.map(function (c) { return c / g; });
    var best = new Array(target + 1);
    var prev = new Array(target + 1);
    best[0] = 0;
    for (var s = 1; s <= target; s++) {
      best[s] = -1;
      for (var i = 0; i < units.length; i++) {
        var u = units[i];
        if (u > s || best[s - u] < 0) continue;
        if (best[s] < 0 || best[s - u] + 1 < best[s]) {
          best[s] = best[s - u] + 1;
          prev[s] = u;
        }
      }
    }
    if (best[target] < 0) return null;
    var out = [];
    var cur = target;
    var guard = 0;
    while (cur > 0 && guard++ < 1000) {
      var u2 = prev[cur];
      if (!u2) return null;
      out.push(u2 * g);
      cur -= u2;
    }
    return out;
  }

  /**
   * Chọn tổ hợp chip rẻ nhất về THỜI GIAN cho [amount].
   * Trả { plan, clicks, cost } hoặc null nếu không ghép chính xác được.
   */
  function chooseChipPlan(amount, denoms, delayMs) {
    var want = Math.round(Number(amount) || 0);
    if (want <= 0) return null;
    var coins = (denoms || []).map(Math.round).filter(function (v) {
      return v > 0 && v <= want;
    });
    coins = coins.filter(function (v, i, a) { return a.indexOf(v) === i; })
      .sort(function (a, b) { return b - a; });
    if (!coins.length) return null;

    var perClick = isFinite(delayMs) && delayMs > 0 ? delayMs : 150;
    var switchCost = 250;

    var plans = [];
    // 1) Một mệnh giá duy nhất chia hết (0 lần đổi chip).
    for (var i = 0; i < coins.length; i++) {
      if (want % coins[i] !== 0) continue;
      var n = want / coins[i];
      if (n > 400) continue;
      var arr = [];
      for (var k = 0; k < n; k++) arr.push(coins[i]);
      plans.push(arr);
    }
    // 2) Tổ hợp tối thiểu số chip (DP).
    var dp = minChipPlan(want, coins);
    if (dp && dp.length) plans.push(dp);
    if (!plans.length) return null;

    var best = null;
    var bestCost = Infinity;
    for (var p = 0; p < plans.length; p++) {
      var plan = plans[p];
      var distinct = {};
      for (var q = 0; q < plan.length; q++) distinct[plan[q]] = 1;
      var switches = Object.keys(distinct).length;
      var cost = plan.length * perClick + Math.max(0, switches - 1) * switchCost;
      if (cost < bestCost) { bestCost = cost; best = plan; }
    }
    return {
      plan: best.slice().sort(function (a, b) { return b - a; }),
      clicks: best.length,
      cost: Math.round(bestCost)
    };
  }

  /**
   * Ô cược THẬT của một cửa.
   *
   * Trang có thể giữ CẢ layout desktop lẫn mobile trong DOM (cùng data-role), và ô
   * hiện ra vẫn có thể bị lớp phủ che. Bản cũ lấy phần tử ĐẦU TIÊN thấy được nên có
   * lúc bấm vào ô của layout ẩn → cú bấm rơi vào hư không.
   *
   * Giờ chọn theo: hiện + diện tích lớn nhất, rồi xác nhận bằng elementFromPoint
   * rằng tâm ô thực sự nhận cú bấm.
   */
  function spotOf(side) {
    var role = { B: 'Banker', P: 'Player', T: 'Tie' }[side];
    if (!role) return null;
    var spots = document.querySelectorAll('[data-role="bet-spot-' + role + '"]');
    var pool = [];
    for (var i = 0; i < spots.length; i++) {
      var el = spots[i];
      if (!shown(el)) continue;
      var r = el.getBoundingClientRect();
      if (r.width <= 2 || r.height <= 2) continue;
      pool.push({ el: el, r: r, area: r.width * r.height });
    }
    if (!pool.length) return null;
    pool.sort(function (a, b) { return b.area - a.area; });
    for (var j = 0; j < pool.length && j < 4; j++) {
      var c = pool[j];
      var hit = null;
      try {
        hit = document.elementFromPoint(c.r.x + c.r.width / 2, c.r.y + c.r.height / 2);
      } catch (e) { hit = null; }
      if (!hit || c.el.contains(hit) || hit.contains(c.el)) return c.el;
    }
    return pool[0].el;
  }

  function spotAmount(side) {
    var spot = spotOf(side);
    if (!spot) return null;
    var total = 0;
    var els = spot.querySelectorAll('[data-role="chip"]');
    for (var i = 0; i < els.length; i++) {
      if (!visible(els[i])) continue;
      var v = parseInt(els[i].getAttribute('data-value'), 10);
      if (isFinite(v) && v > 0) total += v;
    }
    return total;
  }

  function selectedChip() {
    var tray = document.querySelector('[data-role="chip-stack"]');
    var marked = tray && visible(tray) ? Array.prototype.slice.call(
      tray.querySelectorAll('[data-role="chip"][data-selected="true"]')) : [];
    marked = marked
      .map(function (el) { return parseInt(el.getAttribute('data-value'), 10); })
      .filter(function (v) { return isFinite(v) && v > 0; });
    if (marked.length === 1) return marked[0];
    var wrap = document.querySelector('[data-role="selected-chip"]');
    if (!visible(wrap)) return null;
    var inner = wrap.querySelector('[data-role="chip"][data-value]');
    if (inner) {
      var v = parseInt(inner.getAttribute('data-value'), 10);
      if (isFinite(v)) return v;
    }
    return digits(txt(wrap));
  }

  function bettingAvailability(side) {
    var spot = spotOf(side);
    if (!spot) {
      return { ready: false, reason: 'no_bet_spot', note: 'Chưa thấy ô cược đang hoạt động.' };
    }

    var notices = document.querySelectorAll(
      '[data-role="popup-container"], [data-role="popup"], [role="dialog"]');
    for (var i = 0; i < notices.length; i++) {
      if (!visible(notices[i])) continue;
      var notice = txt(notices[i]).toLowerCase();
      if (/phiên hết hạn|phiên chơi đã hết|session expired|please log in/.test(notice)) {
        return {
          ready: false, reason: 'session_expired',
          note: 'Phiên chơi đã hết hạn; cần đăng nhập lại trước khi đặt.'
        };
      }
      if (/bets? (are )?closed|betting closed|no more bets|cửa cược đã đóng|hết thời gian cược/.test(notice)) {
        return {
          ready: false, reason: 'betting_closed',
          note: 'Cửa cược đang đóng; chưa bấm vào ô cược.'
        };
      }
    }

    var cls = String(spot.className || '');
    if (spot.hasAttribute('disabled') || spot.getAttribute('aria-disabled') === 'true' ||
        spot.getAttribute('data-disabled') === 'true' ||
        /(^|[\s_-])(disabled|inactive|closed|locked)([\s_-]|$)/i.test(cls)) {
      return {
        ready: false, reason: 'betting_closed',
        note: 'Ô cược đang bị khóa; chưa bấm vào ô cược.'
      };
    }

    var chipControls = [
      document.querySelector('[data-role="chip-stack"]'),
      document.querySelector('[data-role="chip-stack-toggle"]'),
      document.querySelector('[data-role="selected-chip"]')
    ];
    if (!chipControls.some(visible)) {
      return {
        ready: false, reason: 'betting_closed',
        note: 'Chưa thấy khay/chip được chọn; chưa bấm vào ô cược.'
      };
    }

    var unit = selectedChip();
    if (!unit || unit <= 0) {
      return {
        ready: false, reason: 'chip_not_selected',
        note: 'Chưa xác nhận được mệnh giá chip đang chọn; chưa bấm vào ô cược.'
      };
    }
    return { ready: true, reason: '', note: '' };
  }

  function readChips() {
    var tray = trayOf();
    var hasVisibleSpot = ['B', 'P', 'T'].some(function (side) { return !!spotOf(side); });
    var hasTable = !!(document.querySelector('[data-role="Bead-road"]') || hasVisibleSpot);
    var spots = {};
    ['B', 'P', 'T'].forEach(function (side) {
      var spot = spotOf(side);
      if (!spot) { spots[side] = null; return; }
      var chips = [];
      var els = spot.querySelectorAll('[data-role="chip"]');
      for (var i = 0; i < els.length; i++) {
        if (!visible(els[i])) continue;
        var v = parseInt(els[i].getAttribute('data-value'), 10);
        if (isFinite(v) && v > 0) chips.push(v);
      }
      spots[side] = {
        amount: chips.reduce(function (s, v) { return s + v; }, 0),
        chips: chips
      };
    });
    var denominations = [];
    if (tray) {
      var seen = {};
      var cells = tray.querySelectorAll('[data-role="chip"]');
      for (var i = 0; i < cells.length; i++) {
        if (!visible(cells[i])) continue;
        var v = parseInt(cells[i].getAttribute('data-value'), 10);
        if (isFinite(v) && v > 0 && !seen[v]) { seen[v] = 1; denominations.push(v); }
      }
      denominations.sort(function (a, b) { return a - b; });
    }
    var total = 0;
    ['B', 'P', 'T'].forEach(function (s) { total += (spots[s] && spots[s].amount) || 0; });
    var labelEl = document.querySelector('[data-role="total-bet-label"]');
    return {
      has_table: hasTable,
      total: total,
      selected_chip: selectedChip(),
      spots: spots,
      denominations: denominations,
      limits: betLimits(),
      total_label: labelEl ? digits(txt(labelEl)) : null,
      betting: {
        B: bettingAvailability('B'),
        P: bettingAvailability('P'),
        T: bettingAvailability('T')
      }
    };
  }

  /* Điểm đo trong khung -> toạ độ khung GỐC. Chỉ tính được khi chuỗi iframe cùng
   * origin; khác origin thì trả ok=false và native dùng sự kiện tổng hợp thay thế. */
  function toTop(x, y) {
    var px = x, py = y, w = window, depth = 0;
    while (w !== w.top) {
      var fe = null;
      try { fe = w.frameElement; } catch (e) { return { x: 0, y: 0, ok: false, depth: depth }; }
      if (!fe) return { x: 0, y: 0, ok: false, depth: depth };
      var r = fe.getBoundingClientRect();
      var st = w.parent.getComputedStyle(fe);
      var num = function (v) { var n = parseFloat(v); return isFinite(n) ? n : 0; };
      px += r.x + num(st.borderLeftWidth) + num(st.paddingLeft);
      py += r.y + num(st.borderTopWidth) + num(st.paddingTop);
      w = w.parent;
      depth += 1;
      if (depth > 8) return { x: 0, y: 0, ok: false, depth: depth };
    }
    return { x: px, y: py, ok: true, depth: depth };
  }

  function pointOf(el, opts) {
    if (!el) return null;
    var r = el.getBoundingClientRect();
    if (r.width <= 2 || r.height <= 2) return null;
    // Cho phép lệch tâm (ô bàn ở sảnh có nút yêu thích ở góc trên phải).
    var fx = (opts && opts.fx !== undefined) ? opts.fx : 0.5;
    var fy = (opts && opts.fy !== undefined) ? opts.fy : 0.5;
    var x = r.x + r.width * fx, y = r.y + r.height * fy;
    return { x: x, y: y, abs: toTop(x, y) };
  }

  function targetsFor(side) {
    var role = { B: 'Banker', P: 'Player', T: 'Tie' }[side];
    var spot = spotOf(side);
    if (!role || !spot) return null;
    var tray = trayOf();
    var chips = {};
    if (tray) {
      var els = tray.querySelectorAll('[data-role="chip"][data-value]');
      for (var i = 0; i < els.length; i++) {
        var el = els[i];
        if (!visible(el)) continue;
        var v = parseInt(el.getAttribute('data-value'), 10);
        if (!isFinite(v) || v <= 0) continue;
        var r = el.getBoundingClientRect();
        var area = r.width * r.height;
        if (chips[v] && chips[v].area >= area) continue;
        var p = pointOf(el);
        if (!p) continue;
        // Giữ THAM CHIẾU element: trên mobile các chip xếp chồng nhau nên nếu chỉ
        // dùng toạ độ rồi elementFromPoint sẽ bấm nhầm sang chip nằm trên.
        chips[v] = { el: el, x: p.x, y: p.y, abs: p.abs, area: area };
      }
    }
    var sp = pointOf(spot);
    if (!sp) return null;
    return { spot: { el: spot, x: sp.x, y: sp.y, abs: sp.abs }, chips: chips };
  }

  function fire(el, type, x, y) {
    var init = {
      bubbles: true, cancelable: true, composed: true, view: window,
      clientX: x, clientY: y, screenX: x, screenY: y,
      button: 0, buttons: 0, pointerId: 1, pointerType: 'mouse', isPrimary: true
    };
    if (type.indexOf('pointer') === 0) {
      init.buttons = type === 'pointerdown' ? 1 : 0;
      try { el.dispatchEvent(new PointerEvent(type, init)); return; } catch (e) { /* fallback */ }
    }
    if (typeof MouseEvent === 'function') {
      try { el.dispatchEvent(new MouseEvent(type, init)); return; } catch (e) { /* fallback */ }
    }
    var ev = document.createEvent('MouseEvents');
    ev.initMouseEvent(type, true, true, window, 0, x, y, x, y, false, false, false, false, 0, null);
    el.dispatchEvent(ev);
  }

  /* Bấm vào ĐÚNG element được chỉ định (không tra lại theo toạ độ).
   * Trên desktop mỗi chip là một ô riêng nên tra toạ độ vẫn đúng; trên điện thoại các chip
   * trong khay xếp chồng lên nhau nên elementFromPoint sẽ trả về chip NẰM TRÊN, khiến app
   * bấm sai mệnh giá. Truyền thẳng element lấy từ DOM là cách duy nhất chắc chắn đúng. */
  function synthTap(target) {
    if (!target) return false;
    var el = null, x = 0, y = 0;
    if (target.el) {
      el = target.el;
      x = target.x || 0;
      y = target.y || 0;
    } else {
      // Tương thích chỗ gọi cũ chỉ truyền toạ độ.
      x = target.x || 0;
      y = target.y || 0;
      el = document.elementFromPoint(x, y);
    }
    if (!el) return false;
    // Element có thể đã bị React thay khỏi DOM giữa lúc đo và lúc bấm.
    if (!document.contains(el)) return false;
    fire(el, 'pointerover', x, y);
    fire(el, 'pointerenter', x, y);
    fire(el, 'mouseover', x, y);
    fire(el, 'pointerdown', x, y);
    fire(el, 'mousedown', x, y);
    fire(el, 'pointerup', x, y);
    fire(el, 'mouseup', x, y);
    fire(el, 'click', x, y);
    return true;
  }

  /* ==================== đọc ô cược / khay chip TỐC ĐỘ CAO ====================
   *
   * Bản cũ chờ 110 ms mỗi nhịp đọc và đòi ô cược ĐỨNG YÊN 320 ms mới chấp nhận số
   * mới, nên mỗi cụm bấm tốn tối thiểu ~430 ms; cộng lần bấm đo mệnh giá (tới 2,6 s)
   * là quá chậm cho bàn EV có cửa cược ngắn (Speed / VIP / mốc cao).
   *
   * Ở đây:
   *   - đọc bằng requestAnimationFrame (~16 ms/nhịp) thay vì setTimeout 110 ms;
   *   - thoát NGAY khi số tiền chạm mức cần đặt, không chờ đứng yên;
   *   - bấm theo LÔ trong cùng một task rồi nhả event loop đúng `delay` ms;
   *   - kiểm tra ô cược bằng phép rẻ (quickReady) thay vì quét popup mỗi cú bấm.
   */

  /* Hiển thị kiểu RẺ: chỉ dựa vào box đã layout, không gọi getComputedStyle.
   *
   * KHÔNG dùng `offsetParent === null` để kết luận "ẩn": khay chip của Evolution là
   * overlay `position: fixed`, và với phần tử fixed thì offsetParent luôn null dù nó
   * đang hiện — dùng offsetParent sẽ đọc khay thành rỗng và bỏ qua toàn bộ chip.
   * getClientRects() trả rỗng chỉ khi display:none / chưa có box, đúng ý cần.
   */
  function shown(el) {
    if (!el) return false;
    return el.getClientRects().length > 0;
  }

  function amountOfSpot(spot) {
    if (!spot || !document.contains(spot)) return null;

    // Cộng chip đang vẽ trong DOM.
    var dom = 0;
    var els = spot.querySelectorAll('[data-role="chip"]');
    for (var i = 0; i < els.length; i++) {
      var el = els[i];
      // Dùng visible() ĐẦY ĐỦ ở đây: chip đang mờ dần (opacity 0) hoặc sắp bị gỡ vẫn
      // còn box, cộng nhầm nó là cộng tiền hai lần. Đây là chỗ quyết định đặt thêm
      // hay dừng nên phải chính xác, không dùng phép kiểm tra rẻ.
      if (!visible(el)) continue;
      var v = parseInt(el.getAttribute('data-value'), 10);
      if (isFinite(v) && v > 0) dom += v;
    }

    /* React state chỉ được TIN khi nó không lệch quá xa DOM.
     *
     * Đặt cược bằng tiền thật nên tuyệt đối không lấy một con số "nghe hợp lý" rồi
     * kết luận đã đủ. Nếu fiber trả về số lệch hơn gấp đôi (hoặc DOM đang 0 mà React
     * báo có tiền — dấu hiệu fiber cũ của ván trước), bỏ qua React và dùng DOM. */
    var react = reactAmountOf(spot);
    if (react !== null) {
      if (dom === 0) {
        if (react === 0) return 0;
        return dom;                       // React nói có tiền nhưng DOM trống: fiber cũ
      }
      if (react >= dom * 0.5 && react <= dom * 2) return react;
    }
    return dom;
  }

  function frame(fn) {
    if (typeof requestAnimationFrame === 'function') { requestAnimationFrame(fn); return; }
    setTimeout(fn, 16);
  }

  /**
   * Chờ ô cược nhích lên rồi trả TỔNG mức tăng so với [start].
   *
   * opts.reach   : thoát ngay khi đạt mức này (không chờ đứng yên) — dùng khi đã biết
   *                trước số tiền cần đặt, tiết kiệm vài trăm ms mỗi cụm.
   * opts.quietMs : thời gian đứng yên tối thiểu khi không có mức đích rõ ràng.
   */
  function quickDelta(side, start, opts) {
    opts = opts || {};
    var quietMs = opts.quietMs === undefined ? 80 : opts.quietMs;
    var timeoutMs = opts.timeoutMs || 900;
    var until = Date.now() + timeoutMs;
    return new Promise(function (resolve) {
      var spot = spotOf(side);
      if (!spot) { resolve(0); return; }
      var last = amountOfSpot(spot);
      if (last === null) { resolve(0); return; }
      var lastChange = Date.now();
      var sawChange = false;
      function pollNow() {
        var now = amountOfSpot(spot);
        if (now === null) { resolve(0); return; }
        var gained = now - start;
        if (now !== last) { last = now; lastChange = Date.now(); sawChange = true; }
        if (opts.reach !== undefined && gained >= opts.reach - 0.5) { resolve(gained); return; }
        if (sawChange && gained > 0.5 && Date.now() - lastChange >= quietMs) { resolve(gained); return; }
        if (Date.now() >= until) { resolve(Math.max(0, gained)); return; }
        frame(pollNow);
      }
      frame(pollNow);
    });
  }

  /* Kiểm tra RẺ cho từng cú bấm: chỉ nhìn ô cược, không quét popup/khay chip. */
  function quickReady(spot) {
    if (!spot || !document.contains(spot)) return false;
    if (spot.hasAttribute('disabled') || spot.getAttribute('aria-disabled') === 'true' ||
        spot.getAttribute('data-disabled') === 'true') return false;
    if (/(^|[\s_-])(disabled|inactive|closed|locked)([\s_-]|$)/i.test(String(spot.className || ''))) return false;
    return visible(spot);
  }

  /**
   * Bấm [count] lần vào ô cược, theo lô.
   *
   * Gửi vài cú trong CÙNG một task rồi nhả event loop đúng [delay] ms: React gộp
   * render một lần nên nhanh hơn hẳn kiểu await từng cú 40 ms, mà vẫn không dồn cả
   * chục cú vào một khung hình (site dễ bỏ qua khi đang chạy animation chip).
   * Trả về số cú đã bấm THẬT (dừng sớm nếu ô cược bị khóa/đổi).
   */
  function tapSpotFast(spot, count, delay, batchSize, steps) {
    var taps = 0;
    return new Promise(function (resolve) {
      var left = count;
      var size = Math.max(1, Math.min(12, batchSize || 5));
      function round() {
        if (left <= 0) { resolve(taps); return; }
        if (!quickReady(spot)) { resolve(taps); return; }
        var r = spot.getBoundingClientRect();
        if (r.width <= 2 || r.height <= 2) { resolve(taps); return; }
        var x = r.x + r.width / 2;
        var y = r.y + r.height / 2;
        var abs = toTop(x, y);
        var n = Math.min(size, left);
        for (var i = 0; i < n; i++) {
          taps += 1;
          steps.push({ kind: 'spot', n: taps, x: x, y: y, abs: abs });
          synthTap({ el: spot, x: x, y: y });
        }
        left -= n;
        if (left <= 0) { resolve(taps); return; }
        setTimeout(round, delay);
      }
      round();
    });
  }

  /** Chọn mệnh giá trong khay — bản nhanh: nhịp 20 ms, thoát ngay khi thấy đổi. */
  async function selectTrayChip(side, value, amountBefore) {
    if (selectedChip() === value) return { ok: true };

    var target = targetsFor(side);
    var chip = target && target.chips[value];
    if (!chip) {
      var toggle = document.querySelector('[data-role="chip-stack-toggle"]');
      var togglePoint = visible(toggle) ? pointOf(toggle) : null;
      if (!togglePoint || !synthTap({ el: toggle, x: togglePoint.x, y: togglePoint.y })) {
        return { ok: false, note: 'Không thấy chip ' + value + ' để chọn trực tiếp.' };
      }
      var revealUntil = Date.now() + 700;
      while (Date.now() < revealUntil) {
        target = targetsFor(side);
        chip = target && target.chips[value];
        if (chip) break;
        await sleep(20);
      }
      var amountAfterReveal = spotAmount(side);
      if (amountAfterReveal === null || Math.abs(amountAfterReveal - amountBefore) > 0.5) {
        return { ok: false, note: 'Tổng cược đổi trong lúc mở khay; dừng để kiểm tra.' };
      }
    }
    if (!chip || !synthTap({ el: chip.el, x: chip.x, y: chip.y })) {
      return { ok: false, note: 'Không bấm/chọn được chip ' + value + ' trong khay.' };
    }

    // Chip đổi trạng thái ngay trong DOM; chỉ cần vài nhịp là biết, không chờ 1,2 s.
    var until = Date.now() + 900;
    while (Date.now() < until) {
      if (selectedChip() === value) return { ok: true };
      await sleep(16);
    }
    var amountNow = spotAmount(side);
    if (amountNow === null || Math.abs(amountNow - amountBefore) > 0.5) {
      return { ok: false, note: 'Số tiền trên ô đổi khi chọn chip; dừng để kiểm tra.' };
    }
    return { ok: false, note: 'Chưa xác nhận được chip ' + value + ' sau khi chọn.' };
  }

  /**
   * Đặt cược bằng cách bấm THẲNG vào ô cược, N lần, bằng mức chip đang chọn trên trang.
   *
   * Vì sao không bấm khay chip: trên bản MOBILE, bấm vào chip trong khay chỉ mở bảng
   * chọn mệnh giá (một toast/khung nổi) chứ không đặt được gì — đúng lỗi người dùng gặp.
   * Mức chip do người dùng chọn sẵn trên trang (mặc định 20); mỗi lần bấm ô cược là
   * đúng một chip mệnh giá đó.
   *
   * Tốc độ: nếu mệnh giá chip đang chọn đọc được tin cậy và khớp kế hoạch thì bấm
   * luôn cả cụm (không tốn lần bấm "đo"); chỉ khi kế hoạch trộn mệnh giá hoặc không
   * đọc được chip đang chọn mới bấm 1 cú để đo. Cuối cụm đọc bằng quickDelta với
   * mức đích rõ ràng nên thoát ngay khi đủ tiền.
   *
   * args: {side, amount, dryRun, chipPlan, clickDelayMs, batchSize, fastTap,
   *        waitMs, waitClearMs, placeTimeoutMs, requireClear}
   */
  async function placeBet(args) {
    var t0 = Date.now();
    var side = String(args.side || '').toUpperCase();
    var want = Math.round(Number(args.amount) || 0);
    var role = { B: 'Banker', P: 'Player', T: 'Tie' }[side];
    if (!role) return { ok: false, reason: 'bad_side', note: 'Cửa không hợp lệ: ' + side };
    if (want <= 0) return { ok: false, reason: 'bad_amount', note: 'Số tiền không hợp lệ.' };

    var availability = bettingAvailability(side);
    if (!availability.ready) {
      return { ok: false, reason: availability.reason, note: availability.note };
    }

    var waitUntil = Date.now() + (Number(args.waitMs) || 9000);
    var first = null;
    while (Date.now() < waitUntil) {
      first = readChips();
      if (first.has_table) break;
      first = null;
      await sleep(100);
    }
    if (!first) {
      return { ok: false, reason: 'no_table_view', note: 'Khung này không có khay chip/ô cược.' };
    }

    // Bàn phải SẠCH chip ván trước rồi mới bấm: bấm chồng lên chip cũ là đặt gấp đôi.
    if (args.requireClear !== false && !args.dryRun) {
      var clearUntil = Date.now() + (Number(args.waitClearMs) || 22000);
      var cleared = false;
      while (Date.now() < clearUntil) {
        var live = readChips();
        if (live && live.has_table && (live.total || 0) <= 0) { cleared = true; break; }
        await sleep(80);
      }
      if (!cleared) {
        return {
          ok: false, reason: 'table_not_clear',
          note: 'Bàn vẫn còn chip ván trước nên không bấm (tránh đặt chồng).'
        };
      }
    }

    availability = bettingAvailability(side);
    if (!availability.ready) {
      return { ok: false, reason: availability.reason, note: availability.note };
    }

    // Hạn mức của cửa: vượt max là site từ chối, nên chặn TRƯỚC khi bấm để không đặt dở dang.
    var lim = (first.limits || {})[side];
    if (lim && lim.max && want > lim.max) {
      return {
        ok: false, reason: 'over_table_limit',
        note: 'Cửa ' + role + ' chỉ nhận tối đa ' + lim.max + ' — mức ' + want +
          ' vượt hạn mức bàn. Bậc gấp thếp này không đặt được ở bàn này.',
        limit: lim, want: want
      };
    }

    var targets = null;
    while (Date.now() < waitUntil && !targets) {
      targets = targetsFor(side);
      if (!targets) await sleep(100);
    }
    if (!targets) {
      return { ok: false, reason: 'no_targets', note: 'Chưa thấy ô cược/khay chip.' };
    }

    var denoms = (first.denominations && first.denominations.length)
      ? first.denominations : [20, 50, 250, 1000, 5000, 10000];

    /* --- TỰ CHỌN MỆNH GIÁ ---
     * Người dùng không chọn chip; tool chọn tổ hợp ít tốn thời gian nhất. Ưu tiên
     * mệnh giá mà mình đã thấy trong khay; nếu thiếu thì mở khay ra xem đủ. */
    if (args.autoChip !== false && !args.dryRun) {
      try {
        var richer = await revealDenominations(side, 900);
        if (richer && richer.length) denoms = richer.slice();
        if (richer && richer.spotChanged) {
          return {
            ok: false, reason: 'table_changed',
            note: 'Tiền trên ô đổi khi mở khay chip; dừng để kiểm tra.'
          };
        }
      } catch (e) { /* giữ mệnh giá cũ */ }
      // Gộp thêm mệnh giá mặc định của EV để ghép được cả bậc lớn.
      var merge = denoms.slice();
      [20, 50, 250, 1000, 5000, 10000, 50000].forEach(function (v) {
        if (merge.indexOf(v) < 0) merge.push(v);
      });
      merge.sort(function (a, b) { return a - b; });
      denoms = merge;
    }

    // Mệnh giá ĐOÁN trước khi bấm (chỉ dùng cho dryRun và cho lời nhắn). Số thật sẽ
    // được đo bằng chip vừa lên bàn ở lần bấm đầu tiên.
    var guess = Number(first.selected_chip) || denoms[0] || want;

    // dryRun: chỉ trả toạ độ các lần bấm ô cược (native bấm cảm ứng thật).
    if (args.dryRun) {
      var p0 = targets.spot;
      var nDry = Math.max(1, Math.ceil(want / guess));
      var drySteps = [];
      for (var d = 0; d < nDry; d++) {
        drySteps.push({ kind: 'spot', chip: guess, x: p0.x, y: p0.y, abs: p0.abs });
      }
      return {
        ok: true, dry_run: true,
        note: 'Chỉ tính toạ độ: ' + nDry + ' lần bấm ô ' + role + ' (chip ' + guess + ').',
        want: want, actual: nDry * guess, rounded: nDry * guess !== want,
        unit: guess, taps: nDry, steps: drySteps, denominations: denoms
      };
    }

    /* --- tốc độ ---
     * Chế độ AUTO: 150 ms mỗi cú bấm (đúng nhịp site nhận ổn định, ~6-7 cú/giây).
     * Nhanh hơn 150 ms thì site hay bỏ cú, mà bỏ cú thì phải bấm bù nên chậm hơn.
     * Vẫn cho args.clickDelayMs ghi đè khi cần tinh chỉnh theo từng bàn. */
    var rawDelay = Number(args.clickDelayMs);
    var delay = isFinite(rawDelay) && rawDelay > 0
      ? Math.max(30, Math.min(400, rawDelay))
      : 150;
    // Mỗi lô bấm liền một task để React gộp render; 1 cú/lô ở chế độ auto cho nhịp
    // đều và dễ đọc lại tiền sau mỗi cú.
    var batchSize = Math.max(1, Math.min(12, Number(args.batchSize) || 1));

    var start = spotAmount(side);
    if (start === null) {
      return { ok: false, reason: 'no_targets', note: 'Không đọc được ô ' + role + '.' };
    }

    /* --- chọn tổ hợp chip ---
     * Native có thể gửi chipPlan dựa trên mệnh giá nó thấy lúc khay thu gọn (hay chỉ
     * có chip nhỏ → hàng trăm cú bấm). Chế độ auto tự tính lại và CHỈ dùng chipPlan
     * của native khi args.autoChip === false. */
    var chipPlan = [];
    var autoPick = null;
    if (args.autoChip !== false) {
      autoPick = chooseChipPlan(want, denoms, delay);
      if (autoPick && autoPick.clicks <= 600) chipPlan = autoPick.plan;
    }
    if (!chipPlan.length && Array.isArray(args.chipPlan)) {
      chipPlan = args.chipPlan.map(function (v) { return Math.round(Number(v) || 0); });
    }
    if (!chipPlan.length) {
      var fallbackCount = want / guess;
      if (!isFinite(fallbackCount) || fallbackCount < 1 || fallbackCount !== Math.floor(fallbackCount)) {
        return {
          ok: false, reason: 'unrepresentable_amount',
          note: 'Không ghép chính xác được mức ' + want + ' bằng các mệnh giá ' +
            denoms.join('/') + '.',
          denominations: denoms
        };
      }
      for (var f = 0; f < fallbackCount; f++) chipPlan.push(guess);
    }
    if (chipPlan.length > 600 || chipPlan.some(function (v) { return v <= 0; }) ||
        chipPlan.reduce(function (sum, v) { return sum + v; }, 0) !== want) {
      return {
        ok: false, reason: 'unrepresentable_amount',
        note: 'Tổ hợp chip không khớp chính xác mức cược ' + want + '.',
        denominations: denoms
      };
    }
    var placeUntil = Date.now() + Math.max(10000, Number(args.placeTimeoutMs) || 10000);

    var steps = [];
    var taps = 0;
    var unavailable = null;

    // Ô cược có thể bị React thay element; giữ tham chiếu và làm mới khi cần.
    var spotEl = targets.spot.el;
    function liveSpot() {
      if (spotEl && document.contains(spotEl) && visible(spotEl)) return spotEl;
      spotEl = spotOf(side);
      return spotEl;
    }
    async function burst(count) {
      var el = liveSpot();
      if (!el) return 0;
      var done = await tapSpotFast(el, count, delay, batchSize, steps);
      taps += done;
      return done;
    }

    var currentSelection = selectedChip();
    var mixedPlan = chipPlan.some(function (value) { return value !== currentSelection; });

    /* ---------- A) kế hoạch TRỘN mệnh giá: chọn từng mệnh giá rồi bấm ---------- */
    if (mixedPlan) {
      var actualMixed = 0;
      var grouped = {};
      chipPlan.forEach(function (value) { grouped[value] = (grouped[value] || 0) + 1; });
      var planValues = Object.keys(grouped).map(Number).sort(function (a, b) { return b - a; });
      for (var g = 0; g < planValues.length; g++) {
        var denom = planValues[g];
        var count = grouped[denom];
        if (Date.now() >= placeUntil) break;

        var selected = await selectTrayChip(side, denom, start + actualMixed);
        if (!selected.ok) {
          return {
            ok: false, reason: 'chip_not_selected', note: selected.note,
            want: want, actual: actualMixed, unit: denom, taps: taps, steps: steps
          };
        }

        await burst(count);
        var gainedMixed = await quickDelta(side, start, {
          reach: want, quietMs: 90,
          timeoutMs: 500 + count * (delay + 24)
        });
        if (gainedMixed + 0.5 < actualMixed) gainedMixed = actualMixed;

        /* Bấm đủ [count] cú nhưng site có thể nhận ít hơn, hoặc nhận ĐÚNG count.
         * Nếu thiếu: bấm bù từng cú một (không bấm lô) cho tới khi khớp — mỗi cú
         * đọc lại ngay nên không thể vượt mức của mệnh giá này. */
        var expectMixed = actualMixed + denom * count;
        var refill = 0;
        while (gainedMixed + 0.5 < expectMixed && refill < count + 6 &&
               Date.now() < placeUntil) {
          refill += 1;
          var beforeRefill = taps;
          await burst(1);
          if (taps === beforeRefill) break;
          var nowRefill = await quickDelta(side, start, {
            reach: want, quietMs: 60, timeoutMs: 300 + delay + 20
          });
          if (nowRefill > gainedMixed + 0.5) gainedMixed = nowRefill;
          else if (Date.now() >= placeUntil) break;
        }

        var checkMixed = quickReady(liveSpot()) ? null : bettingAvailability(side);
        if (checkMixed && !checkMixed.ready) {
          unavailable = checkMixed;
          return {
            ok: false, reason: gainedMixed > 0 ? 'bet_interrupted' : unavailable.reason,
            note: unavailable.note + (gainedMixed > 0 ? ' Đã đặt một phần; cần kiểm tra bàn.' : ''),
            want: want, actual: gainedMixed, unit: denom, taps: taps, steps: steps
          };
        }
        if (gainedMixed > want + 0.5) {
          return {
            ok: false, reason: 'verify_failed',
            note: 'Ô cược vượt mức kế hoạch sau khi dùng chip ' + denom + '.',
            want: want, actual: gainedMixed, unit: denom, taps: taps, steps: steps
          };
        }
        if (gainedMixed + 0.5 < actualMixed + denom * count) {
          return {
            ok: false, reason: 'verify_failed', needs_real_touch: true,
            missing: want - gainedMixed,
            note: 'Sau chip ' + denom + ', ô mới có ' + gainedMixed + '/' + want +
              '; dừng để xác nhận phần còn thiếu.',
            want: want, actual: gainedMixed, unit: denom, taps: taps, steps: steps,
            spot_after: start + gainedMixed
          };
        }
        actualMixed = gainedMixed;
      }

      if (actualMixed + 0.5 < want) {
        return {
          ok: false, reason: 'verify_failed', needs_real_touch: true,
          missing: want - actualMixed,
          note: 'Ô ' + role + ' mới có ' + actualMixed + '/' + want +
            ' sau ' + taps + ' lần bấm.',
          want: want, actual: actualMixed, unit: currentSelection, taps: taps, steps: steps,
          spot_after: start + actualMixed
        };
      }
      return {
        ok: true,
        note: 'Đã đặt chính xác ' + actualMixed + ' vào ' + role + ' (' +
          chipPlan.join(' + ') + ').',
        want: want, actual: actualMixed, rounded: false,
        unit: currentSelection, taps: taps, steps: steps, spot_after: start + actualMixed,
        elapsed_ms: Date.now() - t0
      };
    }

    /* ---------- B) MỘT mệnh giá: bấm theo lô nhỏ, không bao giờ vượt mức ---------- */

    /* Bản trước bấm HẾT cả cụm rồi mới đọc lại ô cược. Nếu site chậm hơn dự kiến
     * hoặc chip trước đó đã lên, số dư trên bàn vượt mức cần — mất tiền thật và
     * bậc gấp thếp sau đó tính sai. Bản này chỉ bấm tối đa bằng phần còn thiếu đã
     * XÁC NHẬN, nên dù site phản hồi chậm bao nhiêu cũng không thể vượt. */

    var unit = 0;
    if (isFinite(currentSelection) && currentSelection > 0 && currentSelection === chipPlan[0]) {
      unit = currentSelection;
    }

    var actual = 0;
    // Tổng đã bấm theo kế hoạch (để biết còn bao nhiêu cú nữa mới đủ).
    var plannedTaps = 0;

    if (unit > 0) {
      // Đã biết mệnh giá: bấm từng lô, đọc lại sau mỗi lô, dừng ngay khi đủ.
      var remaining = want;
      while (remaining > 0.5 && taps < 600 && Date.now() < placeUntil) {
        var canTap = Math.max(1, Math.min(
          Math.ceil(remaining / unit),          // không bấm quá phần còn thiếu
          batchSize
        ));
        var before2 = taps;
        var did = await burst(canTap);
        if (did === 0) break;
        plannedTaps += did;
        var now2 = await quickDelta(side, start, {
          reach: want, quietMs: 60,
          timeoutMs: 300 + did * (delay + 20)
        });
        if (now2 > actual + 0.5) actual = now2;
        // Tiến độ thực tế quyết định phần còn lại, không dựa vào số đã bấm.
        remaining = want - actual;
        if (taps === before2) break;
      }
    } else {
      // Chưa biết mệnh giá: bấm 1 cú để ĐO, rồi phần còn lại cũng theo lô nhỏ.
      await burst(1);
      plannedTaps += 1;
      unit = await quickDelta(side, start, { quietMs: 90, timeoutMs: 900 });
      if (unit <= 0) {
        return {
          ok: false, reason: 'tap_not_registered', needs_real_touch: true,
          note: 'Bấm ô ' + role + ' nhưng chưa thấy chip lên bàn. Kiểm tra: ô cược có bị che ' +
            'không, cửa sổ cược đã mở chưa, và trên trang đã chọn mức chip chưa.',
          want: want, taps: taps, steps: steps
        };
      }
      actual = unit;
      var remaining3 = want - actual;
      while (remaining3 > 0.5 && taps < 600 && Date.now() < placeUntil) {
        var canTap3 = Math.max(1, Math.min(Math.ceil(remaining3 / unit), batchSize));
        var did3 = await burst(canTap3);
        if (did3 === 0) break;
        plannedTaps += did3;
        var now3 = await quickDelta(side, start, {
          reach: want, quietMs: 60,
          timeoutMs: 300 + did3 * (delay + 20)
        });
        if (now3 > actual + 0.5) actual = now3;
        remaining3 = want - actual;
      }
    }

    // Bù lần cuối: chỉ bấm đúng phần còn thiếu, tối đa vài cú một lượt.
    var guard = 0;
    while (actual + 0.5 < want && guard < 10 && taps < 600 && Date.now() < placeUntil) {
      guard += 1;
      var missingNow = want - actual;
      var fixCount = Math.max(1, Math.min(
        Math.ceil(missingNow / (unit || 1)),
        batchSize
      ));
      var beforeFix = taps;
      await burst(fixCount);
      if (taps === beforeFix) break;
      var gained = await quickDelta(side, start, {
        reach: want, quietMs: 70,
        timeoutMs: 300 + fixCount * (delay + 22)
      });
      if (gained <= actual + 0.5) {
        await sleep(80);
        continue;
      }
      actual = gained;
    }

    if (!quickReady(liveSpot())) {
      unavailable = bettingAvailability(side);
    }
    if (unavailable && !unavailable.ready) {
      return {
        ok: false,
        reason: actual > 0 ? 'bet_interrupted' : unavailable.reason,
        note: unavailable.note + (actual > 0 ? ' Đã thấy chip lên một phần; cần kiểm tra bàn.' : ''),
        want: want, actual: actual, unit: unit, taps: taps, steps: steps
      };
    }

    if (actual + 0.5 < want) {
      return {
        ok: false, reason: 'verify_failed', needs_real_touch: true,
        missing: want - actual,
        note: 'Ô ' + role + ' mới có ' + actual + '/' + want + ' sau ' + taps + ' lần bấm.',
        want: want, actual: actual, unit: unit, taps: taps, steps: steps,
        spot_after: start + actual
      };
    }

    var note = 'Đã đặt ' + actual + ' vào ' + role + ' (' + taps + ' lần bấm ô, chip ' + unit + ').';
    if (actual > want + 0.5) {
      note += ' Cao hơn bậc ' + want + ' vì chip đang chọn là ' + unit + '.';
    }
    return {
      ok: true, note: note, want: want, actual: actual, rounded: actual !== want,
      unit: unit, taps: taps, steps: steps, spot_after: start + actual,
      elapsed_ms: Date.now() - t0
    };
  }

  /* Mở ô bàn ở sảnh: tìm ô theo table_id, cuộn vào giữa, trả toạ độ tâm. */
  function openTile(args) {
    var id = String(args.id || '');
    var found = [];
    document.querySelectorAll('[data-role="table-tile"]').forEach(function (tile) {
      var table = tableTileOf(tile);
      if (!table || table.id !== id) return;
      found.push(tile);
    });
    if (!found.length) return { ok: false, reason: 'tile_not_found', note: 'Không thấy ô bàn ' + id + '.' };
    var tile = found.filter(function (t) { return t.getAttribute('data-open') === 'true'; })[0] || found[0];
    try { tile.scrollIntoView({ block: 'center' }); } catch (e) { /* bỏ qua */ }
    var rect = tile.getBoundingClientRect();
    if (rect.width < 20 || rect.height < 20) {
      return { ok: false, reason: 'tile_hidden', note: 'Ô bàn đang ẩn.' };
    }
    // Tránh góc trên phải: ở đó là nút yêu thích có onclick riêng.
    var p = pointOf(tile, { fx: 0.42, fy: 0.62 });
    if (!p) return { ok: false, reason: 'tile_hidden', note: 'Không đo được ô bàn.' };
    var clicked = false;
    if (!args.dryRun) clicked = synthTap({ el: tile, x: p.x, y: p.y });
    return {
      ok: true, x: p.x, y: p.y, abs: p.abs, clicked: clicked,
      title: tableTileOf(tile) ? (tableTileOf(tile).title || id) : id
    };
  }

  /* ============================== chẩn đoán DOM bàn ============================== */

  /**
   * Dump cấu trúc bàn đang mở để map selector đúng với layout MOBILE.
   *
   * Bàn Evolution trên PC và trên điện thoại dùng chung link nhưng render khác nhau:
   * khay chip có thể xếp chồng, ô cược đổi data-role. Hàm này trả về mọi thứ cần biết
   * để sửa selector: các element có data-role, khay chip, ô cược, nút ×2/gấp đôi.
   */
  function probeTable() {
    var out = { url: location.href, roles: [], chips: [], spots: [], buttons: [], diag: {} };

    // 1) Mọi data-role đang có trên trang, kèm số lượng.
    var roleCount = {};
    document.querySelectorAll('[data-role]').forEach(function (el) {
      var role = el.getAttribute('data-role');
      if (!role) return;
      roleCount[role] = (roleCount[role] || 0) + 1;
    });
    out.roles = Object.keys(roleCount).sort().map(function (r) {
      return { role: r, count: roleCount[r] };
    });

    // 2) Mọi element mang data-value (chip) — kèm vị trí + kích thước để biết cái nào thật.
    document.querySelectorAll('[data-value]').forEach(function (el) {
      var v = parseInt(el.getAttribute('data-value'), 10);
      var r = el.getBoundingClientRect();
      if (r.width <= 0 || r.height <= 0) return;
      out.chips.push({
        value: isFinite(v) ? v : el.getAttribute('data-value'),
        role: el.getAttribute('data-role') || '',
        x: Math.round(r.x), y: Math.round(r.y),
        w: Math.round(r.width), h: Math.round(r.height),
        text: txt(el).slice(0, 24),
        cls: String(el.className || '').slice(0, 60),
        inTray: !!el.closest('[data-role="chip-stack"]')
      });
    });

    // 3) Ô cược: tìm theo data-role bet-spot-* và cả các ô lớn ở khu cược.
    document.querySelectorAll('[data-role^="bet-spot-"]').forEach(function (el) {
      var r = el.getBoundingClientRect();
      out.spots.push({
        role: el.getAttribute('data-role'),
        x: Math.round(r.x), y: Math.round(r.y),
        w: Math.round(r.width), h: Math.round(r.height),
        text: txt(el).slice(0, 40)
      });
    });

    // 4) Nút bấm đáng chú ý: ×2, gấp đôi, hoàn tác, xoá.
    var PAT = /(x\s*2|×\s*2|double|gấp đôi|gap doi|hoàn tác|hoan tac|undo|xóa|clear)/i;
    document.querySelectorAll('button,[role="button"],[data-role]').forEach(function (el) {
      var label = (txt(el) || el.getAttribute('aria-label') || '').trim();
      if (!label || label.length > 40) return;
      if (!PAT.test(label) && !PAT.test(el.getAttribute('data-role') || '')) return;
      var r = el.getBoundingClientRect();
      if (r.width <= 0 || r.height <= 0) return;
      out.buttons.push({
        text: label.slice(0, 30),
        role: el.getAttribute('data-role') || '',
        cls: String(el.className || '').slice(0, 60),
        x: Math.round(r.x), y: Math.round(r.y),
        w: Math.round(r.width), h: Math.round(r.height)
      });
    });

    // 5) Chẩn đoán cách đọc hiện tại thấy gì.
    out.diag = {
      bead_roads: document.querySelectorAll('[data-role="Bead-road"]').length,
      road_items: document.querySelectorAll('[data-role="roadItem"][name]').length,
      tray: !!trayOf(),
      spots_found: ['B', 'P', 'T'].filter(function (s) { return !!spotOf(s); }).length,
      spot_sides: ['B', 'P', 'T'].filter(function (s) { return !!spotOf(s); }),
      read_chips: (function () {
        try {
          var c = readChips();
          return {
            has_table: c.has_table,
            total: c.total,
            denoms: c.denominations,
            betting: c.betting
          };
        } catch (e) { return { error: String(e) }; }
      })()
    };

    // 6) Mẫu HTML của khay chip và mỗi ô cược (để biết cấu trúc thật).
    var tray = trayOf();
    out.tray_html = tray ? String(tray.outerHTML || '').slice(0, 1200) : '';
    out.spot_html = {};
    ['B', 'P', 'T'].forEach(function (s) {
      var el = spotOf(s);
      out.spot_html[s] = el ? String(el.outerHTML || '').slice(0, 700) : '';
    });

    return out;
  }

  /* ================================ điều phối lệnh ================================ */

  function run(cmd, args) {
    switch (cmd) {
      case 'ping':
        return {
          ok: true, top: window === window.top, frames: (function () {
            try { return window.frames.length; } catch (e) { return 0; }
          })(), href: location.href
        };
      case 'scan':
        return scanPage();
      case 'page_url':
        // Chỉ trả URL của chính khung này: dùng để biết "đang ở trong bàn" dù iframe
        // bàn chưa dựng xong cầu (URL khung gốc có table_id, khung rỗng thì không).
        return { ok: true, url: location.href, has_table_id: /[#?&]table_id=/.test(location.href) };
      case 'chips':
        return readChips();
      case 'road':
        // Đọc cầu nhẹ: chỉ đếm ô cầu và lấy chuỗi ký tự, KHÔNG quét sảnh/khay chip.
        // Dùng mỗi nhịp của vòng lặp nên phải rẻ (trước đây gọi `scan` tốn tới 3,2s).
        return roadOnly();
      case 'round':
        // ĐÃ BỎ. Kết quả ván giờ đọc từ bảng cầu qua lệnh `road` — không cần WebSocket,
        // nên không có gì can thiệp vào kết nối mạng của trang.
        return { ok: false, reason: 'removed', note: 'Dùng lệnh road.' };
      case 'probe':
        return probeTable();
      case 'place':
        return placeBet(args);
      case 'open_tile':
        return openTile(args);
      case 'back':
        try { history.back(); return { ok: true }; } catch (e) { return { ok: false }; }
      case 'goto':
        try {
          location.href = String(args.url || '');
          return { ok: true };
        } catch (e) {
          return { ok: false, note: String(e) };
        }
      default:
        return { ok: false, reason: 'unknown_cmd', note: cmd };
    }
  }
})();
