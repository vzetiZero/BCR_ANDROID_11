.class public final Lcom/bcr/android/core/RunnerKt;
.super Ljava/lang/Object;
.source "Runner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runner.kt\ncom/bcr/android/core/RunnerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n774#2:1162\n865#2,2:1163\n1803#2,3:1165\n1563#2:1168\n1634#2,3:1169\n*S KotlinDebug\n*F\n+ 1 Runner.kt\ncom/bcr/android/core/RunnerKt\n*L\n27#1:1162\n27#1:1163,2\n31#1:1165,3\n36#1:1168\n36#1:1169,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\n\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001a\u001a\u0010\u0005\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a&\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0000\u001a \u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000cH\u0000\"\u000e\u0010\u000f\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "isStakeConfirmed",
        "",
        "actual",
        "",
        "target",
        "shouldRetryRunnerError",
        "placement",
        "Lcom/bcr/android/model/Placement;",
        "placingAt",
        "",
        "minimumChipPlan",
        "",
        "",
        "amount",
        "denominations",
        "MAX_CHIP_CLICKS",
        "MAX_CHIP_PLAN_UNITS",
        "estimatePlaceTimeoutMs",
        "chipUnit",
        "clickDelayMs",
        "MIN_PLACE_TIMEOUT_MS",
        "MAX_PLACE_TIMEOUT_MS",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MAX_CHIP_CLICKS:I = 0x258

.field private static final MAX_CHIP_PLAN_UNITS:J = 0xf4240L

.field private static final MAX_PLACE_TIMEOUT_MS:J = 0x4e20L

.field private static final MIN_PLACE_TIMEOUT_MS:J = 0x2710L


