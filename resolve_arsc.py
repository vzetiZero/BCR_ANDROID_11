import struct, sys

RES_STRING_POOL = 0x0001
RES_TABLE = 0x0002
RES_TABLE_PACKAGE = 0x0200
RES_TABLE_TYPE = 0x0201
RES_TABLE_TYPE_SPEC = 0x0202
RES_TABLE_LIBRARY = 0x0203

DYN_REF = 0x07
DYN_ATTR = 0x08


def parse_string_pool(data, off):
    hsz, size = struct.unpack_from('<HI', data, off + 2)
    count, style_count, flags, sstart, stystart = struct.unpack_from('<IIIII', data, off + 8)
    utf8 = bool(flags & 0x100)
    offs = struct.unpack_from('<%dI' % count, data, off + hsz)
    out = []
    for o in offs:
        p = off + sstart + o
        if utf8:
            n = data[p]; p += 1
            if n & 0x80:
                n = ((n & 0x7f) << 8) | data[p]; p += 1
            n2 = data[p]; p += 1
            if n2 & 0x80:
                n2 = ((n2 & 0x7f) << 8) | data[p]; p += 1
            out.append(data[p:p + n2].decode('utf-8', 'replace'))
        else:
            n = struct.unpack_from('<H', data, p)[0]; p += 2
            if n & 0x8000:
                n = ((n & 0x7fff) << 16) | struct.unpack_from('<H', data, p)[0]; p += 2
            out.append(data[p:p + n * 2].decode('utf-16-le', 'replace'))
    return out


def fmt_value(data, dtype, ddata, gstrings, pos):
    if dtype == 0x03:
        return repr(gstrings[ddata]) if ddata < len(gstrings) else 'str#%d' % ddata
    if dtype == 0x12:
        return 'true' if ddata else 'false'
    if dtype == 0x01:
        return '@0x%08x' % ddata
    if dtype == DYN_REF:
        key = struct.unpack_from('<I', data, pos + 4)[0]
        return '@dynref key=0x%08x' % key
    if dtype == DYN_ATTR:
        return '?attr 0x%08x' % ddata
    if dtype == 0x10:
        return str(ddata)
    if dtype == 0x11:
        return '0x%08x' % ddata
    if dtype == 0x04:
        return repr(struct.unpack('<f', struct.pack('<I', ddata))[0])
    return 'type=0x%02x data=0x%08x' % (dtype, ddata)


def read_entry(data, off, tname, keynames, gstrings):
    esize, eflags, key = struct.unpack_from('<HHI', data, off)
    kname = keynames[key] if key < len(keynames) else 'key#%d' % key
    if eflags & 0x01:  # complex
        parent, count = struct.unpack_from('<II', data, off + 8)
        parts = ['%s/%s{' % (tname, kname)]
        p = off + esize
        for i in range(count):
            nsize, nres0, ntype, ndata = struct.unpack_from('<HBBI', data, p)
            parts.append('  item: ' + fmt_value(data, ntype, ndata, gstrings, p))
            p += nsize
        parentv = fmt_value(data, 0x01, parent, gstrings, off) if parent else 'none'
        parts.append('} parent=%s' % parentv)
        return '\n'.join(parts)
    vsize, res0, dtype, ddata = struct.unpack_from('<HBBI', data, off + esize)
    return '%s/%s = %s' % (tname, kname, fmt_value(data, dtype, ddata, gstrings, off + esize))


def parse_package(data, pos, hsz, targets, gstrings, res):
    pkg_id = struct.unpack_from('<I', data, pos + 8)[0]
    type_strings_off = struct.unpack_from('<I', data, pos + 268)[0]
    key_strings_off = struct.unpack_from('<I', data, pos + 276)[0]
    type_names = parse_string_pool(data, pos + type_strings_off)
    key_names = parse_string_pool(data, pos + key_strings_off)
    ip = pos + hsz
    end = pos + struct.unpack_from('<I', data, pos + 4)[0]
    while ip < end:
        t, th, ts = struct.unpack_from('<HHI', data, ip)
        if ts < 8:
            break
        if t == RES_TABLE_TYPE:
            type_id = data[ip + 8]
            tflags = data[ip + 9]
            entry_count = struct.unpack_from('<I', data, ip + 12)[0]
            entries_start = struct.unpack_from('<I', data, ip + 16)[0]
            tname = type_names[type_id - 1] if type_id - 1 < len(type_names) else 'type%d' % type_id
            arr = ip + th
            base = ip + entries_start

            def put(idx, eoff):
                rid = (pkg_id << 24) | (type_id << 16) | idx
                if rid in targets:
                    res[rid] = read_entry(data, base + eoff, tname, key_names, gstrings)

            if tflags & 0x01:  # sparse
                for i in range(entry_count):
                    idx, eoff = struct.unpack_from('<HH', data, arr + i * 4)
                    put(idx, eoff * 4)
            elif tflags & 0x02:  # offset16
                for idx, o in enumerate(struct.unpack_from('<%dH' % entry_count, data, arr)):
                    if o != 0xFFFF:
                        put(idx, o * 4)
            else:
                for idx, o in enumerate(struct.unpack_from('<%dI' % entry_count, data, arr)):
                    if o != 0xFFFFFFFF:
                        put(idx, o)
        ip += ts


def main(path, targets):
    data = open(path, 'rb').read()
    gstrings = []
    res = {}
    pos = 12
    while pos < len(data):
        ctype, hsz, csize = struct.unpack_from('<HHI', data, pos)
        if csize < 8:
            break
        if ctype == RES_STRING_POOL:
            gstrings = parse_string_pool(data, pos)
        elif ctype == RES_TABLE_PACKAGE:
            parse_package(data, pos, hsz, targets, gstrings, res)
        elif ctype == RES_TABLE:
            ip = pos + hsz
            end = pos + csize
            while ip < end:
                t, th, ts = struct.unpack_from('<HHI', data, ip)
                if ts < 8:
                    break
                if t == RES_STRING_POOL:
                    gstrings = parse_string_pool(data, ip)
                elif t == RES_TABLE_PACKAGE:
                    parse_package(data, ip, th, targets, gstrings, res)
                ip += ts
        pos += csize
    for rid in sorted(targets):
        print('0x%08x -> %s' % (rid, res.get(rid, 'NOT FOUND')))


if __name__ == '__main__':
    main(sys.argv[1], set(int(x, 16) for x in sys.argv[2:]))
