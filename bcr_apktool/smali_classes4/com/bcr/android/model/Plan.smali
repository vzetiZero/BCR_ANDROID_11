.class public final Lcom/bcr/android/model/Plan;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u00083\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0006H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\tH\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\rH\u00c6\u0003J\t\u0010;\u001a\u00020\u000fH\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\rH\u00c6\u0003J\t\u0010>\u001a\u00020\rH\u00c6\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010/J\u0092\u0001\u0010@\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00020C2\u0008\u0010D\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010E\u001a\u00020\tH\u00d6\u0001J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0017\"\u0004\u0008\'\u0010(R\u001a\u0010\u0011\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010!\"\u0004\u0008*\u0010+R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010!\"\u0004\u0008-\u0010+R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00102\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u0006G"
    }
    d2 = {
        "Lcom/bcr/android/model/Plan;",
        "",
        "action",
        "",
        "side",
        "stake",
        "",
        "reason",
        "ladderStep",
        "",
        "nextSide",
        "baseline",
        "armedAt",
        "",
        "placed",
        "Lcom/bcr/android/model/Placement;",
        "placeNote",
        "placingAt",
        "confirmedAt",
        "firstResultSeenAt",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)V",
        "getAction",
        "()Ljava/lang/String;",
        "getSide",
        "getStake",
        "()D",
        "getReason",
        "getLadderStep",
        "()I",
        "getNextSide",
        "getBaseline",
        "getArmedAt",
        "()J",
        "getPlaced",
        "()Lcom/bcr/android/model/Placement;",
        "setPlaced",
        "(Lcom/bcr/android/model/Placement;)V",
        "getPlaceNote",
        "setPlaceNote",
        "(Ljava/lang/String;)V",
        "getPlacingAt",
        "setPlacingAt",
        "(J)V",
        "getConfirmedAt",
        "setConfirmedAt",
        "getFirstResultSeenAt",
        "()Ljava/lang/Long;",
        "setFirstResultSeenAt",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)Lcom/bcr/android/model/Plan;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final action:Ljava/lang/String;

.field private final armedAt:J

.field private final baseline:Ljava/lang/String;

.field private confirmedAt:J

.field private firstResultSeenAt:Ljava/lang/Long;

.field private final ladderStep:I

.field private final nextSide:Ljava/lang/String;

.field private placeNote:Ljava/lang/String;

.field private placed:Lcom/bcr/android/model/Placement;

.field private placingAt:J

.field private final reason:Ljava/lang/String;

.field private final side:Ljava/lang/String;

.field private final stake:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)V
    .locals 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "stake"    # D
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "ladderStep"    # I
    .param p7, "nextSide"    # Ljava/lang/String;
    .param p8, "baseline"    # Ljava/lang/String;
    .param p9, "armedAt"    # J
    .param p11, "placed"    # Lcom/bcr/android/model/Placement;
    .param p12, "placeNote"    # Ljava/lang/String;
    .param p13, "placingAt"    # J
    .param p15, "confirmedAt"    # J
    .param p17, "firstResultSeenAt"    # Ljava/lang/Long;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    const-string v8, "action"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "side"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "reason"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "nextSide"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "baseline"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "placed"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "placeNote"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object v1, v0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    .line 475
    iput-object v2, v0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    .line 476
    move-wide/from16 v8, p3

    iput-wide v8, v0, Lcom/bcr/android/model/Plan;->stake:D

    .line 477
    iput-object v3, v0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    .line 478
    move/from16 v10, p6

    iput v10, v0, Lcom/bcr/android/model/Plan;->ladderStep:I

    .line 479
    iput-object v4, v0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    .line 480
    iput-object v5, v0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    .line 481
    move-wide/from16 v11, p9

    iput-wide v11, v0, Lcom/bcr/android/model/Plan;->armedAt:J

    .line 482
    iput-object v6, v0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    .line 483
    iput-object v7, v0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    .line 484
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/bcr/android/model/Plan;->placingAt:J

    .line 485
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    .line 486
    move-object/from16 v15, p17

    iput-object v15, v0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    .line 473
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    .line 473
    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x40

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 480
    move-object v11, v2

    goto :goto_0

    .line 473
    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    .line 481
    move-wide v12, v3

    goto :goto_1

    .line 473
    :cond_1
    move-wide/from16 v12, p9

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    .line 482
    sget-object v1, Lcom/bcr/android/model/Placement;->PENDING:Lcom/bcr/android/model/Placement;

    move-object v14, v1

    goto :goto_2

    .line 473
    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    .line 483
    move-object v15, v2

    goto :goto_3

    .line 473
    :cond_3
    move-object/from16 v15, p12

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    .line 484
    move-wide/from16 v16, v3

    goto :goto_4

    .line 473
    :cond_4
    move-wide/from16 v16, p13

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    .line 485
    move-wide/from16 v18, v3

    goto :goto_5

    .line 473
    :cond_5
    move-wide/from16 v18, p15

    :goto_5
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    .line 486
    const/4 v0, 0x0

    move-object/from16 v20, v0

    goto :goto_6

    .line 473
    :cond_6
    move-object/from16 v20, p17

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v20}, Lcom/bcr/android/model/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)V

    .line 487
    return-void