# direct methods
.method public static final estimatePlaceTimeoutMs(DDI)J
    .locals 17
    .param p0, "amount"    # D
    .param p2, "chipUnit"    # D
    .param p4, "clickDelayMs"    # I

    .line 67
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    const-wide/16 v5, 0x0

    cmpg-double v0, p0, v5

    if-lez v0, :cond_3

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v0, v7, v2

    if-lez v0, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_3

    cmpg-double v0, p2, v5

    if-gtz v0, :cond_2

    move/from16 v6, p4

    goto :goto_1

    .line 70
    :cond_2
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v2, v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x258

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    .line 71
    .local v0, "taps":J
    const-wide/16 v2, 0x27

    add-long/2addr v2, v0

    const-wide/16 v4, 0x28

    div-long/2addr v2, v4

    .line 72
    .local v2, "batches":J
    const/16 v4, 0x28

    const/16 v5, 0xc8

    move/from16 v6, p4

    invoke-static {v6, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    int-to-long v4, v4

    .line 73
    .local v4, "clickDelay":J
    mul-long v7, v0, v4

    const-wide/16 v9, 0x1f4

    mul-long/2addr v9, v2

    add-long/2addr v7, v9

    const-wide/16 v9, 0xaf0

    add-long v11, v7, v9

    .line 74
    const-wide/16 v13, 0x2710

    const-wide/16 v15, 0x4e20

    invoke-static/range {v11 .. v16}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v7

    .line 73
    return-wide v7

    .line 67
    .end local v0    # "taps":J
    .end local v2    # "batches":J
    .end local v4    # "clickDelay":J
    :cond_3
    move/from16 v6, p4

    .line 68
    :goto_1
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final isStakeConfirmed(DD)Z
    .locals 7
    .param p0, "actual"    # D
    .param p2, "target"    # D

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v0, v5, v2

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-lez v0, :cond_2

    .line 19
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v5, p0, v2

    cmpl-double v0, v5, p2

    if-ltz v0, :cond_2

    add-double/2addr v2, p2

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    return v1
.end method

.method public static final minimumChipPlan(DLjava/util/List;)Ljava/util/List;
    .locals 25
    .param p0, "amount"    # D
    .param p2, "denominations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const-string v3, "denominations"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_15

    const-wide/16 v7, 0x0

    cmpg-double v3, v0, v7

    if-lez v3, :cond_15

    double-to-long v7, v0

    long-to-double v7, v7

    cmpg-double v3, v0, v7

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    move-object/from16 v19, v6

    goto/16 :goto_b

    .line 26
    :cond_2
    double-to-long v7, v0

    .line 27
    .local v7, "target":J
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1162
    .local v9, "$i$f$filter\\1\\27":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\2":Ljava/util/Collection;
    move-object v11, v3

    .local v11, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 1163
    .local v12, "$i$f$filterTo\\2\\1162":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element\\2":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "it\\3":I
    const/16 v16, 0x0

    .line 27
    .local v16, "$i$a$-filter-RunnerKt$minimumChipPlan$coins$1\\3\\1163\\0":I
    if-lez v15, :cond_4

    const/16 v17, 0x0

    const/16 v18, 0x1

    int-to-long v4, v15

    cmp-long v4, v4, v7

    if-gtz v4, :cond_5

    move/from16 v4, v18

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    const/16 v18, 0x1

    :cond_5
    move/from16 v4, v17

    .line 1163
    .end local v15    # "it\\3":I
    .end local v16    # "$i$a$-filter-RunnerKt$minimumChipPlan$coins$1\\3\\1163\\0":I
    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1164
    .end local v14    # "element\\2":Ljava/lang/Object;
    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x1

    .end local v10    # "destination\\2":Ljava/util/Collection;
    .end local v11    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo\\2\\1162":I
    move-object v4, v10

    check-cast v4, Ljava/util/List;

    .line 1162
    nop

    .end local v3    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter\\1\\27":I
    check-cast v4, Ljava/lang/Iterable;

    .line 27
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 28
    .local v3, "coins":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v6

    .line 31
    :cond_7
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$fold\\4":Ljava/lang/Iterable;
    const-wide/16 v9, 0x0

    .local v9, "initial\\4":J
    const/4 v5, 0x0

    .line 1165
    .local v5, "$i$f$fold\\4\\31":I
    move-wide v11, v9

    .line 1166
    .local v11, "accumulator\\4":J
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element\\4":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "coin\\5":I
    move-wide/from16 v19, v11

    .local v19, "acc\\5":J
    move-wide/from16 v21, v19

    .end local v19    # "acc\\5":J
    .local v21, "acc\\5":J
    const/16 v16, 0x0

    .line 31
    .local v16, "$i$a$-fold-RunnerKt$minimumChipPlan$divisor$1\\5\\1166\\0":I
    move-object/from16 v19, v6

    move-wide/from16 v23, v7

    .end local v7    # "target":J
    .local v23, "target":J
    int-to-long v6, v15

    move-wide/from16 v0, v21

    .end local v21    # "acc\\5":J
    .local v0, "acc\\5":J
    invoke-static {v0, v1, v6, v7}, Lcom/bcr/android/core/RunnerKt;->minimumChipPlan$gcd(JJ)J

    move-result-wide v0

    .line 1166
    .end local v0    # "acc\\5":J
    .end local v15    # "coin\\5":I
    .end local v16    # "$i$a$-fold-RunnerKt$minimumChipPlan$divisor$1\\5\\1166\\0":I
    move-wide v11, v0

    move-wide/from16 v0, p0

    move-object/from16 v6, v19

    move-wide/from16 v7, v23

    .end local v14    # "element\\4":Ljava/lang/Object;
    goto :goto_4

    .line 1167
    .end local v23    # "target":J
    .restart local v7    # "target":J
    :cond_8
    move-object/from16 v19, v6

    move-wide/from16 v23, v7

    .line 31
    .end local v4    # "$this$fold\\4":Ljava/lang/Iterable;
    .end local v5    # "$i$f$fold\\4\\31":I
    .end local v7    # "target":J
    .end local v9    # "initial\\4":J
    .end local v11    # "accumulator\\4":J
    .restart local v23    # "target":J
    nop

    .line 32
    .local v11, "divisor":J
    rem-long v7, v23, v11

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_9

    return-object v19

    .line 33
    :cond_9
    div-long v7, v23, v11

    .line 34
    .local v7, "targetUnits":J
    const-wide/32 v0, 0xf4240

    cmp-long v0, v7, v0

    if-lez v0, :cond_a

    return-object v19

    .line 36
    :cond_a
    move-object v0, v3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map\\6":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1168
    .local v1, "$i$f$map\\6\\36":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\7":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$mapTo\\7":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1169
    .local v6, "$i$f$mapTo\\7\\1168":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1170
    .local v10, "item\\7":Ljava/lang/Object;
    move-object v13, v10

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "it\\8":I
    const/4 v14, 0x0

    .line 36
    .local v14, "$i$a$-map-RunnerKt$minimumChipPlan$coinUnits$1\\8\\1170\\0":I
    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "$this$map\\6":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map\\6\\36":I
    .local v15, "$this$map\\6":Ljava/lang/Iterable;
    .local v16, "$i$f$map\\6\\36":I
    int-to-long v0, v13

    div-long/2addr v0, v11

    .end local v13    # "it\\8":I
    .end local v14    # "$i$a$-map-RunnerKt$minimumChipPlan$coinUnits$1\\8\\1170\\0":I
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1170
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v15

    move/from16 v1, v16

    goto :goto_5

    .line 1171
    .end local v10    # "item\\7":Ljava/lang/Object;
    .end local v15    # "$this$map\\6":Ljava/lang/Iterable;
    .end local v16    # "$i$f$map\\6\\36":I
    .restart local v0    # "$this$map\\6":Ljava/lang/Iterable;
    .restart local v1    # "$i$f$map\\6\\36":I
    :cond_b
    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "$this$map\\6":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map\\6\\36":I
    .end local v4    # "destination\\7":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\7":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\7\\1168":I
    .restart local v15    # "$this$map\\6":Ljava/lang/Iterable;
    .restart local v16    # "$i$f$map\\6\\36":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 1168
    nop

    .end local v15    # "$this$map\\6":Ljava/lang/Iterable;
    .end local v16    # "$i$f$map\\6\\36":I
    check-cast v0, Ljava/lang/Iterable;

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sortedDescending(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "coinUnits":Ljava/util/List;
    long-to-int v1, v7

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [I

    move/from16 v5, v17

    :goto_6
    if-ge v5, v1, :cond_c

    const v6, 0x7fffffff

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 38
    .local v4, "best":[I
    :cond_c
    array-length v1, v4

    new-array v5, v1, [I

    move/from16 v6, v17

    :goto_7
    if-ge v6, v1, :cond_d

    const/4 v9, -0x1

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 39
    .local v5, "previousCoin":[I
    :cond_d
    aput v17, v4, v17

    .line 40
    const/4 v1, 0x1

    .local v1, "sum":I
    array-length v6, v4

    :goto_8
    if-ge v1, v6, :cond_11

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    .line 42
    .local v13, "coin":J
    move-object/from16 v16, v10

    int-to-long v9, v1

    cmp-long v9, v13, v9

    if-gtz v9, :cond_f

    .line 43
    int-to-long v9, v1

    sub-long/2addr v9, v13

    long-to-int v9, v9

    aget v9, v4, v9

    .line 44
    .local v9, "prior":I
    const/16 v15, 0x258

    if-ge v9, v15, :cond_e

    add-int/lit8 v10, v9, 0x1

    aget v15, v4, v1

    if-ge v10, v15, :cond_e

    .line 45
    add-int/lit8 v10, v9, 0x1

    aput v10, v4, v1

    .line 46
    long-to-int v10, v13

    aput v10, v5, v1

    move-object/from16 v10, v16

    .end local v9    # "prior":I
    .end local v13    # "coin":J
    goto :goto_9

    .line 44
    .restart local v9    # "prior":I
    .restart local v13    # "coin":J
    :cond_e
    move-object/from16 v10, v16

    goto :goto_9

    .line 42
    .end local v9    # "prior":I
    :cond_f
    move-object/from16 v10, v16

    goto :goto_9

    .line 40
    .end local v13    # "coin":J
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 51
    .end local v1    # "sum":I
    :cond_11
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v1

    const/16 v15, 0x258

    if-le v1, v15, :cond_12

    return-object v19

    .line 52
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 53
    .local v1, "plan":Ljava/util/List;
    long-to-int v6, v7

    .line 54
    .local v6, "remaining":I
    :goto_a
    if-lez v6, :cond_14

    .line 55
    aget v9, v5, v6

    .line 56
    .local v9, "coin":I
    if-gtz v9, :cond_13

    return-object v19

    .line 57
    :cond_13
    int-to-long v13, v9

    mul-long/2addr v13, v11

    long-to-int v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sub-int/2addr v6, v9

    .end local v9    # "coin":I
    goto :goto_a

    .line 60
    :cond_14
    move-object v9, v1

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->sortedDescending(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    return-object v9

    .line 25
    .end local v0    # "coinUnits":Ljava/util/List;
    .end local v1    # "plan":Ljava/util/List;
    .end local v3    # "coins":Ljava/util/List;
    .end local v4    # "best":[I
    .end local v5    # "previousCoin":[I
    .end local v6    # "remaining":I
    .end local v7    # "targetUnits":J
    .end local v11    # "divisor":J
    .end local v23    # "target":J
    :cond_15
    move-object/from16 v19, v6

    :goto_b
    return-object v19
.end method

.method private static final minimumChipPlan$gcd(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lcom/bcr/android/core/RunnerKt;->minimumChipPlan$gcd(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final shouldRetryRunnerError(Lcom/bcr/android/model/Placement;J)Z
    .locals 2
    .param p0, "placement"    # Lcom/bcr/android/model/Placement;
    .param p1, "placingAt"    # J

    .line 22
    sget-object v0, Lcom/bcr/android/model/Placement;->PENDING:Lcom/bcr/android/model/Placement;

    if-ne p0, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
