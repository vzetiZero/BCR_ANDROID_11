.class public final Lcom/bcr/android/web/Bridge$Companion;
.super Ljava/lang/Object;
.source "Bridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bcr/android/web/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bridge.kt\ncom/bcr/android/web/Bridge$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n1617#2,9:279\n1869#2:288\n774#2:289\n865#2,2:290\n1870#2:293\n1626#2:294\n295#2,2:295\n1#3:292\n*S KotlinDebug\n*F\n+ 1 Bridge.kt\ncom/bcr/android/web/Bridge$Companion\n*L\n256#1:279,9\n256#1:288\n263#1:289\n263#1:290,2\n256#1:293\n256#1:294\n274#1:295,2\n256#1:292\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005J\'\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0008\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bcr/android/web/Bridge$Companion;",
        "",
        "<init>",
        "()V",
        "JS_OBJECT",
        "",
        "chipReply",
        "Lcom/bcr/android/web/Bridge$Reply;",
        "replies",
        "",
        "side",
        "selectChipFrame",
        "candidates",
        "Lcom/bcr/android/web/Bridge$ChipFrameCandidate;",
        "selectChipFrame$app",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bcr/android/web/Bridge$Companion;-><init>()V

    return-void
.end method

.method public static synthetic chipReply$default(Lcom/bcr/android/web/Bridge$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/bcr/android/web/Bridge$Reply;
    .locals 0

    .line 255
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bcr/android/web/Bridge$Companion;->chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final chipReply(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;
    .locals 28
    .param p1, "replies"    # Ljava/util/List;
    .param p2, "side"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bcr/android/web/Bridge$Reply;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bcr/android/web/Bridge$Reply;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "replies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 279
    .local v2, "$i$f$mapNotNull\\1\\256":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 287
    .local v5, "$i$f$mapNotNullTo\\2\\279":I
    move-object v6, v4

    .local v6, "$this$forEach\\3":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 288
    .local v7, "$i$f$forEach\\3\\287":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element\\3":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element\\4":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 287
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\288\\2":I
    move-object v12, v10

    check-cast v12, Lcom/bcr/android/web/Bridge$Reply;

    .local v12, "reply\\6":Lcom/bcr/android/web/Bridge$Reply;
    const/4 v13, 0x0

    .line 257
    .local v13, "$i$a$-mapNotNull-Bridge$Companion$chipReply$candidates$1\\6\\287\\0":I
    invoke-virtual {v12}, Lcom/bcr/android/web/Bridge$Reply;->getResult()Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_0

    move-object/from16 v16, v1

    move/from16 v24, v2

    move-object/from16 v25, v4

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 258
    .local v14, "chips\\6":Lorg/json/JSONObject;
    :cond_0
    const-string v15, "spots"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 259
    .local v15, "spots\\6":Lorg/json/JSONObject;
    nop

    .line 260
    nop

    .line 261
    invoke-virtual {v12}, Lcom/bcr/android/web/Bridge$Reply;->getOk()Z

    move-result v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v16, :cond_1

    const-string v0, "has_table"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    .line 262
    :goto_1
    move-object/from16 v16, v1

    .end local v1    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .local v16, "$this$mapNotNull\\1":Ljava/lang/Iterable;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v19, "B"

    aput-object v19, v1, v18

    const-string v19, "P"

    aput-object v19, v1, v17

    const/16 v19, 0x2

    const-string v20, "T"

    aput-object v20, v1, v19

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 263
    nop

    .local v1, "$this$filter\\7":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 289
    .local v19, "$i$f$filter\\7\\263":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v1

    .end local v1    # "$this$filter\\7":Ljava/lang/Iterable;
    .local v21, "$this$filter\\7":Ljava/lang/Iterable;
    move-object/from16 v1, v20

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination\\8":Ljava/util/Collection;
    move-object/from16 v20, v21

    .local v20, "$this$filterTo\\8":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 290
    .local v22, "$i$f$filterTo\\8\\289":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    move/from16 v24, v2

    .end local v2    # "$i$f$mapNotNull\\1\\256":I
    .local v24, "$i$f$mapNotNull\\1\\256":I
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v4

    .end local v4    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .local v2, "element\\8":Ljava/lang/Object;
    .local v25, "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .local v4, "it\\9":Ljava/lang/String;
    const/16 v26, 0x0

    .line 263
    .local v26, "$i$a$-filter-Bridge$Companion$chipReply$candidates$1$1\\9\\290\\6":I
    if-eqz v15, :cond_2

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    goto :goto_3

    :cond_2
    const/16 v27, 0x0

    :goto_3
    if-eqz v27, :cond_3

    move/from16 v4, v17

    goto :goto_4

    :cond_3
    move/from16 v4, v18

    .line 290
    .end local v4    # "it\\9":Ljava/lang/String;
    .end local v26    # "$i$a$-filter-Bridge$Companion$chipReply$candidates$1$1\\9\\290\\6":I
    :goto_4
    if-eqz v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v2, v24

    move-object/from16 v4, v25

    goto :goto_2

    .line 291
    .end local v24    # "$i$f$mapNotNull\\1\\256":I
    .end local v25    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .local v2, "$i$f$mapNotNull\\1\\256":I
    .local v4, "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    :cond_5
    move/from16 v24, v2

    move-object/from16 v25, v4

    .end local v1    # "destination\\8":Ljava/util/Collection;
    .end local v2    # "$i$f$mapNotNull\\1\\256":I
    .end local v4    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .end local v20    # "$this$filterTo\\8":Ljava/lang/Iterable;
    .end local v22    # "$i$f$filterTo\\8\\289":I
    .restart local v24    # "$i$f$mapNotNull\\1\\256":I
    .restart local v25    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    check-cast v1, Ljava/util/List;

    .line 289
    nop

    .end local v19    # "$i$f$filter\\7\\263":I
    .end local v21    # "$this$filter\\7":Ljava/lang/Iterable;
    check-cast v1, Ljava/lang/Iterable;

    .line 264
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 259
    new-instance v2, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;

    invoke-direct {v2, v12, v0, v1}, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;-><init>(Lcom/bcr/android/web/Bridge$Reply;ZLjava/util/Set;)V

    .line 265
    move-object v15, v2

    .line 287
    .end local v12    # "reply\\6":Lcom/bcr/android/web/Bridge$Reply;
    .end local v13    # "$i$a$-mapNotNull-Bridge$Companion$chipReply$candidates$1\\6\\287\\0":I
    .end local v14    # "chips\\6":Lorg/json/JSONObject;
    .end local v15    # "spots\\6":Lorg/json/JSONObject;
    :goto_5
    if-eqz v15, :cond_6

    .line 292
    .local v15, "it\\4":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 287
    .local v0, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\292\\4":I
    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\292\\4":I
    .end local v10    # "element\\4":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\288\\2":I
    .end local v15    # "it\\4":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v24

    move-object/from16 v4, v25

    .end local v9    # "element\\3":Ljava/lang/Object;
    goto/16 :goto_0

    .line 293
    .end local v16    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .end local v24    # "$i$f$mapNotNull\\1\\256":I
    .end local v25    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .local v1, "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$mapNotNull\\1\\256":I
    .restart local v4    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    :cond_7
    move-object/from16 v16, v1

    move/from16 v24, v2

    .line 294
    .end local v1    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull\\1\\256":I
    .end local v6    # "$this$forEach\\3":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach\\3\\287":I
    .restart local v16    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .restart local v24    # "$i$f$mapNotNull\\1\\256":I
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo\\2\\279":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 279
    nop

    .line 256
    .end local v16    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .end local v24    # "$i$f$mapNotNull\\1\\256":I
    nop

    .line 267
    .local v0, "candidates":Ljava/util/List;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/bcr/android/web/Bridge$Companion;->selectChipFrame$app(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v3

    return-object v3
.end method

.method public final selectChipFrame$app(Ljava/util/List;Ljava/lang/String;)Lcom/bcr/android/web/Bridge$Reply;
    .locals 8
    .param p1, "candidates"    # Ljava/util/List;
    .param p2, "side"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bcr/android/web/Bridge$ChipFrameCandidate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bcr/android/web/Bridge$Reply;"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    nop

    .line 273
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 274
    nop

    .local v0, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 295
    .local v1, "$i$f$firstOrNull\\1\\274":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element\\1":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;

    .local v5, "it\\2":Lcom/bcr/android/web/Bridge$ChipFrameCandidate;
    const/4 v6, 0x0

    .line 274
    .local v6, "$i$a$-firstOrNull-Bridge$Companion$selectChipFrame$1\\2\\295\\0":I
    invoke-virtual {v5}, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;->getHasTable()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v5}, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;->getSides()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 295
    .end local v5    # "it\\2":Lcom/bcr/android/web/Bridge$ChipFrameCandidate;
    .end local v6    # "$i$a$-firstOrNull-Bridge$Companion$selectChipFrame$1\\2\\295\\0":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 296
    .end local v3    # "element\\1":Ljava/lang/Object;
    :cond_3
    move-object v3, v4

    .line 274
    .end local v0    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull\\1\\274":I
    :goto_1
    check-cast v3, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;

    .line 275
    if-eqz v3, :cond_4

    .line 273
    nop

    .line 275
    invoke-virtual {v3}, Lcom/bcr/android/web/Bridge$ChipFrameCandidate;->getReply()Lcom/bcr/android/web/Bridge$Reply;

    move-result-object v4

    :cond_4
    return-object v4
.end method