.end method

.method public static synthetic copy$default(Lcom/bcr/android/model/Plan;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;ILjava/lang/Object;)Lcom/bcr/android/model/Plan;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/bcr/android/model/Plan;->stake:D

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/bcr/android/model/Plan;->ladderStep:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, Lcom/bcr/android/model/Plan;->armedAt:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-wide v14, v0, Lcom/bcr/android/model/Plan;->placingAt:J

    goto :goto_a

    :cond_a
    move-wide/from16 v14, p13

    :goto_a
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    move-object/from16 p2, v3

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p15

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    move-object/from16 p18, v1

    goto :goto_c

    :cond_c
    move-object/from16 p18, p17

    :goto_c
    move-object/from16 p3, p2

    move-wide/from16 p16, v2

    move-wide/from16 p4, v4

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-wide/from16 p14, v14

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p18}, Lcom/bcr/android/model/Plan;->copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)Lcom/bcr/android/model/Plan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->placingAt:J

    return-wide v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    return-wide v0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->stake:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/bcr/android/model/Plan;->ladderStep:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->armedAt:J

    return-wide v0
.end method

.method public final component9()Lcom/bcr/android/model/Placement;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)Lcom/bcr/android/model/Plan;
    .locals 19

    const-string v0, "action"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "side"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextSide"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseline"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placed"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeNote"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bcr/android/model/Plan;

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move-wide/from16 v10, p9

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/bcr/android/model/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/bcr/android/model/Placement;Ljava/lang/String;JJLjava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bcr/android/model/Plan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bcr/android/model/Plan;

    iget-object v3, p0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/bcr/android/model/Plan;->stake:D

    iget-wide v5, v1, Lcom/bcr/android/model/Plan;->stake:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/bcr/android/model/Plan;->ladderStep:I

    iget v4, v1, Lcom/bcr/android/model/Plan;->ladderStep:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/bcr/android/model/Plan;->armedAt:J

    iget-wide v5, v1, Lcom/bcr/android/model/Plan;->armedAt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/bcr/android/model/Plan;->placingAt:J

    iget-wide v5, v1, Lcom/bcr/android/model/Plan;->placingAt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    iget-wide v5, v1, Lcom/bcr/android/model/Plan;->confirmedAt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    iget-object v1, v1, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getArmedAt()J
    .locals 2

    .line 481
    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->armedAt:J

    return-wide v0
.end method

.method public final getBaseline()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfirmedAt()J
    .locals 2

    .line 485
    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    return-wide v0
.end method

.method public final getFirstResultSeenAt()Ljava/lang/Long;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLadderStep()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/bcr/android/model/Plan;->ladderStep:I

    return v0
.end method

.method public final getNextSide()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceNote()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaced()Lcom/bcr/android/model/Placement;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    return-object v0
.end method

.method public final getPlacingAt()J
    .locals 2

    .line 484
    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->placingAt:J

    return-wide v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSide()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    return-object v0
.end method

.method public final getStake()D
    .locals 2

    .line 476
    iget-wide v0, p0, Lcom/bcr/android/model/Plan;->stake:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/Plan;->stake:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bcr/android/model/Plan;->ladderStep:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/Plan;->armedAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    invoke-virtual {v2}, Lcom/bcr/android/model/Placement;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/Plan;->placingAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final setConfirmedAt(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 485
    iput-wide p1, p0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    return-void
.end method

.method public final setFirstResultSeenAt(Ljava/lang/Long;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Long;

    .line 486
    iput-object p1, p0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    return-void
.end method

.method public final setPlaceNote(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iput-object p1, p0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    return-void
.end method

.method public final setPlaced(Lcom/bcr/android/model/Placement;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bcr/android/model/Placement;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iput-object p1, p0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    return-void
.end method

.method public final setPlacingAt(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 484
    iput-wide p1, p0, Lcom/bcr/android/model/Plan;->placingAt:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bcr/android/model/Plan;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/bcr/android/model/Plan;->side:Ljava/lang/String;

    iget-wide v3, v0, Lcom/bcr/android/model/Plan;->stake:D

    iget-object v5, v0, Lcom/bcr/android/model/Plan;->reason:Ljava/lang/String;

    iget v6, v0, Lcom/bcr/android/model/Plan;->ladderStep:I

    iget-object v7, v0, Lcom/bcr/android/model/Plan;->nextSide:Ljava/lang/String;

    iget-object v8, v0, Lcom/bcr/android/model/Plan;->baseline:Ljava/lang/String;

    iget-wide v9, v0, Lcom/bcr/android/model/Plan;->armedAt:J

    iget-object v11, v0, Lcom/bcr/android/model/Plan;->placed:Lcom/bcr/android/model/Placement;

    iget-object v12, v0, Lcom/bcr/android/model/Plan;->placeNote:Ljava/lang/String;

    iget-wide v13, v0, Lcom/bcr/android/model/Plan;->placingAt:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/bcr/android/model/Plan;->confirmedAt:J

    move-wide/from16 v17, v15

    iget-object v15, v0, Lcom/bcr/android/model/Plan;->firstResultSeenAt:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "Plan(action="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", side="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ladderStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", armedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placeNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placingAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confirmedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstResultSeenAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
