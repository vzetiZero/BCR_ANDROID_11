.class public final Lcom/bcr/android/web/Bridge;
.super Ljava/lang/Object;
.source "Bridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bcr/android/web/Bridge$ChipFrameCandidate;,
        Lcom/bcr/android/web/Bridge$Companion;,
        Lcom/bcr/android/web/Bridge$Legacy;,
        Lcom/bcr/android/web/Bridge$Pending;,
        Lcom/bcr/android/web/Bridge$Reply;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bridge.kt\ncom/bcr/android/web/Bridge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n1761#2,3:279\n774#2:282\n865#2,2:283\n1999#2,14:285\n774#2:299\n865#2,2:300\n1999#2,14:302\n1#3:316\n*S KotlinDebug\n*F\n+ 1 Bridge.kt\ncom/bcr/android/web/Bridge\n*L\n178#1:279,3\n231#1:282\n231#1:283,2\n232#1:285,14\n236#1:299\n236#1:300,2\n237#1:302,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 ?2\u00020\u0001:\u0005;<=>?B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001b\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u0013J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u000cJ\u0018\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u0013H\u0002JV\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0006\u0010\'\u001a\u00020\u000c2\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020+2\u0016\u0008\u0002\u0010-\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0013\u0018\u00010.2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u000cJ\u0010\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\u000cH\u0002J\u0010\u00102\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\u000cH\u0002J\u0006\u00103\u001a\u00020\u000cJ\u0006\u00104\u001a\u00020\u000cJ\u0016\u00105\u001a\u0004\u0018\u00010&2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020&0%J\u0016\u00107\u001a\u0004\u0018\u00010&2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020&0%J\u0012\u00108\u001a\u00020\u00172\u0008\u00109\u001a\u0004\u0018\u00010)H\u0002J\u0012\u0010:\u001a\u00020\u00172\u0008\u00109\u001a\u0004\u0018\u00010)H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006@"
    }
    d2 = {
        "Lcom/bcr/android/web/Bridge;",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "<init>",
        "(Landroid/webkit/WebView;)V",
        "main",
        "Landroid/os/Handler;",
        "seq",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "waiting",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/bcr/android/web/Bridge$Pending;",
        "knownFrames",
        "",
        "topFrameId",
        "mainFrameUrl",
        "value",
        "",
        "listenerSupported",
        "getListenerSupported",
        "()Z",
        "",
        "lastReplyCount",
        "getLastReplyCount",
        "()I",
        "knownFrameCount",
        "attach",
        "attachLegacy",
        "",
        "inject",
        "script",
        "deliver",
        "text",
        "isMainFrame",
        "call",
        "",
        "Lcom/bcr/android/web/Bridge$Reply;",
        "cmd",
        "args",
        "Lorg/json/JSONObject;",
        "timeoutMs",
        "",
        "quietMs",
        "until",
        "Lkotlin/Function1;",
        "targetFrameId",
        "send",
        "payload",
        "evalTop",
        "mainUrl",
        "topId",
        "tableReply",
        "replies",
        "lobbyReply",
        "tableCount",
        "result",
        "tileCount",
        "Pending",
        "Reply",
        "Legacy",
        "ChipFrameCandidate",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bcr/android/web/Bridge$Companion;

.field public static final JS_OBJECT:Ljava/lang/String; = "BcrNative"


# instance fields
.field private final knownFrames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastReplyCount:I

.field private volatile listenerSupported:Z

.field private final main:Landroid/os/Handler;

.field private volatile mainFrameUrl:Ljava/lang/String;

.field private final seq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile topFrameId:Ljava/lang/String;

.field private final waiting:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bcr/android/web/Bridge$Pending;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bcr/android/web/Bridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bcr/android/web/Bridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bcr/android/web/Bridge;->Companion:Lcom/bcr/android/web/Bridge$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/web/Bridge;->webView:Landroid/webkit/WebView;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->main:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->waiting:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "newSetFromMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->knownFrames:Ljava/util/Set;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->topFrameId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/bcr/android/web/Bridge;->mainFrameUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static final synthetic access$deliver(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/bcr/android/web/Bridge;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bcr/android/web/Bridge;->deliver(Ljava/lang/String;Z)V

    return-void
.end method

.method static final attach$lambda$1(Lcom/bcr/android/web/Bridge;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bcr/android/web/Bridge;
    .param p2, "message"    # Landroidx/webkit/WebMessageCompat;
    .param p4, "isMainFrame"    # Z

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    .local p1, "it\\1":Ljava/lang/String;
    const/4 p3, 0x0

    .line 75
    .local p3, "$i$a$-let-Bridge$attach$1$1\\1\\75\\0":I
    invoke-direct {p0, p1, p4}, Lcom/bcr/android/web/Bridge;->deliver(Ljava/lang/String;Z)V

    .line 77
    .end local p1    # "it\\1":Ljava/lang/String;
    .end local p3    # "$i$a$-let-Bridge$attach$1$1\\1\\75\\0":I
    :cond_0
    return-void
.end method

.method public static synthetic call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 8

    .line 152
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 152
    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_1

    .line 155
    const-wide/16 v1, 0x708

    goto :goto_1

    .line 152
    :cond_1
    move-wide v1, p3

    :goto_1
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_2

    .line 156
    const-wide/16 v3, 0x8c

    goto :goto_2

    .line 152
    :cond_2
    move-wide v3, p5

    :goto_2
    and-int/lit8 v5, p9, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 157
    move-object v5, v6

    goto :goto_3

    .line 152
    :cond_3
    move-object v5, p7

    :goto_3
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_4

    .line 158
    goto :goto_4

    .line 152
    :cond_4
    move-object/from16 v6, p8

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-wide p5, v1

    move-wide p7, v3

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    invoke-virtual/range {p2 .. p10}, Lcom/bcr/android/web/Bridge;->call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final deliver(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z

    .line 115
    nop

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    nop

    .line 120
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "frameId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "frameId":Ljava/lang/String;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bcr/android/web/Bridge;->knownFrames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    const-string v1, "__bcr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "hello"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "optString(...)"

    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    .line 125
    iput-object v3, p0, Lcom/bcr/android/web/Bridge;->topFrameId:Ljava/lang/String;

    .line 126
    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bcr/android/web/Bridge;->mainFrameUrl:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    const-string v2, "res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    new-instance v2, Lcom/bcr/android/web/Bridge$Reply;

    .line 130
    nop

    .line 131
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string v5, "ok"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 133
    const-string v6, "error"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const-string v4, "result"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 129
    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/bcr/android/web/Bridge$Reply;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;)V

    .line 136
    .local v2, "reply":Lcom/bcr/android/web/Bridge$Reply;
    iget-object v1, p0, Lcom/bcr/android/web/Bridge;->waiting:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bcr/android/web/Bridge$Pending;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bcr/android/web/Bridge$Pending;->getReplies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "reply":Lcom/bcr/android/web/Bridge$Reply;
    :cond_2
    :goto_0
    return-void

    .line 117
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v3    # "frameId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "<unused var>":Ljava/lang/Throwable;
    return-void
.end method

.method private final evalTop(Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Ljava/lang/String;

    .line 214
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function(){try{return window.__BCR__&&window.__BCR__.dispatch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");}catch(e){return false;}})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    nop

    .line 215
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/bcr/android/web/Bridge;->main:Landroid/os/Handler;

    new-instance v2, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;-><init>(Lcom/bcr/android/web/Bridge;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method static final evalTop$lambda$2(Lcom/bcr/android/web/Bridge;Ljava/lang/String;)V
    .locals 2
    .param p0, "this$0"    # Lcom/bcr/android/web/Bridge;
    .param p1, "$script"    # Ljava/lang/String;

    .line 216
    nop

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 221
    :goto_0
    return-void
.end method

.method private final send(Ljava/lang/String;)V
    .locals 0
    .param p1, "payload"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0, p1}, Lcom/bcr/android/web/Bridge;->evalTop(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private final tableCount(Lorg/json/JSONObject;)I
    .locals 1
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 240
    if-eqz p1, :cond_0

    const-string v0, "tables"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final tileCount(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 243
    if-eqz p1, :cond_0

    const-string v0, "lobby"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tiles"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final attach()Z
    .locals 5

    .line 67
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    iput-boolean v1, p0, Lcom/bcr/android/web/Bridge;->listenerSupported:Z

    .line 69
    return v1

    .line 71
    :cond_0
    nop

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->webView:Landroid/webkit/WebView;

    const-string v2, "BcrNative"

    const-string v3, "*"

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda1;-><init>(Lcom/bcr/android/web/Bridge;)V

    invoke-static {v0, v2, v3, v4}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bcr/android/web/Bridge;->listenerSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    move v1, v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "<unused var>":Ljava/lang/Throwable;
    iput-boolean v1, p0, Lcom/bcr/android/web/Bridge;->listenerSupported:Z

    .line 82
    nop

    .line 71
    .end local v0    # "<unused var>":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public final attachLegacy()V
    .locals 3

    .line 88
    nop

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bcr/android/web/Bridge$Legacy;

    invoke-direct {v1, p0}, Lcom/bcr/android/web/Bridge$Legacy;-><init>(Lcom/bcr/android/web/Bridge;)V

    const-string v2, "BcrNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 93
    :goto_0
    return-void
.end method

.method public final call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;
    .param p3, "timeoutMs"    # J
    .param p5, "quietMs"    # J
    .param p7, "until"    # Lkotlin/jvm/functions/Function1;
    .param p8, "targetFrameId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bcr/android/web/Bridge$Reply;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bcr/android/web/Bridge$Reply;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const-string v0, "cmd"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v7, v1, Lcom/bcr/android/web/Bridge;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "id":Ljava/lang/String;
    new-instance v8, Lcom/bcr/android/web/Bridge$Pending;

    invoke-direct {v8}, Lcom/bcr/android/web/Bridge$Pending;-><init>()V

    .line 162
    .local v8, "pending":Lcom/bcr/android/web/Bridge$Pending;
    iget-object v9, v1, Lcom/bcr/android/web/Bridge;->waiting:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    if-eqz v9, :cond_1

    iget-object v9, v1, Lcom/bcr/android/web/Bridge;->knownFrames:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v11

    .line 165
    .local v9, "expected":I
    :goto_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v13, "__bcr"

    invoke-virtual {v12, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 167
    const-string v13, "id"

    invoke-virtual {v12, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 168
    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    const-string v6, "depth"

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    move-object v6, v0

    .line 171
    .local v6, "message":Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    if-nez v0, :cond_3

    const-string v0, "targetFrameId"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "toString(...)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/bcr/android/web/Bridge;->send(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v12, v12, p3

    .line 175
    .local v12, "deadline":J
    const/4 v14, 0x0

    .line 176
    .local v14, "satisfied":Z
    :goto_3
    nop

    .line 177
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Pending;->getReplies()Ljava/util/List;

    move-result-object v0

    const-string v15, "<get-replies>(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v16

    .line 178
    .local v16, "snap":Ljava/util/List;
    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any\\1":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 279
    .local v17, "$i$f$any\\1\\178":I
    instance-of v10, v0, Ljava/util/Collection;

    if-eqz v10, :cond_4

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    .line 280
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element\\1":Ljava/lang/Object;
    invoke-interface {v4, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x1

    goto :goto_4

    .line 281
    .end local v11    # "element\\1":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    .line 178
    .end local v0    # "$this$any\\1":Ljava/lang/Iterable;
    .end local v17    # "$i$f$any\\1\\178":I
    :goto_5
    if-eqz v0, :cond_7

    .line 179
    const/4 v14, 0x1

    .line 180
    goto :goto_6

    .line 182
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_8

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 183
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-gez v0, :cond_9

    .line 184
    nop

    .line 185
    const-wide/16 v10, 0x23

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "<unused var>":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 188
    nop

    .line 191
    .end local v0    # "<unused var>":Ljava/lang/InterruptedException;
    .end local v16    # "snap":Ljava/util/List;
    :cond_9
    :goto_6
    const-wide/16 v10, 0x0

    cmp-long v0, p5, v10

    if-lez v0, :cond_a

    .line 192
    nop

    .line 193
    :try_start_1
    invoke-static/range {p5 .. p6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "<unused var>":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 199
    .end local v0    # "<unused var>":Ljava/lang/InterruptedException;
    :cond_a
    :goto_7
    iget-object v0, v1, Lcom/bcr/android/web/Bridge;->waiting:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Pending;->getReplies()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "replies":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v1, Lcom/bcr/android/web/Bridge;->lastReplyCount:I

    .line 202
    return-object v0
.end method

.method public final getLastReplyCount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/bcr/android/web/Bridge;->lastReplyCount:I

    return v0
.end method

.method public final getListenerSupported()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/bcr/android/web/Bridge;->listenerSupported:Z

    return v0
.end method

.method public final inject(Ljava/lang/String;)Z
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    nop

    .line 102
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DOCUMENT_START_SCRIPT"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/bcr/android/web/Bridge;->webView:Landroid/webkit/WebView;

    const-string v2, "*"

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroidx/webkit/WebViewCompat;->addDocumentStartJavaScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    nop

    :goto_0
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    .local v1, "<unused var>":Ljava/lang/Throwable;
    nop

    .line 110
    .end local v1    # "<unused var>":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method public final knownFrameCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->knownFrames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final lobbyReply(Ljava/util/List;)Lcom/bcr/android/web/Bridge$Reply;
    .locals 10
    .param p1, "replies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bcr/android/web/Bridge$Reply;",
            ">;)",
            "Lcom/bcr/android/web/Bridge$Reply;"
        }
    .end annotation

    const-string v0, "replies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 236
    nop

    .local v0, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 299
    .local v1, "$i$f$filter\\1\\236":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination\\2":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 300
    .local v4, "$i$f$filterTo\\2\\299":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\2":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/bcr/android/web/Bridge$Reply;

    .local v7, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$a$-filter-Bridge$lobbyReply$1\\3\\300\\0":I
    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/bcr/android/web/Bridge;->tileCount(Lorg/json/JSONObject;)I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 300
    .end local v7    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v8    # "$i$a$-filter-Bridge$lobbyReply$1\\3\\300\\0":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v6    # "element\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination\\2":Ljava/util/Collection;
    .end local v3    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo\\2\\299":I
    check-cast v2, Ljava/util/List;

    .line 299
    nop

    .end local v0    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter\\1\\236":I
    check-cast v2, Ljava/lang/Iterable;

    .line 237
    nop

    .local v2, "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    const/4 v0, 0x0

    .line 302
    .local v0, "$i$f$maxByOrNull\\4\\237":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, "iterator\\4":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    .line 304
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 305
    .local v3, "maxElem\\4":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 306
    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/bcr/android/web/Bridge$Reply;

    .local v4, "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v5, 0x0

    .line 237
    .local v5, "$i$a$-maxByOrNull-Bridge$lobbyReply$2\\5\\306\\0":I
    invoke-virtual {v4}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bcr/android/web/Bridge;->tileCount(Lorg/json/JSONObject;)I

    move-result v4

    .line 306
    .end local v4    # "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    .end local v5    # "$i$a$-maxByOrNull-Bridge$lobbyReply$2\\5\\306\\0":I
    nop

    .line 308
    .local v4, "maxValue\\4":I
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 309
    .local v5, "e\\4":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/bcr/android/web/Bridge$Reply;

    .local v6, "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v7, 0x0

    .line 237
    .local v7, "$i$a$-maxByOrNull-Bridge$lobbyReply$2\\6\\309\\0":I
    invoke-virtual {v6}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/bcr/android/web/Bridge;->tileCount(Lorg/json/JSONObject;)I

    move-result v6

    .line 309
    .end local v6    # "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    .end local v7    # "$i$a$-maxByOrNull-Bridge$lobbyReply$2\\6\\309\\0":I
    nop

    .line 310
    .local v6, "v\\4":I
    if-ge v4, v6, :cond_6

    .line 311
    move-object v3, v5

    .line 312
    move v4, v6

    .line 314
    .end local v5    # "e\\4":Ljava/lang/Object;
    .end local v6    # "v\\4":I
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 315
    nop

    .end local v0    # "$i$f$maxByOrNull\\4\\237":I
    .end local v1    # "iterator\\4":Ljava/util/Iterator;
    .end local v2    # "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    .end local v3    # "maxElem\\4":Ljava/lang/Object;
    .end local v4    # "maxValue\\4":I
    :goto_2
    check-cast v3, Lcom/bcr/android/web/Bridge$Reply;

    .line 237
    return-object v3
.end method

.method public final mainUrl()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->mainFrameUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final tableReply(Ljava/util/List;)Lcom/bcr/android/web/Bridge$Reply;
    .locals 13
    .param p1, "replies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bcr/android/web/Bridge$Reply;",
            ">;)",
            "Lcom/bcr/android/web/Bridge$Reply;"
        }
    .end annotation

    const-string v0, "replies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 231
    nop

    .local v0, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$f$filter\\1\\231":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination\\2":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$f$filterTo\\2\\282":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\2":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/bcr/android/web/Bridge$Reply;

    .local v7, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v8, 0x0

    .line 231
    .local v8, "$i$a$-filter-Bridge$tableReply$1\\3\\283\\0":I
    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v9

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    const-string v12, "in_table"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_1

    move v9, v11

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    if-eqz v9, :cond_2

    move v10, v11

    .line 283
    .end local v7    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v8    # "$i$a$-filter-Bridge$tableReply$1\\3\\283\\0":I
    :cond_2
    if-eqz v10, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v6    # "element\\2":Ljava/lang/Object;
    :cond_3
    nop

    .end local v2    # "destination\\2":Ljava/util/Collection;
    .end local v3    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo\\2\\282":I
    check-cast v2, Ljava/util/List;

    .line 282
    nop

    .end local v0    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter\\1\\231":I
    check-cast v2, Ljava/lang/Iterable;

    .line 232
    nop

    .local v2, "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    const/4 v0, 0x0

    .line 285
    .local v0, "$i$f$maxByOrNull\\4\\232":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    .local v1, "iterator\\4":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 287
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, "maxElem\\4":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 289
    :cond_5
    move-object v4, v3

    check-cast v4, Lcom/bcr/android/web/Bridge$Reply;

    .local v4, "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v5, 0x0

    .line 232
    .local v5, "$i$a$-maxByOrNull-Bridge$tableReply$2\\5\\289\\0":I
    invoke-virtual {v4}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bcr/android/web/Bridge;->tableCount(Lorg/json/JSONObject;)I

    move-result v4

    .line 289
    .end local v4    # "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    .end local v5    # "$i$a$-maxByOrNull-Bridge$tableReply$2\\5\\289\\0":I
    nop

    .line 291
    .local v4, "maxValue\\4":I
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 292
    .local v5, "e\\4":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/bcr/android/web/Bridge$Reply;

    .local v6, "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v7, 0x0

    .line 232
    .local v7, "$i$a$-maxByOrNull-Bridge$tableReply$2\\6\\292\\0":I
    invoke-virtual {v6}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/bcr/android/web/Bridge;->tableCount(Lorg/json/JSONObject;)I

    move-result v6

    .line 292
    .end local v6    # "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    .end local v7    # "$i$a$-maxByOrNull-Bridge$tableReply$2\\6\\292\\0":I
    nop

    .line 293
    .local v6, "v\\4":I
    if-ge v4, v6, :cond_7

    .line 294
    move-object v3, v5

    .line 295
    move v4, v6

    .line 297
    .end local v5    # "e\\4":Ljava/lang/Object;
    .end local v6    # "v\\4":I
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 298
    nop

    .end local v0    # "$i$f$maxByOrNull\\4\\232":I
    .end local v1    # "iterator\\4":Ljava/util/Iterator;
    .end local v2    # "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    .end local v3    # "maxElem\\4":Ljava/lang/Object;
    .end local v4    # "maxValue\\4":I
    :goto_2
    check-cast v3, Lcom/bcr/android/web/Bridge$Reply;

    .line 232
    return-object v3
.end method

.method public final topId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bcr/android/web/Bridge;->topFrameId:Ljava/lang/String;

    return-object v0
.end method
