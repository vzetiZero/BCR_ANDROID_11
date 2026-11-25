.class public final Lcom/bcr/android/model/HandRecord;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010$\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\'J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\t\u0010+\u001a\u00020\u0008H\u00c6\u0003J\t\u0010,\u001a\u00020\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\u0005H\u00c6\u0003J\t\u0010.\u001a\u00020\u000cH\u00c6\u0003J\t\u0010/\u001a\u00020\u000cH\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u000cH\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\t\u00103\u001a\u00020\u0012H\u00c6\u0003J\u0081\u0001\u00104\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u00c6\u0001J\u0013\u00105\u001a\u00020\u00122\u0008\u00106\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00107\u001a\u00020\u0008H\u00d6\u0001J\t\u00108\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u00069"
    }
    d2 = {
        "Lcom/bcr/android/model/HandRecord;",
        "",
        "at",
        "",
        "table",
        "",
        "tableKey",
        "hand",
        "",
        "result",
        "bet",
        "stake",
        "",
        "delta",
        "outcome",
        "balanceAfter",
        "ladderStep",
        "placed",
        "",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZ)V",
        "getAt",
        "()J",
        "getTable",
        "()Ljava/lang/String;",
        "getTableKey",
        "getHand",
        "()I",
        "getResult",
        "getBet",
        "getStake",
        "()D",
        "getDelta",
        "getOutcome",
        "getBalanceAfter",
        "getLadderStep",
        "getPlaced",
        "()Z",
        "toMap",
        "",
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
        "copy",
        "equals",
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
.field private final at:J

.field private final balanceAfter:D

.field private final bet:Ljava/lang/String;

.field private final delta:D

.field private final hand:I

.field private final ladderStep:I

.field private final outcome:Ljava/lang/String;

.field private final placed:Z

.field private final result:Ljava/lang/String;

.field private final stake:D

.field private final table:Ljava/lang/String;

.field private final tableKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZ)V
    .locals 16
    .param p1, "at"    # J
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "tableKey"    # Ljava/lang/String;
    .param p5, "hand"    # I
    .param p6, "result"    # Ljava/lang/String;
    .param p7, "bet"    # Ljava/lang/String;
    .param p8, "stake"    # D
    .param p10, "delta"    # D
    .param p12, "outcome"    # Ljava/lang/String;
    .param p13, "balanceAfter"    # D
    .param p15, "ladderStep"    # I
    .param p16, "placed"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p12

    const-string v6, "table"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tableKey"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "result"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "bet"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "outcome"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 490
    move-wide/from16 v6, p1

    iput-wide v6, v0, Lcom/bcr/android/model/HandRecord;->at:J

    .line 491
    iput-object v1, v0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    .line 492
    iput-object v2, v0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    .line 493
    move/from16 v8, p5

    iput v8, v0, Lcom/bcr/android/model/HandRecord;->hand:I

    .line 494
    iput-object v3, v0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    .line 495
    iput-object v4, v0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    .line 496
    move-wide/from16 v9, p8

    iput-wide v9, v0, Lcom/bcr/android/model/HandRecord;->stake:D

    .line 497
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lcom/bcr/android/model/HandRecord;->delta:D

    .line 498
    iput-object v5, v0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    .line 499
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    .line 500
    move/from16 v15, p15

    iput v15, v0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    .line 501
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/bcr/android/model/HandRecord;->placed:Z

    .line 489
    return-void
.end method

.method public static synthetic copy$default(Lcom/bcr/android/model/HandRecord;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZILjava/lang/Object;)Lcom/bcr/android/model/HandRecord;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/bcr/android/model/HandRecord;->at:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/bcr/android/model/HandRecord;->hand:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lcom/bcr/android/model/HandRecord;->stake:D

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-wide v11, v0, Lcom/bcr/android/model/HandRecord;->delta:D

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-wide v14, v0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    goto :goto_9

    :cond_9
    move-wide/from16 v14, p13

    :goto_9
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    goto :goto_a

    :cond_a
    move/from16 v2, p15

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/bcr/android/model/HandRecord;->placed:Z

    move/from16 p17, v1

    goto :goto_b

    :cond_b
    move/from16 p17, p16

    :goto_b
    move-object/from16 p1, v0

    move/from16 p16, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move-wide/from16 p14, v14

    move-wide/from16 p2, v16

    invoke-virtual/range {p1 .. p17}, Lcom/bcr/android/model/HandRecord;->copy(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZ)Lcom/bcr/android/model/HandRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->at:J

    return-wide v0
.end method

