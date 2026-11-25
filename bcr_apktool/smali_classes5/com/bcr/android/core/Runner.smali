.class public final Lcom/bcr/android/core/Runner;
.super Ljava/lang/Object;
.source "Runner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bcr/android/core/Runner$Companion;,
        Lcom/bcr/android/core/Runner$Road;,
        Lcom/bcr/android/core/Runner$Status;,
        Lcom/bcr/android/core/Runner$TableScan;,
        Lcom/bcr/android/core/Runner$Tile;,
        Lcom/bcr/android/core/Runner$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runner.kt\ncom/bcr/android/core/Runner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1161:1\n1563#2:1162\n1634#2,3:1163\n1761#2,3:1166\n295#2,2:1170\n774#2:1172\n865#2,2:1173\n295#2,2:1175\n774#2:1177\n865#2,2:1178\n1999#2,14:1180\n1869#2,2:1194\n295#2,2:1196\n1869#2,2:1198\n295#2,2:1200\n295#2,2:1202\n1#3:1169\n*S KotlinDebug\n*F\n+ 1 Runner.kt\ncom/bcr/android/core/Runner\n*L\n188#1:1162\n188#1:1163,3\n215#1:1166,3\n243#1:1170,2\n302#1:1172\n302#1:1173,2\n452#1:1175,2\n617#1:1177\n617#1:1178,2\n618#1:1180,14\n710#1:1194,2\n725#1:1196,2\n877#1:1198,2\n979#1:1200,2\n981#1:1202,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008#\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 \u0085\u00012\u00020\u0001:\n\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010K\u001a\u00020\u000fJ\u0010\u0010L\u001a\u00020\u00072\u0008\u0008\u0002\u0010M\u001a\u00020\u001fJ\u0006\u0010N\u001a\u00020\u000fJ\u001a\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001f0P2\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020RJ\"\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001f0P2\u0006\u0010V\u001a\u00020R2\u0006\u0010W\u001a\u00020\u0015J\u0008\u0010X\u001a\u00020\u000fH\u0002J\u0008\u0010Y\u001a\u0004\u0018\u00010ZJ\u001c\u0010[\u001a\u0004\u0018\u00010Z2\u0006\u0010\\\u001a\u00020]2\u0008\u0008\u0002\u0010^\u001a\u00020\u000fH\u0002J\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020a0`J\u0016\u0010b\u001a\u0004\u0018\u00010a2\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020a0`J*\u0010d\u001a\u0004\u0018\u00010e2\n\u0008\u0002\u0010f\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010g\u001a\u0004\u0018\u00010\u001f2\u0008\u0008\u0002\u0010h\u001a\u00020CJ\u0008\u0010i\u001a\u00020\u0007H\u0002J\u0008\u0010j\u001a\u00020\u000fH\u0002J\n\u0010k\u001a\u0004\u0018\u00010ZH\u0002J\u0008\u0010l\u001a\u00020\u000fH\u0002J\u0010\u0010m\u001a\u00020\u00072\u0006\u0010n\u001a\u00020\u001fH\u0002J\u0008\u0010o\u001a\u00020\u0007H\u0002J\u0008\u0010p\u001a\u00020\u0007H\u0002J\n\u0010q\u001a\u0004\u0018\u00010rH\u0002J\u0008\u0010s\u001a\u00020\u0007H\u0002J\u0010\u0010t\u001a\u00020\u001f2\u0006\u0010u\u001a\u00020vH\u0002J\u001f\u0010w\u001a\u0004\u0018\u00010R2\u0006\u0010f\u001a\u00020\u001f2\u0006\u0010g\u001a\u00020\u001fH\u0002\u00a2\u0006\u0002\u0010xJ \u0010y\u001a\u0008\u0012\u0004\u0012\u00020\u00150`2\u0008\u0010z\u001a\u0004\u0018\u00010e2\u0006\u0010{\u001a\u00020RH\u0002J\"\u0010|\u001a\u0004\u0018\u00010\u001f2\u0006\u0010u\u001a\u00020v2\u0006\u0010g\u001a\u00020\u001f2\u0006\u0010}\u001a\u00020RH\u0002J\u001a\u0010~\u001a\u0004\u0018\u00010\u001f2\u0006\u0010u\u001a\u00020v2\u0006\u0010g\u001a\u00020\u001fH\u0002J\u0006\u0010\u007f\u001a\u00020\u0006J\t\u0010\u0080\u0001\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R\u001a\u0010\'\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010!\"\u0004\u0008)\u0010#R\u001a\u0010*\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0011\"\u0004\u0008,\u0010\u0013R\u001a\u0010-\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010!\"\u0004\u0008/\u0010#R\u001a\u00100\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010!\"\u0004\u00082\u0010#R\u001a\u00103\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0017\"\u0004\u00085\u0010\u0019R\u001a\u00106\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010!\"\u0004\u00088\u0010#R\u001a\u00109\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010\u0013R\u000e\u0010<\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082D\u00a2\u0006\u0002\n\u0000R,\u0010D\u001a\u0014\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020\u000f0EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010J\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lcom/bcr/android/core/Runner;",
        "",
        "bridge",
        "Lcom/bcr/android/web/Bridge;",
        "onUpdate",
        "Lkotlin/Function1;",
        "Lcom/bcr/android/core/Runner$Status;",
        "",
        "<init>",
        "(Lcom/bcr/android/web/Bridge;Lkotlin/jvm/functions/Function1;)V",
        "running",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "thread",
        "Ljava/lang/Thread;",
        "autoPlace",
        "",
        "getAutoPlace",
        "()Z",
        "setAutoPlace",
        "(Z)V",
        "clickDelayMs",
        "",
        "getClickDelayMs",
        "()I",
        "setClickDelayMs",
        "(I)V",
        "session",
        "Lcom/bcr/android/model/Session;",
        "getSession",
        "()Lcom/bcr/android/model/Session;",
        "liveTableName",
        "",
        "getLiveTableName",
        "()Ljava/lang/String;",
        "setLiveTableName",
        "(Ljava/lang/String;)V",
        "liveLetters",
        "getLiveLetters",
        "setLiveLetters",
        "liveTableId",
        "getLiveTableId",
        "setLiveTableId",
        "liveInTable",
        "getLiveInTable",
        "setLiveInTable",
        "liveWallet",
        "getLiveWallet",
        "setLiveWallet",
        "lastAction",
        "getLastAction",
        "setLastAction",
        "frames",
        "getFrames",
        "setFrames",
        "readNote",
        "getReadNote",
        "setReadNote",
        "busy",
        "getBusy",
        "setBusy",
        "lastPlaceNote",
        "lastError",
        "stableLetters",
        "stableCount",
        "planClaim",
        "entered",
        "pollMs",
        "",
        "onTapRequested",
        "Lkotlin/Function2;",
        "",
        "getOnTapRequested",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnTapRequested",
        "(Lkotlin/jvm/functions/Function2;)V",
        "start",
        "stop",
        "reason",
        "isRunning",
        "addCapital",
        "Lkotlin/Pair;",
        "value",
        "",
        "resetSession",
        "capital",
        "applyConfig",
        "baseStake",
        "hands",
        "inTableByUrl",
        "scanTable",
        "Lcom/bcr/android/core/Runner$TableScan;",
        "fromReply",
        "reply",
        "Lcom/bcr/android/web/Bridge$Reply;",
        "allowEmptyRoad",
        "lobbyTiles",
        "",
        "Lcom/bcr/android/core/Runner$Tile;",
        "pickStandardTable",
        "tiles",
        "readChips",
        "Lorg/json/JSONObject;",
        "side",
        "targetFrameId",
        "timeoutMs",
        "loop",
        "enter",
        "waitForTable",
        "autoEnterTable",
        "fail",
        "message",
        "tick",
        "resolveStalePending",
        "readRoad",
        "Lcom/bcr/android/core/Runner$Road;",
        "placeIfNeeded",
        "tryPlace",
        "plan",
        "Lcom/bcr/android/model/Plan;",
        "readPlacedAmount",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;",
        "chipDenominations",
        "chips",
        "selectedUnit",
        "completeRemainingStake",
        "startingAmount",
        "retryWithTouch",
        "status",
        "publish",
        "TableScan",
        "Tile",
        "Road",
        "Status",
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
.field public static final BASE_UNIT:D = 20.0

.field private static final BET_NOT_READY_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPITAL:D = 6000.0

.field public static final Companion:Lcom/bcr/android/core/Runner$Companion;

.field private static final FATAL_PLACE_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PENDING_GRACE_MS:J = 0x2ee0L

.field private static final PLACE_INTERRUPTED:Ljava/lang/String; = "bet_interrupted"

.field private static final PLACE_NOT_READY:Ljava/lang/String; = "not_ready"

.field private static final PLACE_OK:Ljava/lang/String; = "ok"

.field private static final PLACE_SESSION_EXPIRED:Ljava/lang/String; = "session_expired"


# instance fields
.field private volatile autoPlace:Z

.field private final bridge:Lcom/bcr/android/web/Bridge;

.field private volatile busy:Z

.field private volatile clickDelayMs:I

.field private entered:Z

.field private volatile frames:I

.field private volatile lastAction:Ljava/lang/String;

.field private volatile lastError:Ljava/lang/String;

.field private volatile lastPlaceNote:Ljava/lang/String;

.field private volatile liveInTable:Z

.field private volatile liveLetters:Ljava/lang/String;

.field private volatile liveTableId:Ljava/lang/String;

.field private volatile liveTableName:Ljava/lang/String;

.field private volatile liveWallet:Ljava/lang/String;

.field private onTapRequested:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpdate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/bcr/android/core/Runner$Status;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final planClaim:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pollMs:J

.field private volatile readNote:Ljava/lang/String;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final session:Lcom/bcr/android/model/Session;

.field private stableCount:I

.field private stableLetters:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bcr/android/core/Runner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bcr/android/core/Runner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bcr/android/core/Runner;->Companion:Lcom/bcr/android/core/Runner$Companion;

    .line 1133
    nop

    .line 1134
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "betting_closed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1135
    const-string v1, "chip_not_selected"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1134
    nop

    .line 1136
    const-string v1, "no_bet_spot"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 1134
    nop

    .line 1137
    const-string v1, "no_table_view"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 1134
    nop

    .line 1138
    const-string v1, "no_targets"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 1134
    nop

    .line 1139
    const-string v1, "table_not_clear"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 1134
    nop

    .line 1133
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bcr/android/core/Runner;->BET_NOT_READY_ERRORS:Ljava/util/Set;

    .line 1153
    nop

    .line 1154
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "over_table_limit"

    aput-object v1, v0, v2

    .line 1155
    const-string v1, "bad_side"

    aput-object v1, v0, v3

    .line 1154
    nop

    .line 1156
    const-string v1, "bad_amount"

    aput-object v1, v0, v4

    .line 1154
    nop

    .line 1157
    const-string v1, "unrepresentable_amount"

    aput-object v1, v0, v5

    .line 1154
    nop

    .line 1153
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bcr/android/core/Runner;->FATAL_PLACE_ERRORS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/bcr/android/web/Bridge;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1, "bridge"    # Lcom/bcr/android/web/Bridge;
    .param p2, "onUpdate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bcr/android/web/Bridge;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/bcr/android/core/Runner$Status;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 92
    iput-object p2, p0, Lcom/bcr/android/core/Runner;->onUpdate:Lkotlin/jvm/functions/Function1;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bcr/android/core/Runner;->autoPlace:Z

    .line 104
    const/16 v0, 0x28

    iput v0, p0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    .line 106
    new-instance v2, Lcom/bcr/android/model/Session;

    new-instance v3, Lcom/bcr/android/model/MoneyBook;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide v4, 0x40b7700000000000L    # 6000.0

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/bcr/android/model/MoneyBook;-><init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v10, 0x3e

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/bcr/android/model/Session;-><init>(Lcom/bcr/android/model/MoneyBook;Ljava/util/List;DIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->lastAction:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->stableLetters:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bcr/android/core/Runner;->planClaim:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/bcr/android/core/Runner;->pollMs:J

    .line 129
    new-instance v0, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/bcr/android/core/Runner;->onTapRequested:Lkotlin/jvm/functions/Function2;

    .line 90
    return-void
.end method

.method private final autoEnterTable()Z
    .locals 21

    .line 438
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_f

    move v3, v2

    .local v3, "attempt\\1":I
    const/4 v4, 0x0

    .line 439
    .local v4, "$i$a$-repeat-Runner$autoEnterTable$1\\1\\438\\0":I
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner;->lobbyTiles()Ljava/util/List;

    move-result-object v5

    .line 440
    .local v5, "tiles\\1":Ljava/util/List;
    invoke-virtual {v0, v5}, Lcom/bcr/android/core/Runner;->pickStandardTable(Ljava/util/List;)Lcom/bcr/android/core/Runner$Tile;

    move-result-object v6

    .line 441
    .local v6, "pick\\1":Lcom/bcr/android/core/Runner$Tile;
    if-nez v6, :cond_1

    .line 442
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 444
    :cond_0
    const-string v2, "S\u1ea3nh ch\u1ec9 c\u00f3 b\u00e0n \u0111\u1eb7c bi\u1ec7t ho\u1eb7c kh\u00f4ng ph\u1ea3i Baccarat chu\u1ea9n; kh\u00f4ng t\u1ef1 v\u00e0o."

    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 445
    return v1

    .line 447
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "id"

    invoke-virtual {v6}, Lcom/bcr/android/core/Runner$Tile;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    .line 448
    .local v12, "args\\1":Lorg/json/JSONObject;
    iget-object v10, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 449
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v17, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda7;

    invoke-direct/range {v17 .. v17}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda7;-><init>()V

    .line 448
    const/16 v19, 0x20

    const/16 v20, 0x0

    const-string v11, "open_tile"

    const-wide/16 v13, 0x1770

    const-wide/16 v15, 0x96

    const/16 v18, 0x0

    invoke-static/range {v10 .. v20}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 452
    .local v7, "replies\\1":Ljava/util/List;
    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$firstOrNull\\2":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1175
    .local v9, "$i$f$firstOrNull\\2\\452":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v13, "ok"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element\\2":Ljava/lang/Object;
    move-object/from16 v16, v11

    check-cast v16, Lcom/bcr/android/web/Bridge$Reply;

    .local v16, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/16 v17, 0x0

    .line 452
    .local v17, "$i$a$-firstOrNull-Runner$autoEnterTable$1$result$1\\3\\1175\\1":I
    move/from16 v18, v1

    invoke-virtual/range {v16 .. v16}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v15, :cond_2

    move v1, v15

    goto :goto_2

    :cond_2
    move/from16 v1, v18

    .line 1175
    .end local v16    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v17    # "$i$a$-firstOrNull-Runner$autoEnterTable$1$result$1\\3\\1175\\1":I
    :goto_2
    if-nez v1, :cond_4

    move/from16 v1, v18

    goto :goto_1

    .line 1176
    .end local v11    # "element\\2":Ljava/lang/Object;
    :cond_3
    move/from16 v18, v1

    move-object v11, v14

    .line 452
    .end local v8    # "$this$firstOrNull\\2":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull\\2\\452":I
    :cond_4
    check-cast v11, Lcom/bcr/android/web/Bridge$Reply;

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v14

    .line 453
    .local v14, "result\\1":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v6}, Lcom/bcr/android/core/Runner$Tile;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0110ang m\u1edf b\u00e0n "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\u2026"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 454
    invoke-direct {v0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 455
    const-wide/16 v8, 0x2bc

    const/16 v1, 0xc

    if-eqz v14, :cond_9

    const-string v10, "clicked"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 457
    move/from16 v10, v18

    :goto_3
    if-ge v10, v1, :cond_8

    move v11, v10

    .local v11, "it\\4":I
    const/4 v13, 0x0

    .line 458
    .local v13, "$i$a$-repeat-Runner$autoEnterTable$1$1\\4\\457\\1":I
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 459
    move-wide/from16 v16, v8

    iget-object v8, v0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_6

    return v18

    .line 460
    :cond_6
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner;->scanTable()Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v8

    if-eqz v8, :cond_7

    return v15

    .line 461
    :cond_7
    nop

    .line 457
    .end local v11    # "it\\4":I
    .end local v13    # "$i$a$-repeat-Runner$autoEnterTable$1$1\\4\\457\\1":I
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v16

    goto :goto_3

    :cond_8
    move v13, v2

    goto :goto_5

    .line 455
    :cond_9
    move-wide/from16 v16, v8

    .line 462
    if-eqz v14, :cond_d

    .line 464
    const-string v8, "abs"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 465
    .local v8, "abs\\1":Lorg/json/JSONObject;
    if-eqz v8, :cond_c

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 466
    iget-object v9, v0, Lcom/bcr/android/core/Runner;->onTapRequested:Lkotlin/jvm/functions/Function2;

    const-string v10, "x"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "y"

    move v13, v2

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v9, v10, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    move/from16 v1, v18

    :goto_4
    const/16 v2, 0xc

    if-ge v1, v2, :cond_e

    move v9, v1

    .local v9, "it\\5":I
    const/4 v10, 0x0

    .line 468
    .local v10, "$i$a$-repeat-Runner$autoEnterTable$1$2\\5\\467\\1":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 469
    iget-object v11, v0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_a

    return v18

    .line 470
    :cond_a
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner;->scanTable()Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v11

    if-eqz v11, :cond_b

    return v15

    .line 471
    :cond_b
    nop

    .line 467
    .end local v9    # "it\\5":I
    .end local v10    # "$i$a$-repeat-Runner$autoEnterTable$1$2\\5\\467\\1":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 465
    :cond_c
    move v13, v2

    goto :goto_5

    .line 462
    .end local v8    # "abs\\1":Lorg/json/JSONObject;
    :cond_d
    move v13, v2

    .line 474
    :cond_e
    :goto_5
    add-int/lit8 v1, v3, 0x1

    int-to-long v1, v1

    const-wide/16 v8, 0x258

    mul-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 475
    nop

    .line 438
    .end local v3    # "attempt\\1":I
    .end local v4    # "$i$a$-repeat-Runner$autoEnterTable$1\\1\\438\\0":I
    .end local v5    # "tiles\\1":Ljava/util/List;
    .end local v6    # "pick\\1":Lcom/bcr/android/core/Runner$Tile;
    .end local v7    # "replies\\1":Ljava/util/List;
    .end local v12    # "args\\1":Lorg/json/JSONObject;
    .end local v14    # "result\\1":Lorg/json/JSONObject;
    add-int/lit8 v2, v13, 0x1

    move/from16 v1, v18

    goto/16 :goto_0

    .line 476
    :cond_f
    move/from16 v18, v1

    return v18
.end method

.method static final autoEnterTable$lambda$21$lambda$17(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 4
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "ok"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private final chipDenominations(Lorg/json/JSONObject;D)Ljava/util/List;
    .locals 7
    .param p1, "chips"    # Lorg/json/JSONObject;
    .param p2, "selectedUnit"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "D)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 811
    .local v0, "values":Ljava/util/List;
    if-eqz p1, :cond_0

    const-string v1, "denominations"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 812
    .local v1, "denominations":Lorg/json/JSONArray;
    :goto_0
    if-eqz v1, :cond_2

    .line 813
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 814
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    .line 815
    .local v4, "value":I
    if-lez v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v4    # "value":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 818
    .end local v2    # "i":I
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    const-wide/16 v5, 0x0

    cmpl-double v2, p2, v5

    if-lez v2, :cond_5

    .line 819
    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, p2, v5

    if-gtz v2, :cond_5

    double-to-int v2, p2

    int-to-double v5, v2

    cmpg-double v2, p2, v5

    if-nez v2, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    .line 821
    double-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_5
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private final completeRemainingStake(Lcom/bcr/android/model/Plan;Ljava/lang/String;D)Ljava/lang/String;
    .locals 43
    .param p1, "plan"    # Lcom/bcr/android/model/Plan;
    .param p2, "targetFrameId"    # Ljava/lang/String;
    .param p3, "startingAmount"    # D

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    const-wide/16 v2, 0x0

    .local v2, "amount":D
    move-wide/from16 v2, p3

    .line 832
    move-wide v12, v2

    const/4 v14, 0x0

    .end local v2    # "amount":D
    .local v12, "amount":D
    :goto_0
    const-string v15, " / "

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-string v2, "bet_interrupted"

    const/4 v3, 0x2

    if-ge v14, v3, :cond_21

    move/from16 v19, v14

    .local v19, "it\\1":I
    const/16 v20, 0x0

    .line 833
    .local v20, "$i$a$-repeat-Runner$completeRemainingStake$1\\1\\832\\0":I
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 834
    const-string v3, "\u0110\u00e3 d\u1eebng theo y\u00eau c\u1ea7u; kh\u00f4ng ti\u1ebfp t\u1ee5c b\u00f9 chip."

    iput-object v3, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 835
    cmpl-double v3, v12, v16

    if-lez v3, :cond_0

    move-object/from16 v18, v2

    :cond_0
    return-object v18

    .line 837
    :cond_1
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v3

    invoke-static {v12, v13, v3, v4}, Lcom/bcr/android/core/RunnerKt;->isStakeConfirmed(DD)Z

    move-result v3

    const-string v21, "ok"

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 838
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    sget-object v3, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0110\u00e3 x\u00e1c nh\u1eadn \u0111\u1ee7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " VN2 tr\u00ean \u00f4."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 839
    return-object v21

    .line 841
    :cond_2
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v5

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v5, v5, v22

    cmpl-double v3, v12, v5

    if-lez v3, :cond_3

    .line 842
    sget-object v3, Lcom/bcr/android/model/Method;->INSTANCE:Lcom/bcr/android/model/Method;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bcr/android/model/Method;->sideName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u00d4 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " v\u01b0\u1ee3t m\u1ee9c c\u01b0\u1ee3c d\u1ef1 ki\u1ebfn; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 843
    return-object v2

    .line 846
    :cond_3
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x2bc

    invoke-virtual {v0, v3, v10, v5, v6}, Lcom/bcr/android/core/Runner;->readChips(Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 847
    .local v3, "chips\\1":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    const-string v5, "betting"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object/from16 v5, v18

    .line 848
    .local v5, "ready\\1":Lorg/json/JSONObject;
    :goto_1
    if-eqz v5, :cond_5

    const-string v6, "ready"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    const-string v24, "not_ready"

    const-string v25, ""

    const-string v7, "note"

    const-string v8, "session_expired"

    if-nez v6, :cond_c

    .line 849
    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object/from16 v4, v18

    :goto_3
    if-eqz v4, :cond_7

    move-object/from16 v25, v4

    :cond_7
    check-cast v25, Ljava/lang/CharSequence;

    invoke-static/range {v25 .. v25}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 850
    .local v4, "$i$a$-ifBlank-Runner$completeRemainingStake$1$1\\2\\849\\1":I
    nop

    .line 849
    .end local v4    # "$i$a$-ifBlank-Runner$completeRemainingStake$1$1\\2\\849\\1":I
    const-string v25, "C\u1eeda c\u01b0\u1ee3c/chip kh\u00f4ng c\u00f2n s\u1eb5n s\u00e0ng; \u0111\u00e3 d\u1eebng ph\u1ea7n c\u01b0\u1ee3c c\u00f2n thi\u1ebfu."

    :cond_8
    move-object/from16 v4, v25

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 852
    cmpl-double v4, v12, v16

    if-lez v4, :cond_9

    .line 853
    goto :goto_4

    .line 854
    :cond_9
    if-eqz v5, :cond_a

    const-string v2, "reason"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_a
    move-object/from16 v2, v18

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 855
    move-object v2, v8

    goto :goto_4

    .line 857
    :cond_b
    move-object/from16 v2, v24

    .line 852
    :goto_4
    return-object v2

    .line 861
    :cond_c
    move-wide/from16 v26, v12

    .line 862
    .local v26, "before\\1":D
    nop

    .line 863
    nop

    .line 862
    if-eqz v3, :cond_10

    const-string v6, "selected_chip"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 863
    nop

    .line 862
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 863
    move-object v9, v6

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v28

    .line 1169
    .local v28, "it\\3":D
    const/4 v9, 0x0

    .line 863
    .local v9, "$i$a$-takeIf-Runner$completeRemainingStake$1$selectedUnit$1\\3\\863\\1":I
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_d

    move/from16 v30, v4

    goto :goto_5

    :cond_d
    const/16 v30, 0x0

    :goto_5
    if-eqz v30, :cond_e

    cmpl-double v30, v28, v16

    if-lez v30, :cond_e

    move v9, v4

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    .end local v9    # "$i$a$-takeIf-Runner$completeRemainingStake$1$selectedUnit$1\\3\\863\\1":I
    .end local v28    # "it\\3":D
    :goto_6
    if-nez v9, :cond_f

    move-object/from16 v6, v18

    .line 862
    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    goto :goto_7

    .line 863
    :cond_10
    const-wide/high16 v28, 0x4034000000000000L    # 20.0

    .line 862
    :goto_7
    move-wide/from16 v30, v28

    .line 865
    .local v30, "selectedUnit\\1":D
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v28

    move-object v6, v5

    .end local v5    # "ready\\1":Lorg/json/JSONObject;
    .local v6, "ready\\1":Lorg/json/JSONObject;
    sub-double v4, v28, v12

    .line 866
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-wide/from16 v7, v30

    .end local v30    # "selectedUnit\\1":D
    .local v7, "selectedUnit\\1":D
    invoke-direct {v0, v3, v7, v8}, Lcom/bcr/android/core/Runner;->chipDenominations(Lorg/json/JSONObject;D)Ljava/util/List;

    move-result-object v9

    .line 864
    invoke-static {v4, v5, v9}, Lcom/bcr/android/core/RunnerKt;->minimumChipPlan(DLjava/util/List;)Ljava/util/List;

    move-result-object v31

    .line 868
    .local v31, "chipPlan\\1":Ljava/util/List;
    const-string v4, " VN2."

    if-nez v31, :cond_11

    .line 869
    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v14

    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Kh\u00f4ng c\u00f2n t\u1ed5 h\u1ee3p chip \u0111\u1ec3 b\u00f9 ch\u00ednh x\u00e1c "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 870
    return-object v2

    .line 873
    :cond_11
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v32

    move-wide/from16 v34, v12

    .end local v12    # "amount":D
    .local v34, "amount":D
    sub-double v11, v32, v34

    .line 874
    nop

    .line 875
    iget v5, v0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    .line 872
    invoke-static {v11, v12, v7, v8, v5}, Lcom/bcr/android/core/RunnerKt;->estimatePlaceTimeoutMs(DDI)J

    move-result-wide v11

    .line 877
    .local v11, "placeTimeoutMs\\1":J
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v9, v5

    .line 1169
    .local v9, "$this$completeRemainingStake_u24lambda_u2448_u24lambda_u2442\\4":Lorg/json/JSONArray;
    const/16 v32, 0x0

    .line 877
    .local v32, "$i$a$-apply-Runner$completeRemainingStake$1$chipPlanJson$1\\4\\877\\1":I
    move-object/from16 v33, v31

    check-cast v33, Ljava/lang/Iterable;

    .local v33, "$this$forEach\\5":Ljava/lang/Iterable;
    const/16 v36, 0x0

    .line 1198
    .local v36, "$i$f$forEach\\5\\877":I
    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_12

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    .local v38, "element\\5":Ljava/lang/Object;
    move-object/from16 v39, v38

    check-cast v39, Ljava/lang/Number;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "it\\6":I
    const/16 v39, 0x0

    .line 877
    .local v39, "$i$a$-forEach-Runner$completeRemainingStake$1$chipPlanJson$1$1\\6\\1198\\4":I
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1198
    .end local v13    # "it\\6":I
    .end local v39    # "$i$a$-forEach-Runner$completeRemainingStake$1$chipPlanJson$1$1\\6\\1198\\4":I
    nop

    .end local v38    # "element\\5":Ljava/lang/Object;
    goto :goto_8

    .line 1199
    :cond_12
    nop

    .line 877
    .end local v33    # "$this$forEach\\5":Ljava/lang/Iterable;
    .end local v36    # "$i$f$forEach\\5\\877":I
    nop

    .end local v9    # "$this$completeRemainingStake_u24lambda_u2448_u24lambda_u2442\\4":Lorg/json/JSONArray;
    .end local v32    # "$i$a$-apply-Runner$completeRemainingStake$1$chipPlanJson$1\\4\\877\\1":I
    move-object v13, v5

    .line 878
    .local v13, "chipPlanJson\\1":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 879
    const-string v9, "side"

    move-object/from16 v32, v2

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 880
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v36

    move-object v5, v3

    move-object v9, v4

    .end local v3    # "chips\\1":Lorg/json/JSONObject;
    .local v5, "chips\\1":Lorg/json/JSONObject;
    sub-double v3, v36, v34

    move-object/from16 v33, v5

    .end local v5    # "chips\\1":Lorg/json/JSONObject;
    .local v33, "chips\\1":Lorg/json/JSONObject;
    const-string v5, "amount"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v2

    .line 881
    const-string v3, "chipPlan"

    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 882
    const-string v3, "clickDelayMs"

    iget v4, v0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 883
    const-string v3, "waitMs"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 884
    const-string v3, "placeTimeoutMs"

    invoke-virtual {v2, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    .line 885
    const-string v3, "requireClear"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 878
    nop

    .line 886
    .local v2, "args\\1":Lorg/json/JSONObject;
    move/from16 v40, v4

    move-object v4, v2

    .end local v2    # "args\\1":Lorg/json/JSONObject;
    .local v4, "args\\1":Lorg/json/JSONObject;
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 887
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v36, 0x5dc

    add-long v36, v11, v36

    move-object v3, v9

    new-instance v9, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda2;-><init>()V

    .line 889
    nop

    .line 886
    move-object v5, v3

    const-string v3, "place"

    move-wide/from16 v38, v7

    .end local v7    # "selectedUnit\\1":D
    .local v38, "selectedUnit\\1":D
    const-wide/16 v7, 0x50

    move-wide/from16 v41, v11

    move/from16 v30, v14

    move-object/from16 v14, v29

    move-object/from16 v11, v32

    move-object v12, v5

    move-object/from16 v29, v13

    move-object/from16 v32, v28

    const/4 v13, 0x1

    move-object/from16 v28, v6

    move-wide/from16 v5, v36

    .end local v6    # "ready\\1":Lorg/json/JSONObject;
    .end local v11    # "placeTimeoutMs\\1":J
    .end local v13    # "chipPlanJson\\1":Lorg/json/JSONArray;
    .local v28, "ready\\1":Lorg/json/JSONObject;
    .local v29, "chipPlanJson\\1":Lorg/json/JSONArray;
    .local v41, "placeTimeoutMs\\1":J
    invoke-virtual/range {v2 .. v10}, Lcom/bcr/android/web/Bridge;->call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 891
    .local v2, "replies\\1":Ljava/util/List;
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v10}, Lcom/bcr/android/core/Runner;->readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 892
    .local v3, "nextAmount\\1":Ljava/lang/Double;
    if-nez v3, :cond_13

    .line 893
    const-string v5, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c s\u1ed1 chip sau l\u1ea7n th\u1eed b\u00f9; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra b\u00e0n."

    iput-object v5, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 894
    return-object v11

    .line 896
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 897
    .end local v34    # "amount":D
    .local v5, "amount":D
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/bcr/android/core/RunnerKt;->isStakeConfirmed(DD)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 898
    iget-object v7, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 899
    nop

    .line 900
    sget-object v8, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u0110\u00e3 b\u00f9 v\u00e0 x\u00e1c nh\u1eadn \u0111\u1ee7 "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 901
    nop

    .line 898
    invoke-virtual {v7, v13, v8, v1}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 903
    return-object v21

    .line 905
    :cond_14
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v7

    add-double v7, v7, v22

    cmpl-double v7, v5, v7

    if-lez v7, :cond_15

    .line 906
    const-string v7, "\u00d4 c\u01b0\u1ee3c \u0111\u00e3 v\u01b0\u1ee3t m\u1ee9c d\u1ef1 ki\u1ebfn; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra."

    iput-object v7, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 907
    return-object v11

    .line 913
    :cond_15
    nop

    .line 910
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v7

    new-instance v8, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda3;-><init>()V

    .line 911
    invoke-static {v7, v8}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v7

    .line 912
    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_16

    move-object/from16 v25, v7

    .line 913
    :cond_16
    nop

    .line 910
    move-object/from16 v7, v25

    .line 914
    .local v7, "reason\\1":Ljava/lang/String;
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    sget-object v8, Lcom/bcr/android/core/Runner;->BET_NOT_READY_ERRORS:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 915
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_9

    .line 928
    :cond_17
    add-double v22, v26, v22

    cmpg-double v8, v5, v22

    if-gtz v8, :cond_18

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 929
    :cond_18
    nop

    .line 832
    .end local v2    # "replies\\1":Ljava/util/List;
    .end local v3    # "nextAmount\\1":Ljava/lang/Double;
    .end local v4    # "args\\1":Lorg/json/JSONObject;
    .end local v7    # "reason\\1":Ljava/lang/String;
    .end local v19    # "it\\1":I
    .end local v20    # "$i$a$-repeat-Runner$completeRemainingStake$1\\1\\832\\0":I
    .end local v26    # "before\\1":D
    .end local v28    # "ready\\1":Lorg/json/JSONObject;
    .end local v29    # "chipPlanJson\\1":Lorg/json/JSONArray;
    .end local v31    # "chipPlan\\1":Ljava/util/List;
    .end local v33    # "chips\\1":Lorg/json/JSONObject;
    .end local v38    # "selectedUnit\\1":D
    .end local v41    # "placeTimeoutMs\\1":J
    add-int/lit8 v14, v30, 0x1

    move-wide v12, v5

    goto/16 :goto_0

    .line 917
    .restart local v2    # "replies\\1":Ljava/util/List;
    .restart local v3    # "nextAmount\\1":Ljava/lang/Double;
    .restart local v4    # "args\\1":Lorg/json/JSONObject;
    .restart local v7    # "reason\\1":Ljava/lang/String;
    .restart local v19    # "it\\1":I
    .restart local v20    # "$i$a$-repeat-Runner$completeRemainingStake$1\\1\\832\\0":I
    .restart local v26    # "before\\1":D
    .restart local v28    # "ready\\1":Lorg/json/JSONObject;
    .restart local v29    # "chipPlanJson\\1":Lorg/json/JSONArray;
    .restart local v31    # "chipPlan\\1":Ljava/util/List;
    .restart local v33    # "chips\\1":Lorg/json/JSONObject;
    .restart local v38    # "selectedUnit\\1":D
    .restart local v41    # "placeTimeoutMs\\1":J
    :cond_19
    :goto_9
    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bcr/android/web/Bridge$Reply;

    .local v9, "it\\7":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v12, 0x0

    .line 918
    .local v12, "$i$a$-firstNotNullOfOrNull-Runner$completeRemainingStake$1$2\\7\\917\\1":I
    invoke-virtual {v9}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_1a

    move-object/from16 v15, v32

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1b

    move-object/from16 v21, v13

    .line 1169
    .local v21, "p0\\8":Ljava/lang/String;
    const/16 v22, 0x0

    .line 918
    .local v22, "$i$a$-takeIf-Runner$completeRemainingStake$1$2$1\\8\\918\\7":I
    move-object/from16 v23, v21

    check-cast v23, Ljava/lang/CharSequence;

    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v23

    .end local v21    # "p0\\8":Ljava/lang/String;
    .end local v22    # "$i$a$-takeIf-Runner$completeRemainingStake$1$2$1\\8\\918\\7":I
    if-nez v23, :cond_1b

    goto :goto_b

    :cond_1a
    move-object/from16 v15, v32

    :cond_1b
    move-object/from16 v13, v18

    .line 917
    .end local v9    # "it\\7":Lcom/bcr/android/web/Bridge$Reply;
    .end local v12    # "$i$a$-firstNotNullOfOrNull-Runner$completeRemainingStake$1$2\\7\\917\\1":I
    :goto_b
    if-eqz v13, :cond_1c

    move-object/from16 v18, v13

    goto :goto_c

    :cond_1c
    move-object/from16 v32, v15

    goto :goto_a

    :cond_1d
    :goto_c
    if-nez v18, :cond_1e

    .line 919
    const-string v18, "C\u1eeda c\u01b0\u1ee3c \u0111\u00f3ng tr\u01b0\u1edbc khi x\u00e1c nh\u1eadn \u0111\u1ee7 m\u1ee9c c\u01b0\u1ee3c."

    move-object/from16 v8, v18

    goto :goto_d

    .line 917
    :cond_1e
    move-object/from16 v8, v18

    :goto_d
    iput-object v8, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 920
    cmpl-double v8, v5, v16

    if-gtz v8, :cond_20

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 922
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 923
    move-object v11, v14

    goto :goto_e

    .line 925
    :cond_1f
    move-object/from16 v11, v24

    goto :goto_e

    .line 921
    :cond_20
    nop

    .line 920
    :goto_e
    return-object v11

    .line 931
    .end local v2    # "replies\\1":Ljava/util/List;
    .end local v3    # "nextAmount\\1":Ljava/lang/Double;
    .end local v4    # "args\\1":Lorg/json/JSONObject;
    .end local v5    # "amount":D
    .end local v7    # "reason\\1":Ljava/lang/String;
    .end local v19    # "it\\1":I
    .end local v20    # "$i$a$-repeat-Runner$completeRemainingStake$1\\1\\832\\0":I
    .end local v26    # "before\\1":D
    .end local v28    # "ready\\1":Lorg/json/JSONObject;
    .end local v29    # "chipPlanJson\\1":Lorg/json/JSONArray;
    .end local v31    # "chipPlan\\1":Ljava/util/List;
    .end local v33    # "chips\\1":Lorg/json/JSONObject;
    .end local v38    # "selectedUnit\\1":D
    .end local v41    # "placeTimeoutMs\\1":J
    .local v12, "amount":D
    :cond_21
    move-object v11, v2

    move-wide/from16 v34, v12

    .end local v12    # "amount":D
    .restart local v34    # "amount":D
    cmpl-double v2, v34, v16

    if-lez v2, :cond_22

    .line 932
    invoke-direct/range {p0 .. p2}, Lcom/bcr/android/core/Runner;->retryWithTouch(Lcom/bcr/android/model/Plan;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, "touchResult":Ljava/lang/String;
    if-eqz v2, :cond_22

    return-object v2

    .line 935
    .end local v2    # "touchResult":Ljava/lang/String;
    :cond_22
    cmpl-double v2, v34, v16

    if-lez v2, :cond_23

    .line 936
    sget-object v2, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M\u1edbi x\u00e1c nh\u1eadn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VN2; ch\u01b0a \u0111\u1ee7 b\u1eadc, \u0111\u00e3 d\u1eebng \u0111\u1ec3 kh\u00f4ng t\u00ednh sai k\u1ebft qu\u1ea3."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 939
    :cond_23
    const-string v2, "Ch\u01b0a x\u00e1c nh\u1eadn chip l\u00ean \u00f4 c\u01b0\u1ee3c; s\u1ebd th\u1eed l\u1ea1i trong c\u1eeda c\u01b0\u1ee3c."

    .line 935
    :goto_f
    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 941
    cmpl-double v2, v34, v16

    if-lez v2, :cond_24

    move-object/from16 v18, v11

    :cond_24
    return-object v18
.end method

.method static final completeRemainingStake$lambda$48$lambda$43(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 3
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static final completeRemainingStake$lambda$48$lambda$45(Lcom/bcr/android/web/Bridge$Reply;)Ljava/lang/String;
    .locals 5
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "reason"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1169
    .local v2, "p0\\1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 911
    .local v3, "$i$a$-takeIf-Runner$completeRemainingStake$1$reason$1$1\\1\\911\\0":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v2    # "p0\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-Runner$completeRemainingStake$1$reason$1$1\\1\\911\\0":I
    if-nez v4, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private final enter()Z
    .locals 7

    .line 372
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->waitForTable()Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v0

    .line 373
    .local v0, "scan":Lcom/bcr/android/core/Runner$TableScan;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 374
    const-string v2, "Ch\u01b0a \u0111\u1ecdc \u0111\u01b0\u1ee3c b\u00e0n sau 45 gi\u00e2y \u2014 tool ti\u1ebfp t\u1ee5c t\u1ef1 d\u00f2 l\u1ea1i."

    iput-object v2, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 376
    return v1

    .line 378
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    .line 379
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getTableId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    .line 380
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    .line 381
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    .line 384
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getTableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/bcr/android/model/Session;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->start()Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v2}, Lcom/bcr/android/model/Session;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bcr/android/core/Runner;->fail(Ljava/lang/String;)V

    .line 387
    return v1

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->beginFirstHand()Lcom/bcr/android/model/Step;

    .line 391
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->stableLetters:Ljava/lang/String;

    .line 392
    iput v1, p0, Lcom/bcr/android/core/Runner;->stableCount:I

    .line 393
    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->entered:Z

    .line 394
    const-string v1, ""

    iput-object v1, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 397
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 398
    return v2
.end method

.method private final fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 480
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0, p1}, Lcom/bcr/android/model/Session;->pause(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    return-void
.end method

.method private final fromReply(Lcom/bcr/android/web/Bridge$Reply;Z)Lcom/bcr/android/core/Runner$TableScan;
    .locals 11
    .param p1, "reply"    # Lcom/bcr/android/web/Bridge$Reply;
    .param p2, "allowEmptyRoad"    # Z

    .line 254
    invoke-virtual {p1}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 255
    .local v0, "result":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "page"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 256
    .local v2, "page":Lorg/json/JSONObject;
    const-string v3, "tables"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 257
    .local v3, "tables":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 258
    .local v4, "count":I
    :goto_0
    if-nez v4, :cond_2

    if-nez p2, :cond_2

    return-object v1

    .line 260
    :cond_2
    if-lez v4, :cond_3

    if-eqz v3, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 261
    .local v5, "row":Lorg/json/JSONObject;
    :goto_1
    const-string v6, "table_id"

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v1

    :goto_2
    const-string v8, ""

    if-nez v7, :cond_5

    move-object v7, v8

    :cond_5
    check-cast v7, Ljava/lang/CharSequence;

    .line 262
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1169
    const/4 v7, 0x0

    .line 262
    .local v7, "$i$a$-ifBlank-Runner$fromReply$tableId$1\\1\\262\\0":I
    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v8

    .end local v7    # "$i$a$-ifBlank-Runner$fromReply$tableId$1\\1\\262\\0":I
    :cond_7
    :goto_3
    check-cast v7, Ljava/lang/String;

    .line 261
    nop

    .line 263
    .local v7, "tableId":Ljava/lang/String;
    move-object v6, v7

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    return-object v1

    .line 264
    :cond_8
    if-eqz v5, :cond_9

    const-string v6, "label"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v1

    :goto_4
    if-nez v6, :cond_a

    move-object v6, v8

    :cond_a
    check-cast v6, Ljava/lang/CharSequence;

    .line 265
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1169
    const/4 v6, 0x0

    .line 265
    .local v6, "$i$a$-ifBlank-Runner$fromReply$name$1\\2\\265\\0":I
    iget-object v9, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1169
    const/4 v9, 0x0

    .line 265
    .local v9, "$i$a$-ifBlank-Runner$fromReply$name$1$1\\3\\265\\2":I
    move-object v9, v7

    .end local v9    # "$i$a$-ifBlank-Runner$fromReply$name$1$1\\3\\265\\2":I
    :cond_b
    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .end local v6    # "$i$a$-ifBlank-Runner$fromReply$name$1\\2\\265\\0":I
    :cond_c
    check-cast v6, Ljava/lang/String;

    .line 264
    nop

    .line 266
    .local v6, "name":Ljava/lang/String;
    if-eqz v2, :cond_d

    const-string v9, "wallet"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    goto :goto_5

    :cond_d
    move-object v9, v8

    :goto_5
    iput-object v9, p0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    .line 267
    if-eqz v5, :cond_e

    const-string v9, "read_error"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_e
    move-object v9, v1

    :goto_6
    if-nez v9, :cond_f

    move-object v9, v8

    :cond_f
    iput-object v9, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    .line 268
    new-instance v9, Lcom/bcr/android/core/Runner$TableScan;

    if-eqz v5, :cond_10

    const-string v1, "letters"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    if-eqz v1, :cond_11

    move-object v8, v1

    :cond_11
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    invoke-direct {v9, v7, v6, v8, v1}, Lcom/bcr/android/core/Runner$TableScan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method static synthetic fromReply$default(Lcom/bcr/android/core/Runner;Lcom/bcr/android/web/Bridge$Reply;ZILjava/lang/Object;)Lcom/bcr/android/core/Runner$TableScan;
    .locals 0

    .line 253
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bcr/android/core/Runner;->fromReply(Lcom/bcr/android/web/Bridge$Reply;Z)Lcom/bcr/android/core/Runner$TableScan;

    move-result-object p0

    return-object p0
.end method

.method private final inTableByUrl()Z
    .locals 14

    .line 210
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/bcr/android/core/Runner;

    .local v0, "$this$inTableByUrl_u24lambda_u246\\1":Lcom/bcr/android/core/Runner;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$a$-runCatching-Runner$inTableByUrl$1\\1\\210\\0":I
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 212
    const-string v4, "page_url"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v10, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda10;

    invoke-direct {v10}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda10;-><init>()V

    .line 211
    const/16 v12, 0x20

    const/4 v13, 0x0

    const-wide/16 v6, 0x4b0

    const-wide/16 v8, 0x50

    const/4 v11, 0x0

    invoke-static/range {v3 .. v13}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, "replies\\1":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$any\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1166
    .local v5, "$i$f$any\\2\\215":I
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_1

    .line 1167
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element\\2":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/bcr/android/web/Bridge$Reply;

    .local v8, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v9, 0x0

    .line 215
    .local v9, "$i$a$-any-Runner$inTableByUrl$1$1\\3\\1167\\1":I
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    const-string v12, "url"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v11

    :goto_0
    if-nez v10, :cond_3

    const-string v10, ""

    :cond_3
    check-cast v10, Ljava/lang/CharSequence;

    const-string v12, "table_id="

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x2

    invoke-static {v10, v12, v1, v13, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    .line 1167
    .end local v8    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v9    # "$i$a$-any-Runner$inTableByUrl$1$1\\3\\1167\\1":I
    if-eqz v10, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 1168
    .end local v7    # "element\\2":Ljava/lang/Object;
    :cond_4
    move v6, v1

    .line 215
    .end local v4    # "$this$any\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$any\\2\\215":I
    :goto_1
    nop

    .end local v0    # "$this$inTableByUrl_u24lambda_u246\\1":Lcom/bcr/android/core/Runner;
    .end local v2    # "$i$a$-runCatching-Runner$inTableByUrl$1\\1\\210\\0":I
    .end local v3    # "replies\\1":Ljava/util/List;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static final inTableByUrl$lambda$6$lambda$4(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 5
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "table_id="

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static final lobbyTiles$lambda$13(Lcom/bcr/android/core/Runner;Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 2
    .param p0, "this$0"    # Lcom/bcr/android/core/Runner;
    .param p1, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bcr/android/web/Bridge;->lobbyReply(Ljava/util/List;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loop()V
    .locals 6

    .line 326
    nop

    .line 327
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_5

    .line 328
    nop

    .line 329
    :try_start_1
    iget-boolean v1, p0, Lcom/bcr/android/core/Runner;->entered:Z

    if-nez v1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->enter()Z

    move-result v1

    if-nez v1, :cond_4

    .line 331
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 333
    iget-wide v1, p0, Lcom/bcr/android/core/Runner;->pollMs:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 334
    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->tick()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 339
    :catchall_0
    move-exception v1

    .line 340
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v2}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v2

    .line 342
    .local v2, "pending":Lcom/bcr/android/model/Plan;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bcr/android/model/Plan;->getPlaced()Lcom/bcr/android/model/Placement;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bcr/android/model/Plan;->getPlacingAt()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    invoke-static {v3, v4, v5}, Lcom/bcr/android/core/RunnerKt;->shouldRetryRunnerError(Lcom/bcr/android/model/Placement;J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 343
    nop

    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L\u1ed7i khi \u0111ang x\u00e1c nh\u1eadn c\u01b0\u1ee3c ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "); c\u00f3 th\u1ec3 \u0111\u00e3 \u0111\u1eb7t m\u1ed9t ph\u1ea7n. D\u1eebng \u0111\u1ec3 ki\u1ec3m tra, kh\u00f4ng t\u1ef1 \u0111\u1eb7t l\u1ea1i."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-direct {p0, v3}, Lcom/bcr/android/core/Runner;->fail(Ljava/lang/String;)V

    .line 347
    goto :goto_4

    .line 349
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L\u1ed7i tool: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2014 \u0111ang t\u1ef1 th\u1eed l\u1ea1i."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 351
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "pending":Lcom/bcr/android/model/Plan;
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 352
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    .line 353
    nop

    .line 354
    :try_start_3
    iget-wide v1, p0, Lcom/bcr/android/core/Runner;->pollMs:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "<unused var>":Ljava/lang/InterruptedException;
    nop

    .line 360
    .end local v1    # "<unused var>":Ljava/lang/InterruptedException;
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 362
    nop

    .line 363
    return-void

    .line 360
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    throw v1
.end method

.method static final onTapRequested$lambda$0(FF)Z
    .locals 0

    .line 129
    const/4 p0, 0x0

    return p0
.end method

.method private final placeIfNeeded()V
    .locals 6

    .line 632
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 633
    .local v0, "plan":Lcom/bcr/android/model/Plan;
    :cond_0
    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getPlaced()Lcom/bcr/android/model/Placement;

    move-result-object v1

    sget-object v2, Lcom/bcr/android/model/Placement;->PENDING:Lcom/bcr/android/model/Placement;

    if-eq v1, v2, :cond_1

    return-void

    .line 634
    :cond_1
    iget-boolean v1, p0, Lcom/bcr/android/core/Runner;->autoPlace:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    const-string v3, "\u0110ang t\u1eaft t\u1ef1 \u0111\u1eb7t chip."

    invoke-virtual {v1, v2, v3, v0}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 636
    return-void

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->planClaim:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 640
    :cond_3
    iput-boolean v3, p0, Lcom/bcr/android/core/Runner;->busy:Z

    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, "reason":Ljava/lang/String;
    nop

    .line 643
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bcr/android/core/Runner;->tryPlace(Lcom/bcr/android/model/Plan;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v1    # "reason":Ljava/lang/String;
    .local v3, "reason":Ljava/lang/String;
    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->busy:Z

    .line 646
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->planClaim:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 647
    nop

    .line 648
    const-string v1, "ok"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 649
    :cond_4
    const-string v1, "session_expired"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bcr/android/core/Runner;->fail(Ljava/lang/String;)V

    .line 651
    return-void

    .line 653
    :cond_5
    const-string v1, "not_ready"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 654
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    iget-object v2, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bcr/android/model/Session;->deferPendingPlacement(Ljava/lang/String;)V

    .line 655
    return-void

    .line 657
    :cond_6
    const-string v1, "bet_interrupted"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 658
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bcr/android/core/Runner;->fail(Ljava/lang/String;)V

    .line 659
    return-void

    .line 664
    :cond_7
    sget-object v1, Lcom/bcr/android/core/Runner;->FATAL_PLACE_ERRORS:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 665
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    iget-object v4, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v0}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 666
    return-void

    .line 672
    :cond_8
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 673
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1169
    const/4 v2, 0x0

    .line 673
    .local v2, "$i$a$-ifBlank-Runner$placeIfNeeded$1\\1\\673\\0":I
    move-object v2, v3

    .end local v2    # "$i$a$-ifBlank-Runner$placeIfNeeded$1\\1\\673\\0":I
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ch\u01b0a \u0111\u1eb7t \u0111\u01b0\u1ee3c ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") \u2014 \u0111ang th\u1eed l\u1ea1i trong c\u1eeda s\u1ed5 c\u01b0\u1ee3c."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Lcom/bcr/android/model/Session;->pendingNote(Ljava/lang/String;)V

    .line 675
    return-void

    .line 645
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->busy:Z

    .line 646
    iget-object v4, p0, Lcom/bcr/android/core/Runner;->planClaim:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3
.end method

.method private final publish()V
    .locals 2

    .line 1082
    nop

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->onUpdate:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/bcr/android/core/Runner;->status()Lcom/bcr/android/core/Runner$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1084
    :catchall_0
    move-exception v0

    .line 1087
    :goto_0
    return-void
.end method

.method public static synthetic readChips$default(Lcom/bcr/android/core/Runner;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 310
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 311
    move-object p1, v0

    .line 310
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 312
    move-object p2, v0

    .line 310
    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 313
    const-wide/16 p3, 0x708

    .line 310
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bcr/android/core/Runner;->readChips(Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static final readChips$lambda$16(Ljava/lang/String;Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 2
    .param p0, "$side"    # Ljava/lang/String;
    .param p1, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/bcr/android/web/Bridge;->Companion:Lcom/bcr/android/web/Bridge$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/bcr/android/web/Bridge$Companion;->chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 12
    .param p1, "side"    # Ljava/lang/String;
    .param p2, "targetFrameId"    # Ljava/lang/String;

    .line 803
    nop

    .line 804
    nop

    .line 803
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "side":Ljava/lang/String;
    .end local p2    # "targetFrameId":Ljava/lang/String;
    .local v1, "side":Ljava/lang/String;
    .local v2, "targetFrameId":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/bcr/android/core/Runner;->readChips$default(Lcom/bcr/android/core/Runner;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 804
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 803
    nop

    .line 804
    const-string v0, "spots"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 803
    nop

    .line 804
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 803
    nop

    .line 804
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 803
    nop

    .line 806
    .local v3, "amount":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 1169
    .local v5, "it\\1":D
    const/4 v0, 0x0

    .line 806
    .local v0, "$i$a$-takeIf-Runner$readPlacedAmount$1\\1\\806\\0":I
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v7, v7, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gtz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    if-eqz v7, :cond_1

    const-wide/16 v10, 0x0

    cmpl-double v7, v5, v10

    if-ltz v7, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    .end local v0    # "$i$a$-takeIf-Runner$readPlacedAmount$1\\1\\806\\0":I
    .end local v5    # "it\\1":D
    :goto_1
    if-eqz v8, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2

    .line 805
    .end local v3    # "amount":D
    :cond_3
    return-object p2
.end method

.method private final readRoad()Lcom/bcr/android/core/Runner$Road;
    .locals 13

    .line 612
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 613
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda0;-><init>()V

    .line 612
    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v1, "road"

    const-wide/16 v3, 0x384

    const-wide/16 v5, 0x3c

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "replies":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 617
    nop

    .local v1, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1177
    .local v2, "$i$f$filter\\1\\617":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1178
    .local v5, "$i$f$filterTo\\2\\1177":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element\\2":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/bcr/android/web/Bridge$Reply;

    .local v8, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v9, 0x0

    .line 617
    .local v9, "$i$a$-filter-Runner$readRoad$best$1\\3\\1178\\0":I
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 1178
    .end local v8    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v9    # "$i$a$-filter-Runner$readRoad$best$1\\3\\1178\\0":I
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1179
    .end local v7    # "element\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v4    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo\\2\\1177":I
    check-cast v3, Ljava/util/List;

    .line 1177
    nop

    .line 617
    .end local v1    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter\\1\\617":I
    check-cast v3, Ljava/lang/Iterable;

    .line 618
    nop

    .local v3, "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1180
    .local v1, "$i$f$maxByOrNull\\4\\618":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1181
    .local v2, "iterator\\4":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "letters"

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    .line 1182
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1183
    .local v4, "maxElem\\4":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    .line 1184
    :cond_4
    move-object v7, v4

    check-cast v7, Lcom/bcr/android/web/Bridge$Reply;

    .local v7, "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v8, 0x0

    .line 618
    .local v8, "$i$a$-maxByOrNull-Runner$readRoad$best$2\\5\\1184\\0":I
    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v6

    :goto_2
    const-string v10, ""

    if-nez v9, :cond_6

    move-object v9, v10

    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 1184
    .end local v7    # "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    .end local v8    # "$i$a$-maxByOrNull-Runner$readRoad$best$2\\5\\1184\\0":I
    nop

    .line 1186
    .local v7, "maxValue\\4":I
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1187
    .local v8, "e\\4":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bcr/android/web/Bridge$Reply;

    .local v9, "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v11, 0x0

    .line 618
    .local v11, "$i$a$-maxByOrNull-Runner$readRoad$best$2\\6\\1187\\0":I
    invoke-virtual {v9}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_8
    move-object v12, v6

    :goto_3
    if-nez v12, :cond_9

    move-object v12, v10

    :cond_9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 1187
    .end local v9    # "it\\6":Lcom/bcr/android/web/Bridge$Reply;
    .end local v11    # "$i$a$-maxByOrNull-Runner$readRoad$best$2\\6\\1187\\0":I
    nop

    .line 1188
    .local v9, "v\\4":I
    if-ge v7, v9, :cond_a

    .line 1189
    move-object v4, v8

    .line 1190
    move v7, v9

    .line 1192
    .end local v8    # "e\\4":Ljava/lang/Object;
    .end local v9    # "v\\4":I
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1193
    nop

    .line 618
    .end local v1    # "$i$f$maxByOrNull\\4\\618":I
    .end local v2    # "iterator\\4":Ljava/util/Iterator;
    .end local v3    # "$this$maxByOrNull\\4":Ljava/lang/Iterable;
    .end local v4    # "maxElem\\4":Ljava/lang/Object;
    .end local v7    # "maxValue\\4":I
    :goto_4
    check-cast v4, Lcom/bcr/android/web/Bridge$Reply;

    .line 616
    if-nez v4, :cond_b

    .line 619
    return-object v6

    .line 620
    .local v4, "best":Lcom/bcr/android/web/Bridge$Reply;
    :cond_b
    invoke-virtual {v4}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v6

    .line 621
    .local v1, "result":Lorg/json/JSONObject;
    :cond_c
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "letters":Ljava/lang/String;
    const-string v3, "table_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "tableId":Ljava/lang/String;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    return-object v6

    .line 625
    :cond_d
    new-instance v5, Lcom/bcr/android/core/Runner$Road;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v3, v2}, Lcom/bcr/android/core/Runner$Road;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method static final readRoad$lambda$22(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 2
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "letters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final resolveStalePending()V
    .locals 11

    .line 578
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 579
    .local v0, "plan":Lcom/bcr/android/model/Plan;
    :cond_0
    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getPlaced()Lcom/bcr/android/model/Placement;

    move-result-object v1

    sget-object v2, Lcom/bcr/android/model/Placement;->PENDING:Lcom/bcr/android/model/Placement;

    if-eq v1, v2, :cond_1

    return-void

    .line 580
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getArmedAt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 581
    .local v1, "waited":J
    const-wide/16 v3, 0x2ee0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    return-void

    .line 582
    :cond_2
    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getPlacingAt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    return-void

    .line 584
    :cond_3
    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/bcr/android/core/Runner;->readChips$default(Lcom/bcr/android/core/Runner;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    return-void

    .line 585
    .local v3, "chips":Lorg/json/JSONObject;
    :cond_4
    const-string v4, "has_table"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    .line 586
    :cond_5
    nop

    .line 587
    nop

    .line 586
    const-string v4, "spots"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 587
    if-eqz v4, :cond_6

    .line 586
    nop

    .line 587
    const-string v5, "amount"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 586
    goto :goto_0

    .line 587
    :cond_6
    const-wide/16 v4, 0x0

    .line 586
    :goto_0
    nop

    .line 589
    .local v4, "amount":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v4

    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_7

    .line 591
    iget-object v6, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 592
    nop

    .line 593
    sget-object v7, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0110\u00e3 x\u00e1c nh\u1eadn chip tr\u00ean b\u00e0n ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VN2) sau khi ch\u1edd."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 594
    nop

    .line 591
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7, v0}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 596
    return-void

    .line 600
    :cond_7
    iget-object v6, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 601
    nop

    .line 602
    sget-object v7, Lcom/bcr/android/model/Method;->INSTANCE:Lcom/bcr/android/model/Method;

    invoke-virtual {v0}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bcr/android/model/Method;->sideName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    sget-object v8, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "H\u1ebft th\u1eddi gian ch\u1edd m\u00e0 chip kh\u00f4ng l\u00ean b\u00e0n (\u00f4 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 604
    nop

    .line 600
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7, v0}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 606
    return-void
.end method

.method private final retryWithTouch(Lcom/bcr/android/model/Plan;Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .param p1, "plan"    # Lcom/bcr/android/model/Plan;
    .param p2, "targetFrameId"    # Ljava/lang/String;

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Lcom/bcr/android/core/Runner;->readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    const-string v11, "bet_interrupted"

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 954
    move-wide v12, v2

    .line 956
    .local v12, "placed":D
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Lcom/bcr/android/core/RunnerKt;->isStakeConfirmed(DD)Z

    move-result v2

    const-string v14, " / "

    const-string v15, "\u0110\u00e3 x\u00e1c nh\u1eadn \u0111\u1ee7 "

    const-string v3, "ok"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 957
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 958
    nop

    .line 959
    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VN2 tr\u00ean \u00f4."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 960
    nop

    .line 957
    invoke-virtual {v2, v4, v5, v1}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 962
    return-object v3

    .line 964
    :cond_0
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v5, v5, v16

    cmpl-double v2, v12, v5

    if-lez v2, :cond_1

    .line 965
    const-string v2, "\u00d4 c\u01b0\u1ee3c \u0111\u00e3 v\u01b0\u1ee3t m\u1ee9c d\u1ef1 ki\u1ebfn; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra."

    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 966
    return-object v11

    .line 968
    :cond_1
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v5

    sub-double/2addr v5, v12

    .line 969
    .local v5, "missing":D
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 970
    const-string v7, "side"

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 971
    const-string v7, "amount"

    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v2

    .line 972
    const-string v7, "dryRun"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 973
    const-string v7, "waitMs"

    const/16 v8, 0x4b0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 969
    nop

    .line 974
    .local v2, "args":Lorg/json/JSONObject;
    move v7, v4

    move-object v4, v2

    .end local v2    # "args":Lorg/json/JSONObject;
    .local v4, "args":Lorg/json/JSONObject;
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 975
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v9, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda1;-><init>()V

    .line 977
    nop

    .line 974
    move-object v8, v3

    const-string v3, "place"

    move-wide/from16 v18, v5

    .end local v5    # "missing":D
    .local v18, "missing":D
    const-wide/16 v5, 0xfa0

    move/from16 v21, v7

    move-object/from16 v20, v8

    const-wide/16 v7, 0x64

    move-object/from16 v22, v11

    move-object/from16 v23, v20

    move/from16 v11, v21

    invoke-virtual/range {v2 .. v10}, Lcom/bcr/android/web/Bridge;->call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 979
    .local v2, "replies":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$firstOrNull\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1200
    .local v5, "$i$f$firstOrNull\\2\\979":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element\\2":Ljava/lang/Object;
    move-object/from16 v20, v7

    check-cast v20, Lcom/bcr/android/web/Bridge$Reply;

    .local v20, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/16 v21, 0x0

    .line 979
    .local v21, "$i$a$-firstOrNull-Runner$retryWithTouch$result$1\\3\\1200\\0":I
    invoke-virtual/range {v20 .. v20}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_3

    const/16 v24, 0x0

    const-string v9, "dry_run"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v11, :cond_4

    move v8, v11

    goto :goto_0

    :cond_3
    const/16 v24, 0x0

    :cond_4
    const/4 v8, 0x0

    .line 1200
    .end local v20    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v21    # "$i$a$-firstOrNull-Runner$retryWithTouch$result$1\\3\\1200\\0":I
    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    .line 1201
    .end local v7    # "element\\2":Ljava/lang/Object;
    :cond_5
    const/16 v24, 0x0

    move-object/from16 v7, v24

    .line 979
    .end local v3    # "$this$firstOrNull\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$firstOrNull\\2\\979":I
    :goto_1
    check-cast v7, Lcom/bcr/android/web/Bridge$Reply;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object/from16 v3, v24

    .line 980
    .local v3, "result":Lorg/json/JSONObject;
    :goto_2
    const-string v5, "not_ready"

    const-string v6, "note"

    const-string v7, ""

    const-string v8, "reason"

    const-string v9, "session_expired"

    if-nez v3, :cond_10

    .line 984
    nop

    .line 981
    move-object v14, v2

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$firstOrNull\\4":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 1202
    .local v15, "$i$f$firstOrNull\\4\\981":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element\\4":Ljava/lang/Object;
    move-object/from16 v20, v17

    check-cast v20, Lcom/bcr/android/web/Bridge$Reply;

    .local v20, "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    const/16 v21, 0x0

    .line 982
    .local v21, "$i$a$-firstOrNull-Runner$retryWithTouch$unavailable$1\\5\\1202\\0":I
    invoke-virtual/range {v20 .. v20}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_7
    move-object/from16 v11, v24

    :goto_4
    if-nez v11, :cond_8

    move-object v11, v7

    .line 983
    .local v11, "replyReason\\5":Ljava/lang/String;
    :cond_8
    move-object/from16 v25, v2

    .end local v2    # "replies":Ljava/util/List;
    .local v25, "replies":Ljava/util/List;
    sget-object v2, Lcom/bcr/android/core/Runner;->BET_NOT_READY_ERRORS:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const/4 v2, 0x1

    .line 1202
    .end local v11    # "replyReason\\5":Ljava/lang/String;
    .end local v20    # "it\\5":Lcom/bcr/android/web/Bridge$Reply;
    .end local v21    # "$i$a$-firstOrNull-Runner$retryWithTouch$unavailable$1\\5\\1202\\0":I
    :goto_5
    if-nez v2, :cond_b

    move-object/from16 v2, v25

    const/4 v11, 0x1

    goto :goto_3

    .line 1203
    .end local v17    # "element\\4":Ljava/lang/Object;
    .end local v25    # "replies":Ljava/util/List;
    .restart local v2    # "replies":Ljava/util/List;
    :cond_a
    move-object/from16 v25, v2

    .end local v2    # "replies":Ljava/util/List;
    .restart local v25    # "replies":Ljava/util/List;
    move-object/from16 v17, v24

    .line 981
    .end local v14    # "$this$firstOrNull\\4":Ljava/lang/Iterable;
    .end local v15    # "$i$f$firstOrNull\\4\\981":I
    :cond_b
    check-cast v17, Lcom/bcr/android/web/Bridge$Reply;

    .line 984
    if-eqz v17, :cond_c

    .line 981
    nop

    .line 984
    invoke-virtual/range {v17 .. v17}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object/from16 v2, v24

    .line 981
    :goto_6
    nop

    .line 985
    .local v2, "unavailable":Lorg/json/JSONObject;
    if-eqz v2, :cond_f

    .line 986
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1169
    const/4 v6, 0x0

    .line 986
    .local v6, "$i$a$-ifBlank-Runner$retryWithTouch$1\\6\\986\\0":I
    nop

    .end local v6    # "$i$a$-ifBlank-Runner$retryWithTouch$1\\6\\986\\0":I
    const-string v6, "C\u1eeda c\u01b0\u1ee3c/chip ch\u01b0a s\u1eb5n s\u00e0ng."

    :cond_d
    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 987
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 988
    move-object v5, v9

    goto :goto_7

    .line 990
    :cond_e
    nop

    .line 987
    :goto_7
    return-object v5

    .line 993
    :cond_f
    return-object v24

    .line 995
    .end local v25    # "replies":Ljava/util/List;
    .local v2, "replies":Ljava/util/List;
    :cond_10
    move-object/from16 v25, v2

    .end local v2    # "replies":Ljava/util/List;
    .restart local v25    # "replies":Ljava/util/List;
    const-string v2, "rounded"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 996
    const-string v2, "M\u1ec7nh gi\u00e1 chip hi\u1ec7n t\u1ea1i kh\u00f4ng gh\u00e9p ch\u00ednh x\u00e1c ph\u1ea7n c\u00f2n thi\u1ebfu; d\u1eebng \u0111\u1ec3 tr\u00e1nh \u0111\u1eb7t qu\u00e1."

    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 997
    return-object v22

    .line 999
    :cond_11
    const-string v2, "steps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_12

    return-object v24

    .line 1000
    .local v2, "steps":Lorg/json/JSONArray;
    :cond_12
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 1001
    .local v11, "points":Ljava/util/List;
    const/16 v20, 0x0

    move-object/from16 v21, v3

    .end local v3    # "result":Lorg/json/JSONObject;
    .local v20, "i":I
    .local v21, "result":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object/from16 v26, v4

    move/from16 v4, v20

    .end local v20    # "i":I
    .local v4, "i":I
    .local v26, "args":Lorg/json/JSONObject;
    :goto_8
    if-ge v4, v3, :cond_16

    .line 1002
    move/from16 v20, v3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v27, v2

    .end local v2    # "steps":Lorg/json/JSONArray;
    .local v27, "steps":Lorg/json/JSONArray;
    const-string v2, "abs"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_13

    move/from16 v28, v4

    goto :goto_9

    .line 1003
    .local v2, "abs":Lorg/json/JSONObject;
    :cond_13
    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_14

    return-object v24

    .line 1004
    :cond_14
    move-object/from16 v23, v3

    const-string v3, "x"

    move/from16 v28, v4

    .end local v4    # "i":I
    .local v28, "i":I
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "y"

    move-object/from16 v29, v5

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    .end local v2    # "abs":Lorg/json/JSONObject;
    add-int/lit8 v4, v28, 0x1

    move/from16 v3, v20

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    .end local v28    # "i":I
    .restart local v4    # "i":I
    goto :goto_8

    .line 1002
    .end local v27    # "steps":Lorg/json/JSONArray;
    .local v2, "steps":Lorg/json/JSONArray;
    :cond_15
    move-object/from16 v27, v2

    move/from16 v28, v4

    .end local v2    # "steps":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .restart local v27    # "steps":Lorg/json/JSONArray;
    .restart local v28    # "i":I
    :goto_9
    return-object v24

    .line 1001
    .end local v27    # "steps":Lorg/json/JSONArray;
    .end local v28    # "i":I
    .restart local v2    # "steps":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    :cond_16
    move-object/from16 v27, v2

    move/from16 v28, v4

    move-object/from16 v29, v5

    .line 1006
    .end local v2    # "steps":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .restart local v27    # "steps":Lorg/json/JSONArray;
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v24

    .line 1007
    :cond_17
    const/4 v2, 0x0

    .line 1008
    .local v2, "touched":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v30, 0x0

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 1009
    .local v4, "y":F
    move/from16 v20, v2

    .end local v2    # "touched":Z
    .local v20, "touched":Z
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_19

    if-nez v20, :cond_18

    move-object/from16 v22, v24

    :cond_18
    return-object v22

    .line 1011
    :cond_19
    nop

    .line 1010
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v3

    move/from16 v28, v4

    .end local v4    # "y":F
    .local v28, "y":F
    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v2, v10, v3, v4}, Lcom/bcr/android/core/Runner;->readChips(Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    .line 1011
    if-eqz v2, :cond_1a

    .line 1010
    nop

    .line 1011
    const-string v3, "betting"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1010
    nop

    .line 1011
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_b

    :cond_1a
    move-object/from16 v2, v24

    .line 1010
    :goto_b
    nop

    .line 1012
    .local v2, "ready":Lorg/json/JSONObject;
    if-eqz v2, :cond_1b

    const-string v3, "ready"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_22

    .line 1013
    if-eqz v2, :cond_1c

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_1c
    move-object/from16 v3, v24

    :goto_d
    if-eqz v3, :cond_1d

    move-object v7, v3

    :cond_1d
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    .line 1014
    .local v3, "$i$a$-ifBlank-Runner$retryWithTouch$2\\7\\1013\\0":I
    nop

    .line 1013
    .end local v3    # "$i$a$-ifBlank-Runner$retryWithTouch$2\\7\\1013\\0":I
    const-string v7, "C\u1eeda c\u01b0\u1ee3c/chip kh\u00f4ng c\u00f2n s\u1eb5n s\u00e0ng; \u0111\u00e3 d\u1eebng thao t\u00e1c c\u1ea3m \u1ee9ng."

    :cond_1e
    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 1016
    if-nez v20, :cond_21

    cmpl-double v3, v12, v30

    if-gtz v3, :cond_21

    .line 1017
    if-eqz v2, :cond_1f

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_1f
    move-object/from16 v3, v24

    :goto_e
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1018
    move-object/from16 v29, v9

    goto :goto_f

    .line 1020
    :cond_20
    nop

    .line 1017
    :goto_f
    return-object v29

    .line 1016
    :cond_21
    return-object v22

    .line 1023
    :cond_22
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->onTapRequested:Lkotlin/jvm/functions/Function2;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v33, v2

    .end local v2    # "ready":Lorg/json/JSONObject;
    .local v33, "ready":Lorg/json/JSONObject;
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    if-nez v20, :cond_23

    move-object/from16 v22, v24

    :cond_23
    return-object v22

    .line 1024
    :cond_24
    const/4 v2, 0x1

    .line 1025
    .end local v20    # "touched":Z
    .local v2, "touched":Z
    iget v3, v0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    int-to-long v3, v3

    move/from16 v34, v5

    move-object/from16 v35, v6

    .end local v5    # "x":F
    .local v34, "x":F
    const-wide/16 v5, 0x28

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v3, v32

    move-object/from16 v6, v35

    .end local v28    # "y":F
    .end local v33    # "ready":Lorg/json/JSONObject;
    .end local v34    # "x":F
    goto/16 :goto_a

    .line 1027
    :cond_25
    move/from16 v20, v2

    .end local v2    # "touched":Z
    .restart local v20    # "touched":Z
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1028
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Lcom/bcr/android/core/Runner;->readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 1030
    nop

    .line 1032
    .local v2, "amount":D
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/bcr/android/core/RunnerKt;->isStakeConfirmed(DD)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1033
    iget-object v4, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VN2 b\u1eb1ng c\u1ea3m \u1ee9ng th\u1eadt."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5, v1}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 1034
    return-object v23

    .line 1036
    :cond_26
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v4

    add-double v4, v4, v16

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_27

    cmpl-double v4, v2, v30

    if-gtz v4, :cond_27

    .line 1041
    return-object v24

    .line 1037
    :cond_27
    sget-object v4, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C\u1ea3m \u1ee9ng m\u1edbi x\u00e1c nh\u1eadn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VN2; d\u1eebng \u0111\u1ec3 kh\u00f4ng t\u00ednh sai l\u01b0\u1ee3t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 1039
    return-object v22

    .line 1028
    .end local v2    # "amount":D
    :cond_28
    move-object v2, v0

    check-cast v2, Lcom/bcr/android/core/Runner;

    .local v2, "$this$retryWithTouch_u24lambda_u2455\\8":Lcom/bcr/android/core/Runner;
    const/4 v3, 0x0

    .line 1029
    .local v3, "$i$a$-run-Runner$retryWithTouch$amount$1\\8\\1028\\0":I
    const-string v4, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c s\u1ed1 chip sau c\u1ea3m \u1ee9ng; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra."

    iput-object v4, v2, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 1030
    return-object v22

    .line 952
    .end local v2    # "$this$retryWithTouch_u24lambda_u2455\\8":Lcom/bcr/android/core/Runner;
    .end local v3    # "$i$a$-run-Runner$retryWithTouch$amount$1\\8\\1028\\0":I
    .end local v11    # "points":Ljava/util/List;
    .end local v12    # "placed":D
    .end local v18    # "missing":D
    .end local v20    # "touched":Z
    .end local v21    # "result":Lorg/json/JSONObject;
    .end local v25    # "replies":Ljava/util/List;
    .end local v26    # "args":Lorg/json/JSONObject;
    .end local v27    # "steps":Lorg/json/JSONArray;
    :cond_29
    move-object/from16 v22, v11

    move-object v2, v0

    check-cast v2, Lcom/bcr/android/core/Runner;

    .local v2, "$this$retryWithTouch_u24lambda_u2449\\1":Lcom/bcr/android/core/Runner;
    const/4 v3, 0x0

    .line 953
    .local v3, "$i$a$-run-Runner$retryWithTouch$placed$1\\1\\952\\0":I
    const-string v4, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c ti\u1ec1n c\u01b0\u1ee3c th\u1ef1c t\u1ebf tr\u01b0\u1edbc c\u1ea3m \u1ee9ng; d\u1eebng \u0111\u1ec3 tr\u00e1nh \u0111\u1eb7t tr\u00f9ng."

    iput-object v4, v2, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 954
    return-object v22
.end method

.method static final retryWithTouch$lambda$50(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 3
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "dry_run"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static final scanTable$lambda$7(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 4
    .param p0, "reply"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "reply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "in_table"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "tables"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-lez v0, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    return v1
.end method

.method static final start$lambda$1(Lcom/bcr/android/core/Runner;)V
    .locals 0
    .param p0, "this$0"    # Lcom/bcr/android/core/Runner;

    .line 140
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->loop()V

    return-void
.end method

.method public static synthetic stop$default(Lcom/bcr/android/core/Runner;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 148
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "\u0110\u00e3 d\u1eebng tool."

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bcr/android/core/Runner;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private final tick()V
    .locals 8

    .line 487
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->resolveStalePending()V

    .line 491
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->absorbFailedPlan()Lcom/bcr/android/model/Step;

    move-result-object v0

    sget-object v1, Lcom/bcr/android/core/Runner$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/bcr/android/model/Step;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 497
    :pswitch_0
    goto :goto_0

    .line 494
    :pswitch_1
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    return-void

    .line 492
    :pswitch_2
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 503
    :goto_0
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->readRoad()Lcom/bcr/android/core/Runner$Road;

    move-result-object v0

    .line 504
    .local v0, "road":Lcom/bcr/android/core/Runner$Road;
    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 506
    invoke-virtual {p0}, Lcom/bcr/android/core/Runner;->scanTable()Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v3

    .line 507
    .local v3, "scan":Lcom/bcr/android/core/Runner$TableScan;
    if-nez v3, :cond_1

    .line 508
    iget-boolean v2, p0, Lcom/bcr/android/core/Runner;->entered:Z

    if-eqz v2, :cond_0

    .line 509
    iput-boolean v1, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    .line 510
    const-string v1, "T\u1ea1m th\u1eddi kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c b\u00e0n \u2014 tool v\u1eabn \u0111ang th\u1eed k\u1ebft n\u1ed1i l\u1ea1i."

    iput-object v1, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 511
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 513
    :cond_0
    return-void

    .line 515
    :cond_1
    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    .line 516
    invoke-virtual {v3}, Lcom/bcr/android/core/Runner$TableScan;->getTableId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    .line 517
    invoke-virtual {v3}, Lcom/bcr/android/core/Runner$TableScan;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    .line 518
    invoke-virtual {v3}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    .line 519
    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->entered:Z

    .line 520
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bcr/android/model/Session;->syncPendingBaseline(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v2}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v2

    .line 522
    .local v2, "pending":Lcom/bcr/android/model/Plan;
    if-nez v2, :cond_3

    .line 523
    iget-object v4, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/core/Runner$TableScan;->getLetters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bcr/android/model/Session;->process(Ljava/lang/String;)Lcom/bcr/android/model/Step;

    move-result-object v4

    .line 524
    .local v4, "step":Lcom/bcr/android/model/Step;
    sget-object v5, Lcom/bcr/android/model/Step;->ARMED:Lcom/bcr/android/model/Step;

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 525
    :cond_2
    sget-object v5, Lcom/bcr/android/model/Step;->PAUSED:Lcom/bcr/android/model/Step;

    if-ne v4, v5, :cond_4

    iget-object v5, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .end local v4    # "step":Lcom/bcr/android/model/Step;
    goto :goto_1

    .line 526
    :cond_3
    invoke-virtual {v2}, Lcom/bcr/android/model/Plan;->getPlaced()Lcom/bcr/android/model/Placement;

    move-result-object v1

    sget-object v4, Lcom/bcr/android/model/Placement;->PENDING:Lcom/bcr/android/model/Placement;

    if-ne v1, v4, :cond_4

    invoke-virtual {v2}, Lcom/bcr/android/model/Plan;->getPlacingAt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 527
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 529
    :cond_4
    :goto_1
    return-void

    .line 532
    .end local v2    # "pending":Lcom/bcr/android/model/Plan;
    .end local v3    # "scan":Lcom/bcr/android/core/Runner$TableScan;
    :cond_5
    iput-boolean v2, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    .line 533
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getTableId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getTableId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    .line 534
    :cond_6
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    .line 535
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bcr/android/model/Session;->syncPendingBaseline(Ljava/lang/String;)V

    .line 536
    const-string v3, ""

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 540
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 541
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v1}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 542
    :cond_7
    return-void

    .line 546
    :cond_8
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bcr/android/core/Runner;->stableLetters:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 547
    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bcr/android/core/Runner;->stableLetters:Ljava/lang/String;

    .line 548
    iput v1, p0, Lcom/bcr/android/core/Runner;->stableCount:I

    goto :goto_2

    .line 550
    :cond_9
    iget v3, p0, Lcom/bcr/android/core/Runner;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bcr/android/core/Runner;->stableCount:I

    .line 553
    :goto_2
    iget-object v2, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/core/Runner$Road;->getLetters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bcr/android/model/Session;->process(Ljava/lang/String;)Lcom/bcr/android/model/Step;

    move-result-object v2

    .line 554
    .local v2, "step":Lcom/bcr/android/model/Step;
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    iput-object v3, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 555
    :cond_a
    sget-object v3, Lcom/bcr/android/core/Runner$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/bcr/android/model/Step;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 565
    :pswitch_3
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v1}, Lcom/bcr/android/model/Session;->pendingPlan()Lcom/bcr/android/model/Plan;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    goto :goto_3

    .line 560
    :pswitch_4
    iget-object v3, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 556
    :pswitch_5
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->placeIfNeeded()V

    .line 568
    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private final tryPlace(Lcom/bcr/android/model/Plan;)Ljava/lang/String;
    .locals 41
    .param p1, "plan"    # Lcom/bcr/android/model/Plan;

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/bcr/android/web/Bridge;->Companion:Lcom/bcr/android/web/Bridge$Companion;

    .line 681
    iget-object v8, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 682
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 681
    new-instance v15, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda11;

    invoke-direct {v15, v7}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda11;-><init>(Lcom/bcr/android/model/Plan;)V

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v9, "chips"

    const-wide/16 v11, 0x708

    const-wide/16 v13, 0x64

    const/16 v16, 0x0

    invoke-static/range {v8 .. v18}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 685
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-virtual {v1, v2, v3}, Lcom/bcr/android/web/Bridge$Companion;->chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v8

    .line 687
    .local v8, "target":Lcom/bcr/android/web/Bridge$Reply;
    const-string v9, "not_ready"

    if-nez v8, :cond_0

    .line 688
    sget-object v1, Lcom/bcr/android/model/Method;->INSTANCE:Lcom/bcr/android/model/Method;

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bcr/android/model/Method;->sideName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ch\u01b0a t\u00ecm \u0111\u01b0\u1ee3c khung c\u00f3 \u00f4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 689
    return-object v9

    .line 691
    :cond_0
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    const-string v10, "betting"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v12, v1

    .line 692
    .local v12, "betting":Lorg/json/JSONObject;
    const-string v13, "ready"

    const/4 v15, 0x1

    if-eqz v12, :cond_2

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v15, :cond_2

    move v1, v15

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "reason"

    const-string v16, ""

    const-string v3, "note"

    const-string v4, "session_expired"

    if-nez v1, :cond_8

    .line 693
    if-eqz v12, :cond_3

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    move-object/from16 v16, v1

    :cond_4
    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 694
    .local v1, "$i$a$-ifBlank-Runner$tryPlace$1\\1\\693\\0":I
    nop

    .line 693
    .end local v1    # "$i$a$-ifBlank-Runner$tryPlace$1\\1\\693\\0":I
    const-string v16, "Ch\u01b0a x\u00e1c nh\u1eadn \u0111\u01b0\u1ee3c c\u1eeda c\u01b0\u1ee3c v\u00e0 chip \u0111ang s\u1eb5n s\u00e0ng; ch\u01b0a b\u1ea5m."

    :cond_5
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 696
    if-eqz v12, :cond_6

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    .line 697
    :goto_3
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v9, v4

    goto :goto_4

    .line 698
    :cond_7
    nop

    .line 696
    :goto_4
    return-object v9

    .line 701
    :cond_8
    iget-object v1, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v1}, Lcom/bcr/android/model/Session;->markPlacing()V

    .line 702
    nop

    .line 703
    nop

    .line 702
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v17, 0x0

    if-eqz v1, :cond_c

    const-string v5, "selected_chip"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 703
    nop

    .line 702
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 703
    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 1169
    .local v5, "it\\2":D
    const/16 v19, 0x0

    .line 703
    .local v19, "$i$a$-takeIf-Runner$tryPlace$selectedUnit$1\\2\\703\\0":I
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_9

    move/from16 v20, v15

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    :goto_5
    if-eqz v20, :cond_a

    cmpl-double v20, v5, v17

    if-lez v20, :cond_a

    move v5, v15

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .end local v5    # "it\\2":D
    .end local v19    # "$i$a$-takeIf-Runner$tryPlace$selectedUnit$1\\2\\703\\0":I
    :goto_6
    if-nez v5, :cond_b

    const/4 v1, 0x0

    .line 702
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_7

    .line 703
    :cond_c
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    .line 702
    :goto_7
    nop

    .line 704
    .local v5, "selectedUnit":D
    move-object/from16 v19, v12

    .end local v12    # "betting":Lorg/json/JSONObject;
    .local v19, "betting":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v11

    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1, v5, v6}, Lcom/bcr/android/core/Runner;->chipDenominations(Lorg/json/JSONObject;D)Ljava/util/List;

    move-result-object v1

    invoke-static {v11, v12, v1}, Lcom/bcr/android/core/RunnerKt;->minimumChipPlan(DLjava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 705
    .local v11, "chipPlan":Ljava/util/List;
    if-nez v11, :cond_d

    .line 706
    sget-object v1, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kh\u00f4ng c\u00f3 t\u1ed5 h\u1ee3p chip \u0111ang th\u1ea5y \u0111\u1ec3 gh\u00e9p ch\u00ednh x\u00e1c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VN2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 707
    const-string v1, "unrepresentable_amount"

    return-object v1

    .line 709
    :cond_d
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v14

    iget v1, v0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    invoke-static {v14, v15, v5, v6, v1}, Lcom/bcr/android/core/RunnerKt;->estimatePlaceTimeoutMs(DDI)J

    move-result-wide v14

    .line 710
    .local v14, "placeTimeoutMs":J
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v22, v1

    .line 1169
    .local v22, "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    const/16 v23, 0x0

    .line 710
    .local v23, "$i$a$-apply-Runner$tryPlace$chipPlanJson$1\\3\\710\\0":I
    move-object/from16 v24, v11

    check-cast v24, Ljava/lang/Iterable;

    .local v24, "$this$forEach\\4":Ljava/lang/Iterable;
    const/16 v25, 0x0

    .line 1194
    .local v25, "$i$f$forEach\\4\\710":I
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .local v27, "element\\4":Ljava/lang/Object;
    move-object/from16 v28, v27

    check-cast v28, Ljava/lang/Number;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "it\\5":I
    const/16 v28, 0x0

    .line 710
    .local v28, "$i$a$-forEach-Runner$tryPlace$chipPlanJson$1$1\\5\\1194\\3":I
    move-object/from16 v30, v1

    move-object/from16 v1, v22

    .end local v22    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    .local v1, "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1194
    .end local v12    # "it\\5":I
    .end local v28    # "$i$a$-forEach-Runner$tryPlace$chipPlanJson$1$1\\5\\1194\\3":I
    move-object/from16 v1, v30

    .end local v27    # "element\\4":Ljava/lang/Object;
    goto :goto_8

    .line 1195
    .end local v1    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    .restart local v22    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    :cond_e
    move-object/from16 v30, v1

    move-object/from16 v1, v22

    .line 710
    .end local v22    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    .end local v24    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v25    # "$i$f$forEach\\4\\710":I
    .restart local v1    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    nop

    .end local v1    # "$this$tryPlace_u24lambda_u2430\\3":Lorg/json/JSONArray;
    .end local v23    # "$i$a$-apply-Runner$tryPlace$chipPlanJson$1\\3\\710\\0":I
    move-object/from16 v12, v30

    .line 711
    .local v12, "chipPlanJson":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 712
    move-object/from16 v22, v2

    const-string v2, "side"

    move-object/from16 v23, v3

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 713
    const-string v2, "amount"

    move-wide/from16 v24, v5

    .end local v5    # "selectedUnit":D
    .local v24, "selectedUnit":D
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    .line 714
    const-string v2, "chipPlan"

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 715
    const-string v2, "clickDelayMs"

    iget v3, v0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 716
    const-string v2, "waitMs"

    const/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 717
    const-string v2, "waitClearMs"

    const/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 718
    const-string v2, "placeTimeoutMs"

    invoke-virtual {v1, v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 711
    move-object/from16 v32, v1

    .line 719
    .local v32, "args":Lorg/json/JSONObject;
    iget-object v1, v0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 720
    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1194

    add-long v33, v14, v2

    new-instance v37, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda12;

    invoke-direct/range {v37 .. v37}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda12;-><init>()V

    .line 723
    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v38

    .line 719
    const-string v31, "place"

    const-wide/16 v35, 0x78

    move-object/from16 v30, v1

    invoke-virtual/range {v30 .. v38}, Lcom/bcr/android/web/Bridge;->call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 725
    .local v26, "replies":Ljava/util/List;
    move-object/from16 v1, v26

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull\\6":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1196
    .local v2, "$i$f$firstOrNull\\6\\725":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "ok"

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\6":Ljava/lang/Object;
    move-object/from16 v27, v5

    check-cast v27, Lcom/bcr/android/web/Bridge$Reply;

    .local v27, "it\\7":Lcom/bcr/android/web/Bridge$Reply;
    const/16 v28, 0x0

    .line 725
    .local v28, "$i$a$-firstOrNull-Runner$tryPlace$ok$1\\7\\1196\\0":I
    move-object/from16 v30, v1

    .end local v1    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .local v30, "$this$firstOrNull\\6":Ljava/lang/Iterable;
    invoke-virtual/range {v27 .. v27}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 v31, v2

    const/4 v2, 0x1

    .end local v2    # "$i$f$firstOrNull\\6\\725":I
    .local v31, "$i$f$firstOrNull\\6\\725":I
    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    .end local v31    # "$i$f$firstOrNull\\6\\725":I
    .restart local v2    # "$i$f$firstOrNull\\6\\725":I
    :cond_f
    move/from16 v31, v2

    .end local v2    # "$i$f$firstOrNull\\6\\725":I
    .restart local v31    # "$i$f$firstOrNull\\6\\725":I
    :cond_10
    const/4 v1, 0x0

    .line 1196
    .end local v27    # "it\\7":Lcom/bcr/android/web/Bridge$Reply;
    .end local v28    # "$i$a$-firstOrNull-Runner$tryPlace$ok$1\\7\\1196\\0":I
    :goto_a
    if-nez v1, :cond_12

    move-object/from16 v1, v30

    move/from16 v2, v31

    goto :goto_9

    .line 1197
    .end local v5    # "element\\6":Ljava/lang/Object;
    .end local v30    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .end local v31    # "$i$f$firstOrNull\\6\\725":I
    .restart local v1    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$firstOrNull\\6\\725":I
    :cond_11
    move-object/from16 v30, v1

    move/from16 v31, v2

    .end local v1    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull\\6\\725":I
    .restart local v30    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .restart local v31    # "$i$f$firstOrNull\\6\\725":I
    const/4 v5, 0x0

    .line 725
    .end local v30    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .end local v31    # "$i$f$firstOrNull\\6\\725":I
    :cond_12
    move-object/from16 v27, v5

    check-cast v27, Lcom/bcr/android/web/Bridge$Reply;

    .line 726
    .local v27, "ok":Lcom/bcr/android/web/Bridge$Reply;
    move-object/from16 v1, v26

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda13;-><init>()V

    .line 727
    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 728
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    if-nez v1, :cond_13

    .line 729
    const-string v1, "no_reply"

    .line 726
    :cond_13
    nop

    .line 730
    .local v1, "reason":Ljava/lang/String;
    move-object/from16 v2, v26

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v3, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda14;-><init>()V

    .line 731
    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 732
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 730
    if-nez v2, :cond_16

    .line 733
    invoke-static/range {v26 .. v26}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bcr/android/web/Bridge$Reply;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/bcr/android/web/Bridge$Reply;->getError()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1169
    move-object v3, v2

    .local v3, "p0\\8":Ljava/lang/String;
    const/4 v5, 0x0

    .line 733
    .local v5, "$i$a$-takeIf-Runner$tryPlace$3\\8\\733\\0":I
    move-object/from16 v28, v3

    check-cast v28, Ljava/lang/CharSequence;

    invoke-static/range {v28 .. v28}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v28

    .end local v3    # "p0\\8":Ljava/lang/String;
    .end local v5    # "$i$a$-takeIf-Runner$tryPlace$3\\8\\733\\0":I
    if-eqz v28, :cond_15

    const/4 v2, 0x0

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    .line 730
    :cond_15
    :goto_b
    if-nez v2, :cond_16

    .line 734
    const-string v2, "kh\u00f4ng ph\u1ea3n h\u1ed3i t\u1eeb trang b\u00e0n"

    .line 730
    :cond_16
    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 736
    const-string v2, "table_not_clear"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v9

    .line 737
    :cond_17
    sget-object v2, Lcom/bcr/android/core/Runner;->FATAL_PLACE_ERRORS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    .line 739
    :cond_18
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bcr/android/core/Runner;->readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 740
    .local v2, "amount":Ljava/lang/Double;
    const-string v3, "bet_interrupted"

    if-nez v2, :cond_19

    .line 741
    const-string v4, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c ti\u1ec1n th\u1ef1c t\u1ebf trong \u00f4; d\u1eebng \u0111\u1ec3 tr\u00e1nh ghi nh\u1eadn thi\u1ebfu ho\u1eb7c \u0111\u1eb7t tr\u00f9ng."

    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 742
    return-object v3

    .line 744
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v33

    const-wide/high16 v35, 0x3fe0000000000000L    # 0.5

    add-double v33, v33, v35

    cmpl-double v5, v30, v33

    if-lez v5, :cond_1a

    .line 745
    sget-object v4, Lcom/bcr/android/model/Method;->INSTANCE:Lcom/bcr/android/model/Method;

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bcr/android/model/Method;->sideName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v5, v2}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    .line 746
    sget-object v6, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u00d4 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " \u0111ang c\u00f3 "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VN2, v\u01b0\u1ee3t m\u1ee9c d\u1ef1 ki\u1ebfn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VN2; d\u1eebng \u0111\u1ec3 ki\u1ec3m tra."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 745
    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 747
    return-object v3

    .line 749
    :cond_1a
    move-object/from16 v28, v6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    .end local v8    # "target":Lcom/bcr/android/web/Bridge$Reply;
    .local v30, "target":Lcom/bcr/android/web/Bridge$Reply;
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcom/bcr/android/core/RunnerKt;->isStakeConfirmed(DD)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 750
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    .line 751
    nop

    .line 752
    sget-object v4, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v4, v2}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0110\u00e3 x\u00e1c nh\u1eadn \u0111\u1ee7 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VN2 tr\u00ean \u00f4."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 753
    nop

    .line 750
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v7}, Lcom/bcr/android/model/Session;->markPlaced(ZLjava/lang/String;Lcom/bcr/android/model/Plan;)Z

    .line 755
    return-object v28

    .line 757
    :cond_1b
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 758
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v17

    if-lez v5, :cond_1c

    move-object v4, v3

    :cond_1c
    return-object v4

    .line 760
    :cond_1d
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return-object v3

    .line 761
    :cond_1e
    sget-object v5, Lcom/bcr/android/core/Runner;->BET_NOT_READY_ERRORS:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 762
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v17

    if-lez v4, :cond_1f

    move-object v9, v3

    goto :goto_c

    :cond_1f
    move-object/from16 v9, v31

    :goto_c
    return-object v9

    .line 765
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v17

    if-lez v5, :cond_21

    .line 766
    invoke-virtual/range {v30 .. v30}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v0, v7, v5, v8, v9}, Lcom/bcr/android/core/Runner;->completeRemainingStake(Lcom/bcr/android/model/Plan;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "completion":Ljava/lang/String;
    if-eqz v5, :cond_21

    return-object v5

    .line 770
    .end local v5    # "completion":Ljava/lang/String;
    :cond_21
    if-eqz v27, :cond_22

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v5, v5, v17

    if-gtz v5, :cond_22

    .line 771
    const-string v4, "Trang b\u00e1o \u0111\u1eb7t xong nh\u01b0ng \u00f4 c\u01b0\u1ee3c ch\u01b0a c\u00f3 chip; ch\u01b0a ghi nh\u1eadn l\u01b0\u1ee3t."

    iput-object v4, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 772
    return-object v3

    .line 776
    :cond_22
    nop

    .line 775
    move-object v5, v1

    .end local v1    # "reason":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    .end local v2    # "amount":Ljava/lang/Double;
    .local v6, "amount":Ljava/lang/Double;
    invoke-virtual/range {v30 .. v30}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v2

    move-object v8, v5

    .end local v5    # "reason":Ljava/lang/String;
    .local v8, "reason":Ljava/lang/String;
    const/4 v5, 0x4

    move-object v9, v6

    .end local v6    # "amount":Ljava/lang/Double;
    .local v9, "amount":Ljava/lang/Double;
    const/4 v6, 0x0

    move-object/from16 v34, v3

    move-object/from16 v33, v4

    const-wide/16 v3, 0x0

    move-object/from16 v35, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v35

    move-object/from16 v35, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v35

    move-object/from16 v35, v28

    move-object/from16 v28, v11

    move-object/from16 v11, v35

    move-object/from16 v35, v33

    move-object/from16 v33, v12

    move-object/from16 v12, v35

    move-wide/from16 v39, v14

    move-object/from16 v14, v34

    move-wide/from16 v34, v39

    .end local v8    # "reason":Ljava/lang/String;
    .end local v9    # "amount":Ljava/lang/Double;
    .end local v11    # "chipPlan":Ljava/util/List;
    .end local v12    # "chipPlanJson":Lorg/json/JSONArray;
    .end local v14    # "placeTimeoutMs":J
    .local v22, "reason":Ljava/lang/String;
    .local v23, "amount":Ljava/lang/Double;
    .local v28, "chipPlan":Ljava/util/List;
    .local v33, "chipPlanJson":Lorg/json/JSONArray;
    .local v34, "placeTimeoutMs":J
    invoke-static/range {v0 .. v6}, Lcom/bcr/android/core/Runner;->readChips$default(Lcom/bcr/android/core/Runner;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_23

    .line 775
    nop

    .line 776
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 775
    nop

    .line 776
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_d

    :cond_23
    const/4 v1, 0x0

    .line 775
    :goto_d
    nop

    .line 777
    .local v1, "readyForTouch":Lorg/json/JSONObject;
    if-eqz v1, :cond_24

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_24

    move/from16 v29, v5

    goto :goto_e

    :cond_24
    const/16 v29, 0x0

    :goto_e
    if-nez v29, :cond_2a

    .line 778
    if-eqz v1, :cond_25

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_25
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_26

    move-object/from16 v16, v2

    :cond_26
    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    .line 779
    .local v2, "$i$a$-ifBlank-Runner$tryPlace$4\\9\\778\\0":I
    nop

    .line 778
    .end local v2    # "$i$a$-ifBlank-Runner$tryPlace$4\\9\\778\\0":I
    const-string v16, "C\u1eeda c\u01b0\u1ee3c/chip kh\u00f4ng c\u00f2n s\u1eb5n s\u00e0ng; ch\u01b0a th\u1eed b\u1ea5m c\u1ea3m \u1ee9ng."

    :cond_27
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/bcr/android/core/Runner;->lastPlaceNote:Ljava/lang/String;

    .line 781
    if-eqz v1, :cond_28

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_28
    const/4 v11, 0x0

    :goto_10
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 782
    move-object v9, v12

    goto :goto_11

    .line 784
    :cond_29
    move-object/from16 v9, v31

    .line 781
    :goto_11
    return-object v9

    .line 788
    :cond_2a
    invoke-virtual/range {v30 .. v30}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/bcr/android/core/Runner;->retryWithTouch(Lcom/bcr/android/model/Plan;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "touchResult":Ljava/lang/String;
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v11

    .line 790
    :cond_2b
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 791
    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/bcr/android/core/Runner;->readPlacedAmount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 792
    .local v3, "afterTouch":Ljava/lang/Double;
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v17

    if-lez v4, :cond_2c

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v7}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v8

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2c

    .line 793
    invoke-virtual/range {v30 .. v30}, Lcom/bcr/android/web/Bridge$Reply;->getFrameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v0, v7, v4, v5, v6}, Lcom/bcr/android/core/Runner;->completeRemainingStake(Lcom/bcr/android/model/Plan;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "completion":Ljava/lang/String;
    if-eqz v4, :cond_2c

    return-object v4

    .line 796
    .end local v4    # "completion":Ljava/lang/String;
    :cond_2c
    return-object v14

    .line 798
    .end local v3    # "afterTouch":Ljava/lang/Double;
    :cond_2d
    if-eqz v2, :cond_2e

    return-object v2

    .line 799
    :cond_2e
    return-object v22
.end method

.method static final tryPlace$lambda$26(Lcom/bcr/android/model/Plan;Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 3
    .param p0, "$plan"    # Lcom/bcr/android/model/Plan;
    .param p1, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/bcr/android/web/Bridge;->Companion:Lcom/bcr/android/web/Bridge$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bcr/android/web/Bridge$Companion;->chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final tryPlace$lambda$31(Lcom/bcr/android/web/Bridge$Reply;)Z
    .locals 3
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static final tryPlace$lambda$33(Lcom/bcr/android/web/Bridge$Reply;)Ljava/lang/String;
    .locals 5
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "reason"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1169
    .local v2, "p0\\1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 727
    .local v3, "$i$a$-takeIf-Runner$tryPlace$reason$1$1\\1\\727\\0":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v2    # "p0\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-Runner$tryPlace$reason$1$1\\1\\727\\0":I
    if-nez v4, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method static final tryPlace$lambda$35(Lcom/bcr/android/web/Bridge$Reply;)Ljava/lang/String;
    .locals 5
    .param p0, "it"    # Lcom/bcr/android/web/Bridge$Reply;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "note"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1169
    .local v2, "p0\\1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 731
    .local v3, "$i$a$-takeIf-Runner$tryPlace$2$1\\1\\731\\0":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v2    # "p0\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-Runner$tryPlace$2$1\\1\\731\\0":I
    if-nez v4, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private final waitForTable()Lcom/bcr/android/core/Runner$TableScan;
    .locals 8

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xafc8

    add-long/2addr v0, v2

    .line 407
    .local v0, "deadline":J
    const/4 v2, 0x0

    .line 408
    .local v2, "triedAutoEnter":Z
    const/4 v3, 0x0

    .line 409
    .local v3, "waited":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gez v4, :cond_5

    .line 410
    invoke-virtual {p0}, Lcom/bcr/android/core/Runner;->scanTable()Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v4

    .line 411
    .local v4, "scan":Lcom/bcr/android/core/Runner$TableScan;
    if-eqz v4, :cond_1

    .line 414
    return-object v4

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->inTableByUrl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 416
    const-string v6, "B\u00e0n \u0111ang t\u1ea3i\u2026"

    iput-object v6, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 417
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    goto :goto_1

    .line 418
    :cond_2
    if-nez v2, :cond_3

    .line 420
    const/4 v2, 0x1

    .line 421
    const-string v6, "\u0110ang t\u00ecm v\u00e0 m\u1edf m\u1ed9t b\u00e0n Baccarat\u2026"

    iput-object v6, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 423
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->autoEnterTable()Z

    .line 425
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_4

    return-object v5

    .line 426
    :cond_4
    const-wide/16 v5, 0x384

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 427
    add-int/lit16 v3, v3, 0x384

    .line 428
    rem-int/lit16 v5, v3, 0xa8c

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .end local v4    # "scan":Lcom/bcr/android/core/Runner$TableScan;
    goto :goto_0

    .line 430
    :cond_5
    return-object v5
.end method


# virtual methods
.method public final addCapital(D)Lkotlin/Pair;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->getMoney()Lcom/bcr/android/model/MoneyBook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bcr/android/model/MoneyBook;->syncCapital(D)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "ok":Z
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "note":Ljava/lang/String;
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    return-object v2
.end method

.method public final applyConfig(DI)Lkotlin/Pair;
    .locals 29
    .param p1, "baseStake"    # D
    .param p3, "hands"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    .line 183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 182
    if-eqz v0, :cond_0

    .line 183
    const-string v0, "\u0110ang ch\u1ea1y \u2014 b\u1ea5m D\u1eeaNG r\u1ed3i m\u1edbi \u0111\u1ed5i c\u1ea5u h\u00ecnh."

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v5, v7

    const/4 v5, 0x1

    if-gtz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    const-wide/16 v6, 0x0

    cmpl-double v0, p1, v6

    if-lez v0, :cond_2

    move-wide/from16 v6, p1

    goto :goto_1

    :cond_2
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 186
    .local v6, "base":D
    :goto_1
    if-gtz v2, :cond_3

    sget-object v0, Lcom/bcr/android/model/Method;->INSTANCE:Lcom/bcr/android/model/Method;

    invoke-virtual {v0}, Lcom/bcr/android/model/Method;->getDEFAULT_LADDER()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 187
    :cond_3
    const/16 v0, 0x14

    invoke-static {v2, v5, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 186
    :goto_2
    move v8, v0

    .line 188
    .local v8, "steps":I
    invoke-static {v3, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1162
    .local v9, "$i$f$map\\1\\188":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\2":Ljava/util/Collection;
    move-object v11, v0

    .local v11, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 1163
    .local v12, "$i$f$mapTo\\2\\1162":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v13

    check-cast v14, Lkotlin/collections/IntIterator;

    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v14

    .line 1164
    .local v14, "item\\2":I
    move v15, v14

    .local v15, "it\\3":I
    const/16 v16, 0x0

    .line 188
    .local v16, "$i$a$-map-Runner$applyConfig$ladder$1\\3\\1164\\0":I
    move/from16 v17, v3

    shl-int v3, v5, v15

    move/from16 v18, v5

    move-wide/from16 v19, v6

    .end local v6    # "base":D
    .local v19, "base":D
    int-to-double v5, v3

    mul-double v6, v19, v5

    .end local v15    # "it\\3":I
    .end local v16    # "$i$a$-map-Runner$applyConfig$ladder$1\\3\\1164\\0":I
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1164
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move/from16 v5, v18

    move-wide/from16 v6, v19

    goto :goto_3

    .line 1165
    .end local v14    # "item\\2":I
    .end local v19    # "base":D
    .restart local v6    # "base":D
    :cond_4
    move/from16 v17, v3

    move/from16 v18, v5

    move-wide/from16 v19, v6

    .end local v6    # "base":D
    .end local v10    # "destination\\2":Ljava/util/Collection;
    .end local v11    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo\\2\\1162":I
    .restart local v19    # "base":D
    move-object v3, v10

    check-cast v3, Ljava/util/List;

    .line 1162
    nop

    .line 188
    .end local v0    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map\\1\\188":I
    move-object/from16 v22, v3

    .line 189
    .local v22, "ladder":Ljava/util/List;
    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v5

    .line 190
    .local v5, "needed":D
    nop

    .line 191
    :try_start_0
    iget-object v0, v1, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->getMoney()Lcom/bcr/android/model/MoneyBook;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/bcr/android/model/MoneyBook;->reset(D)V

    .line 192
    iget-object v0, v1, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v27, 0x12

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v28}, Lcom/bcr/android/model/Session;->configure$default(Lcom/bcr/android/model/Session;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 193
    invoke-direct {v1}, Lcom/bcr/android/core/Runner;->publish()V

    .line 194
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    .line 195
    sget-object v7, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static/range {v22 .. v22}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v7, v9}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static/range {v22 .. v22}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v9, v10}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v9

    .line 196
    sget-object v10, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u0110\u00e3 \u00e1p d\u1ee5ng: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tay g\u1ea5p th\u1ebfp c\u1ee7a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " ("

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " \u2192 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") \u00b7 v\u1ed1n c\u1ea7n "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C\u1ea5u h\u00ecnh kh\u00f4ng h\u1ee3p l\u1ec7: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    move-object v0, v3

    .line 190
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    return-object v0
.end method

.method public final getAutoPlace()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/bcr/android/core/Runner;->autoPlace:Z

    return v0
.end method

.method public final getBusy()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/bcr/android/core/Runner;->busy:Z

    return v0
.end method

.method public final getClickDelayMs()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    return v0
.end method

.method public final getFrames()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/bcr/android/core/Runner;->frames:I

    return v0
.end method

.method public final getLastAction()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveInTable()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    return v0
.end method

.method public final getLiveLetters()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveTableId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveTableName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveWallet()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnTapRequested()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->onTapRequested:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getReadNote()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/bcr/android/model/Session;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final lobbyTiles()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bcr/android/core/Runner$Tile;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 274
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 273
    new-instance v7, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda8;-><init>(Lcom/bcr/android/core/Runner;)V

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v1, "scan"

    const-wide/16 v3, 0xa28

    const-wide/16 v5, 0x96

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "replies":Ljava/util/List;
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    invoke-virtual {v1, v0}, Lcom/bcr/android/web/Bridge;->lobbyReply(Ljava/util/List;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 278
    .local v1, "result":Lorg/json/JSONObject;
    const-string v2, "lobby"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "tiles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 279
    .local v2, "tiles":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 280
    .local v3, "out":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    .line 281
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 282
    .local v6, "tile":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v9

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1169
    const/4 v7, 0x0

    .line 287
    .local v7, "$i$a$-ifBlank-Runner$lobbyTiles$1\\1\\287\\0":I
    move-object v7, v9

    .end local v7    # "$i$a$-ifBlank-Runner$lobbyTiles$1\\1\\287\\0":I
    :cond_0
    const-string v8, "ifBlank(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 288
    const-string v7, "game_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "optString(...)"

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    const-string v7, "lightning"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 290
    const-string v7, "special"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 285
    new-instance v8, Lcom/bcr/android/core/Runner$Tile;

    invoke-direct/range {v8 .. v13}, Lcom/bcr/android/core/Runner$Tile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 284
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v6    # "tile":Lorg/json/JSONObject;
    .end local v9    # "id":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    .end local v4    # "i":I
    :cond_2
    return-object v3

    .line 278
    .end local v2    # "tiles":Lorg/json/JSONArray;
    .end local v3    # "out":Ljava/util/List;
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 277
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final pickStandardTable(Ljava/util/List;)Lcom/bcr/android/core/Runner$Tile;
    .locals 16
    .param p1, "tiles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bcr/android/core/Runner$Tile;",
            ">;)",
            "Lcom/bcr/android/core/Runner$Tile;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "tiles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 302
    nop

    .local v1, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1172
    .local v2, "$i$f$filter\\1\\302":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1173
    .local v5, "$i$f$filterTo\\2\\1172":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element\\2":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/bcr/android/core/Runner$Tile;

    .local v8, "tile\\3":Lcom/bcr/android/core/Runner$Tile;
    const/4 v9, 0x0

    .line 303
    .local v9, "$i$a$-filter-Runner$pickStandardTable$1\\3\\1173\\0":I
    invoke-virtual {v8}, Lcom/bcr/android/core/Runner$Tile;->getLightning()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_3

    invoke-virtual {v8}, Lcom/bcr/android/core/Runner$Tile;->getSpecial()Z

    move-result v10

    if-nez v10, :cond_3

    .line 304
    invoke-virtual {v8}, Lcom/bcr/android/core/Runner$Tile;->getGameType()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "toLowerCase(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .local v10, "type\\3":Ljava/lang/String;
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v11

    :goto_1
    if-nez v12, :cond_2

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    const-string v14, "baccarat"

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x2

    const/4 v13, 0x0

    invoke-static {v12, v14, v11, v15, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    .line 1173
    .end local v8    # "tile\\3":Lcom/bcr/android/core/Runner$Tile;
    .end local v9    # "$i$a$-filter-Runner$pickStandardTable$1\\3\\1173\\0":I
    .end local v10    # "type\\3":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v11, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    .end local v7    # "element\\2":Ljava/lang/Object;
    :cond_4
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v4    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo\\2\\1172":I
    check-cast v3, Ljava/util/List;

    .line 1172
    nop

    .line 307
    .end local v1    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter\\1\\302":I
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bcr/android/core/Runner$Tile;

    return-object v1
.end method

.method public final readChips(Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 9
    .param p1, "side"    # Ljava/lang/String;
    .param p2, "targetFrameId"    # Ljava/lang/String;
    .param p3, "timeoutMs"    # J

    .line 315
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 316
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 315
    new-instance v7, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda6;

    invoke-direct {v7, p1}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 318
    nop

    .line 315
    const-string v1, "chips"

    const-wide/16 v5, 0x64

    move-object v8, p2

    move-wide v3, p3

    .end local p2    # "targetFrameId":Ljava/lang/String;
    .end local p3    # "timeoutMs":J
    .local v3, "timeoutMs":J
    .local v8, "targetFrameId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v8}, Lcom/bcr/android/web/Bridge;->call(Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 320
    .local p2, "replies":Ljava/util/List;
    sget-object p3, Lcom/bcr/android/web/Bridge;->Companion:Lcom/bcr/android/web/Bridge$Companion;

    invoke-virtual {p3, p2, p1}, Lcom/bcr/android/web/Bridge$Companion;->chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return-object p3
.end method

.method public final resetSession(D)V
    .locals 9
    .param p1, "capital"    # D

    .line 165
    const-string v0, "\u0110\u00e3 t\u1ea1o phi\u00ean m\u1edbi."

    invoke-virtual {p0, v0}, Lcom/bcr/android/core/Runner;->stop(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0}, Lcom/bcr/android/model/Session;->getMoney()Lcom/bcr/android/model/MoneyBook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bcr/android/model/MoneyBook;->reset(D)V

    .line 167
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bcr/android/model/Session;->configure$default(Lcom/bcr/android/model/Session;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 169
    return-void
.end method

.method public final scanTable()Lcom/bcr/android/core/Runner$TableScan;
    .locals 13

    .line 225
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    .line 226
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda4;-><init>()V

    .line 225
    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v1, "scan"

    const-wide/16 v3, 0xc80

    const-wide/16 v5, 0xb4

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/bcr/android/web/Bridge;->call$default(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Lorg/json/JSONObject;JJLkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "replies":Ljava/util/List;
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    invoke-virtual {v1}, Lcom/bcr/android/web/Bridge;->knownFrameCount()I

    move-result v1

    iput v1, p0, Lcom/bcr/android/core/Runner;->frames:I

    .line 237
    nop

    .line 236
    iget-object v1, p0, Lcom/bcr/android/core/Runner;->bridge:Lcom/bcr/android/web/Bridge;

    invoke-virtual {v1, v0}, Lcom/bcr/android/web/Bridge;->tableReply(Ljava/util/List;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v1

    .line 237
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 236
    nop

    .line 237
    move-object v5, v1

    .line 1169
    .local v5, "it\\1":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v6, 0x0

    .line 237
    .local v6, "$i$a$-takeIf-Runner$scanTable$withRoad$1\\1\\237\\0":I
    invoke-virtual {v5}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "tables"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-lez v7, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v4

    .end local v5    # "it\\1":Lcom/bcr/android/web/Bridge$Reply;
    .end local v6    # "$i$a$-takeIf-Runner$scanTable$withRoad$1\\1\\237\\0":I
    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 236
    :goto_2
    nop

    .line 238
    .local v1, "withRoad":Lcom/bcr/android/web/Bridge$Reply;
    if-eqz v1, :cond_3

    .line 239
    const/4 v2, 0x2

    invoke-static {p0, v1, v4, v2, v3}, Lcom/bcr/android/core/Runner;->fromReply$default(Lcom/bcr/android/core/Runner;Lcom/bcr/android/web/Bridge$Reply;ZILjava/lang/Object;)Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v2

    return-object v2

    .line 243
    :cond_3
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$firstOrNull\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1170
    .local v6, "$i$f$firstOrNull\\2\\243":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bcr/android/web/Bridge$Reply;

    .local v9, "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v10, 0x0

    .line 244
    .local v10, "$i$a$-firstOrNull-Runner$scanTable$inTable$1\\3\\1170\\0":I
    invoke-virtual {v9}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v12, "in_table"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-ne v11, v2, :cond_5

    move v11, v2

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_3
    if-eqz v11, :cond_6

    move v9, v2

    goto :goto_4

    :cond_6
    move v9, v4

    .line 1170
    .end local v9    # "it\\3":Lcom/bcr/android/web/Bridge$Reply;
    .end local v10    # "$i$a$-firstOrNull-Runner$scanTable$inTable$1\\3\\1170\\0":I
    :goto_4
    if-eqz v9, :cond_4

    goto :goto_5

    .line 1171
    .end local v8    # "element\\2":Ljava/lang/Object;
    :cond_7
    move-object v8, v3

    .line 243
    .end local v5    # "$this$firstOrNull\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$firstOrNull\\2\\243":I
    :goto_5
    move-object v4, v8

    check-cast v4, Lcom/bcr/android/web/Bridge$Reply;

    .line 246
    .local v4, "inTable":Lcom/bcr/android/web/Bridge$Reply;
    if-eqz v4, :cond_8

    .line 247
    invoke-direct {p0, v4, v2}, Lcom/bcr/android/core/Runner;->fromReply(Lcom/bcr/android/web/Bridge$Reply;Z)Lcom/bcr/android/core/Runner$TableScan;

    move-result-object v2

    return-object v2

    .line 249
    :cond_8
    return-object v3
.end method

.method public final setAutoPlace(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/bcr/android/core/Runner;->autoPlace:Z

    return-void
.end method

.method public final setBusy(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/bcr/android/core/Runner;->busy:Z

    return-void
.end method

.method public final setClickDelayMs(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 104
    iput p1, p0, Lcom/bcr/android/core/Runner;->clickDelayMs:I

    return-void
.end method

.method public final setFrames(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 114
    iput p1, p0, Lcom/bcr/android/core/Runner;->frames:I

    return-void
.end method

.method public final setLastAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->lastAction:Ljava/lang/String;

    return-void
.end method

.method public final setLiveInTable(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    return-void
.end method

.method public final setLiveLetters(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    return-void
.end method

.method public final setLiveTableId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    return-void
.end method

.method public final setLiveTableName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    return-void
.end method

.method public final setLiveWallet(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    return-void
.end method

.method public final setOnTapRequested(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->onTapRequested:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setReadNote(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    return-void
.end method

.method public final start()Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bcr/android/core/Runner;->entered:Z

    .line 137
    const-string v2, ""

    iput-object v2, p0, Lcom/bcr/android/core/Runner;->stableLetters:Ljava/lang/String;

    .line 138
    iput v0, p0, Lcom/bcr/android/core/Runner;->stableCount:I

    .line 139
    iput-object v2, p0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda5;-><init>(Lcom/bcr/android/core/Runner;)V

    const-string v3, "bcr-runner"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v0

    .local v2, "$this$start_u24lambda_u242\\1":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$a$-apply-Runner$start$2\\1\\140\\0":I
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 143
    nop

    .line 140
    .end local v2    # "$this$start_u24lambda_u242\\1":Ljava/lang/Thread;
    .end local v3    # "$i$a$-apply-Runner$start$2\\1\\140\\0":I
    iput-object v0, p0, Lcom/bcr/android/core/Runner;->thread:Ljava/lang/Thread;

    .line 144
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 145
    return v1
.end method

.method public final status()Lcom/bcr/android/core/Runner$Status;
    .locals 38

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v1}, Lcom/bcr/android/model/Session;->plan()Lcom/bcr/android/model/Plan;

    move-result-object v1

    .line 1048
    .local v1, "plan":Lcom/bcr/android/model/Plan;
    iget-object v2, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v2}, Lcom/bcr/android/model/Session;->getMoney()Lcom/bcr/android/model/MoneyBook;

    move-result-object v2

    .line 1049
    .local v2, "money":Lcom/bcr/android/model/MoneyBook;
    nop

    .line 1050
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 1051
    iget-boolean v6, v0, Lcom/bcr/android/core/Runner;->liveInTable:Z

    .line 1052
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->getTableName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    const/4 v3, 0x0

    .line 1052
    .local v3, "$i$a$-ifBlank-Runner$status$1\\1\\1052\\0":I
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->liveTableName:Ljava/lang/String;

    .end local v3    # "$i$a$-ifBlank-Runner$status$1\\1\\1052\\0":I
    :cond_0
    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 1053
    iget-object v8, v0, Lcom/bcr/android/core/Runner;->liveTableId:Ljava/lang/String;

    .line 1054
    iget-object v9, v0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    .line 1055
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->liveLetters:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    .line 1056
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->getNote()Ljava/lang/String;

    move-result-object v11

    .line 1057
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1058
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getSide()Ljava/lang/String;

    move-result-object v13

    .line 1059
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getStake()D

    move-result-wide v14

    .line 1060
    invoke-virtual {v1}, Lcom/bcr/android/model/Plan;->getReason()Ljava/lang/String;

    move-result-object v16

    .line 1061
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->getFixedStake()D

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmpl-double v3, v3, v17

    if-lez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->getMethod()Lcom/bcr/android/model/MethodState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bcr/android/model/MethodState;->getLadderStep()I

    move-result v3

    :goto_0
    move/from16 v17, v3

    .line 1062
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v3}, Lcom/bcr/android/model/Session;->getLadder()Ljava/util/List;

    move-result-object v18

    .line 1063
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getBalance()D

    move-result-wide v19

    .line 1064
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getStartCapital()D

    move-result-wide v21

    .line 1065
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getProfit()D

    move-result-wide v23

    .line 1066
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getWins()I

    move-result v25

    .line 1067
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getLosses()I

    move-result v26

    .line 1068
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getPushes()I

    move-result v27

    .line 1069
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getHandsPlayed()I

    move-result v28

    .line 1070
    invoke-virtual {v2}, Lcom/bcr/android/model/MoneyBook;->getBlocked()Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v29, v3

    .line 1071
    iget-object v3, v0, Lcom/bcr/android/core/Runner;->liveWallet:Ljava/lang/String;

    .line 1072
    iget-object v4, v0, Lcom/bcr/android/core/Runner;->lastError:Ljava/lang/String;

    .line 1073
    move-object/from16 v37, v1

    .end local v1    # "plan":Lcom/bcr/android/model/Plan;
    .local v37, "plan":Lcom/bcr/android/model/Plan;
    iget v1, v0, Lcom/bcr/android/core/Runner;->frames:I

    .line 1074
    move/from16 v32, v1

    iget-object v1, v0, Lcom/bcr/android/core/Runner;->readNote:Ljava/lang/String;

    .line 1075
    move-object/from16 v33, v1

    iget-boolean v1, v0, Lcom/bcr/android/core/Runner;->busy:Z

    .line 1076
    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/bcr/android/core/Runner;->autoPlace:Z

    .line 1077
    move/from16 v35, v1

    iget-object v1, v0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v1}, Lcom/bcr/android/model/Session;->getLog()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/16 v0, 0x28

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v36

    .line 1049
    move-object/from16 v31, v4

    new-instance v4, Lcom/bcr/android/core/Runner$Status;

    move-object/from16 v30, v3

    invoke-direct/range {v4 .. v36}, Lcom/bcr/android/core/Runner$Status;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/util/List;DDDIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/util/List;)V

    return-object v4
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->session:Lcom/bcr/android/model/Session;

    invoke-virtual {v0, p1}, Lcom/bcr/android/model/Session;->pause(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/bcr/android/core/Runner;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bcr/android/core/Runner;->thread:Ljava/lang/Thread;

    .line 153
    invoke-direct {p0}, Lcom/bcr/android/core/Runner;->publish()V

    .line 154
    return-void
.end method