.method public final component10()D
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    return-wide v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bcr/android/model/HandRecord;->placed:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/bcr/android/model/HandRecord;->hand:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->stake:D

    return-wide v0
.end method

.method public final component8()D
    .locals 2

    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->delta:D

    return-wide v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZ)Lcom/bcr/android/model/HandRecord;
    .locals 18

    const-string v0, "table"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableKey"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bet"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/bcr/android/model/HandRecord;

    move-wide/from16 v2, p1

    move/from16 v6, p5

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/bcr/android/model/HandRecord;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;DIZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bcr/android/model/HandRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bcr/android/model/HandRecord;

    iget-wide v3, p0, Lcom/bcr/android/model/HandRecord;->at:J

    iget-wide v5, v1, Lcom/bcr/android/model/HandRecord;->at:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/bcr/android/model/HandRecord;->hand:I

    iget v4, v1, Lcom/bcr/android/model/HandRecord;->hand:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/bcr/android/model/HandRecord;->stake:D

    iget-wide v5, v1, Lcom/bcr/android/model/HandRecord;->stake:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/bcr/android/model/HandRecord;->delta:D

    iget-wide v5, v1, Lcom/bcr/android/model/HandRecord;->delta:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    iget-object v4, v1, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    iget-wide v5, v1, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    iget v3, p0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    iget v4, v1, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lcom/bcr/android/model/HandRecord;->placed:Z

    iget-boolean v1, v1, Lcom/bcr/android/model/HandRecord;->placed:Z

    if-eq v3, v1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAt()J
    .locals 2

    .line 490
    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->at:J

    return-wide v0
.end method

.method public final getBalanceAfter()D
    .locals 2

    .line 499
    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    return-wide v0
.end method

.method public final getBet()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelta()D
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->delta:D

    return-wide v0
.end method

.method public final getHand()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/bcr/android/model/HandRecord;->hand:I

    return v0
.end method

.method public final getLadderStep()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    return v0
.end method

.method public final getOutcome()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaced()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/bcr/android/model/HandRecord;->placed:Z

    return v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getStake()D
    .locals 2

    .line 496
    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->stake:D

    return-wide v0
.end method

.method public final getTable()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    return-object v0
.end method

.method public final getTableKey()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/bcr/android/model/HandRecord;->at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bcr/android/model/HandRecord;->hand:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/HandRecord;->stake:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/HandRecord;->delta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/bcr/android/model/HandRecord;->placed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Pair;

    iget-wide v1, p0, Lcom/bcr/android/model/HandRecord;->at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "at"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 505
    const-string v1, "table"

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 504
    nop

    .line 506
    iget v1, p0, Lcom/bcr/android/model/HandRecord;->hand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hand"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 504
    nop

    .line 507
    const-string v1, "result"

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 504
    nop

    .line 508
    const-string v1, "bet"

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 504
    nop

    .line 509
    iget-wide v1, p0, Lcom/bcr/android/model/HandRecord;->stake:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "stake"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 504
    nop

    .line 510
    iget-wide v1, p0, Lcom/bcr/android/model/HandRecord;->delta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "delta"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 504
    nop

    .line 511
    const-string v1, "outcome"

    iget-object v2, p0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 504
    nop

    .line 512
    iget-wide v1, p0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "balance_after"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 504
    nop

    .line 513
    iget v1, p0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ladder_step"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 504
    nop

    .line 514
    iget-boolean v1, p0, Lcom/bcr/android/model/HandRecord;->placed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "placed"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 504
    nop

    .line 503
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 515
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/bcr/android/model/HandRecord;->at:J

    iget-object v3, v0, Lcom/bcr/android/model/HandRecord;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/bcr/android/model/HandRecord;->tableKey:Ljava/lang/String;

    iget v5, v0, Lcom/bcr/android/model/HandRecord;->hand:I

    iget-object v6, v0, Lcom/bcr/android/model/HandRecord;->result:Ljava/lang/String;

    iget-object v7, v0, Lcom/bcr/android/model/HandRecord;->bet:Ljava/lang/String;

    iget-wide v8, v0, Lcom/bcr/android/model/HandRecord;->stake:D

    iget-wide v10, v0, Lcom/bcr/android/model/HandRecord;->delta:D

    iget-object v12, v0, Lcom/bcr/android/model/HandRecord;->outcome:Ljava/lang/String;

    iget-wide v13, v0, Lcom/bcr/android/model/HandRecord;->balanceAfter:D

    iget v15, v0, Lcom/bcr/android/model/HandRecord;->ladderStep:I

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/bcr/android/model/HandRecord;->placed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string v15, "HandRecord(at="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tableKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", balanceAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ladderStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
