.class public final Lcom/bcr/android/model/Fmt;
.super Ljava/lang/Object;
.source "Fmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Fmt.kt\ncom/bcr/android/model/Fmt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n434#2:55\n507#2,5:56\n170#2,6:61\n1069#2,2:67\n434#2:69\n507#2,5:70\n1#3:75\n*S KotlinDebug\n*F\n+ 1 Fmt.kt\ncom/bcr/android/model/Fmt\n*L\n38#1:55\n38#1:56,5\n41#1:61,6\n43#1:67,2\n45#1:69\n45#1:70,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000eH\u0002J\u001a\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bcr/android/model/Fmt;",
        "",
        "<init>",
        "()V",
        "money",
        "",
        "value",
        "",
        "(Ljava/lang/Double;)Ljava/lang/String;",
        "signed",
        "units",
        "digits",
        "",
        "group",
        "",
        "parseMoney",
        "text",
        "fallback",
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
.field public static final INSTANCE:Lcom/bcr/android/model/Fmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bcr/android/model/Fmt;

    invoke-direct {v0}, Lcom/bcr/android/model/Fmt;-><init>()V

    sput-object v0, Lcom/bcr/android/model/Fmt;->INSTANCE:Lcom/bcr/android/model/Fmt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final group(J)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # J

    .line 23
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "raw":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "-"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    .line 25
    .local v1, "negative":Z
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "substring(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 26
    .local v2, "digits":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v5, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_2

    move v7, v4

    .local v7, "index":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 28
    .local v8, "ch":C
    if-lez v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_1

    const/16 v9, 0x2e

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .end local v7    # "index":I
    .end local v8    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 31
    :cond_2
    if-eqz v1, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method public static synthetic parseMoney$default(Lcom/bcr/android/model/Fmt;Ljava/lang/String;DILjava/lang/Object;)D
    .locals 0

    .line 35
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bcr/android/model/Fmt;->parseMoney(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic units$default(Lcom/bcr/android/model/Fmt;DIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 18
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bcr/android/model/Fmt;->units(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final money(Ljava/lang/Double;)Ljava/lang/String;
    .locals 18
    .param p1, "value"    # Ljava/lang/Double;

    .line 6
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .local v0, "v":D
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "\u2014"

    return-object v2

    .line 8
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpg-double v2, v0, v5

    if-nez v2, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v5, 0x430c6bf526340000L    # 1.0E15

    cmpg-double v2, v2, v5

    if-gez v2, :cond_4

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    move-object/from16 v5, p0

    invoke-direct {v5, v2, v3}, Lcom/bcr/android/model/Fmt;->group(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 8
    :cond_4
    move-object/from16 v5, p0

    .line 11
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%,.2f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "format(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v7, 0x2c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/16 v13, 0x2e

    const/16 v14, 0x2c

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x2e

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_2
    return-object v2
.end method

.method public final parseMoney(Ljava/lang/String;D)D
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    .line 36
    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "\u00a0"

    const-string v4, " "

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VN2"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lkotlin/text/StringsKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "raw":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    return-wide p2

    .line 38
    :cond_2
    move-object v1, v0

    .local v1, "$this$filter\\1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "$i$f$filter\\1\\38":I
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$filterTo\\2":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v6, Ljava/lang/Appendable;

    .local v6, "destination\\2":Ljava/lang/Appendable;
    const/4 v7, 0x0

    .line 56
    .local v7, "$i$f$filterTo\\2\\55":I
    const/4 v8, 0x0

    .local v8, "index\\2":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    :goto_2
    if-ge v8, v9, :cond_4

    .line 57
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 58
    .local v10, "element\\2":C
    move v11, v10

    .local v11, "it\\3":C
    const/4 v12, 0x0

    .line 38
    .local v12, "$i$a$-filter-Fmt$parseMoney$digits$1\\3\\58\\0":I
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    .line 58
    .end local v11    # "it\\3":C
    .end local v12    # "$i$a$-filter-Fmt$parseMoney$digits$1\\3\\58\\0":I
    if-eqz v13, :cond_3

    invoke-interface {v6, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 56
    .end local v10    # "element\\2":C
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 60
    .end local v8    # "index\\2":I
    :cond_4
    nop

    .end local v5    # "$this$filterTo\\2":Ljava/lang/CharSequence;
    .end local v6    # "destination\\2":Ljava/lang/Appendable;
    .end local v7    # "$i$f$filterTo\\2\\55":I
    move-object v5, v6

    check-cast v5, Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .end local v1    # "$this$filter\\1":Ljava/lang/String;
    .end local v4    # "$i$f$filter\\1\\38":I
    nop

    .line 39
    .local v1, "digits":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v4, :cond_6

    return-wide p2

    .line 41
    :cond_6
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$indexOfLast\\4":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 61
    .local v5, "$i$f$indexOfLast\\4\\41":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    if-ltz v6, :cond_a

    :cond_7
    move v8, v6

    .local v8, "index\\4":I
    add-int/2addr v6, v7

    .line 62
    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "it\\5":C
    const/4 v10, 0x0

    .line 41
    .local v10, "$i$a$-indexOfLast-Fmt$parseMoney$lastSep$1\\5\\62\\0":I
    const/16 v11, 0x2e

    if-eq v9, v11, :cond_8

    const/16 v11, 0x2c

    if-eq v9, v11, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    move v9, v3

    .line 62
    .end local v9    # "it\\5":C
    .end local v10    # "$i$a$-indexOfLast-Fmt$parseMoney$lastSep$1\\5\\62\\0":I
    :goto_4
    if-eqz v9, :cond_9

    .line 63
    move v7, v8

    goto :goto_5

    .line 61
    :cond_9
    if-gez v6, :cond_7

    .line 66
    .end local v8    # "index\\4":I
    :cond_a
    nop

    .line 41
    .end local v4    # "$this$indexOfLast\\4":Ljava/lang/CharSequence;
    .end local v5    # "$i$f$indexOfLast\\4\\41":I
    :goto_5
    nop

    .line 42
    .local v7, "lastSep":I
    if-ltz v7, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    sub-int/2addr v4, v3

    if-gt v3, v4, :cond_b

    const/4 v5, 0x3

    if-ge v4, v5, :cond_b

    move v4, v3

    goto :goto_6

    :cond_b
    move v4, v2

    :goto_6
    if-eqz v4, :cond_13

    .line 43
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$all\\6":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$f$all\\6\\43":I
    move v8, v2

    :goto_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "element\\6":C
    move v10, v9

    .local v10, "it\\7":C
    const/4 v11, 0x0

    .line 43
    .local v11, "$i$a$-all-Fmt$parseMoney$value$1\\7\\67\\0":I
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    .line 67
    .end local v10    # "it\\7":C
    .end local v11    # "$i$a$-all-Fmt$parseMoney$value$1\\7\\67\\0":I
    if-nez v12, :cond_c

    move v4, v2

    goto :goto_8

    .end local v9    # "element\\6":C
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 68
    :cond_d
    move v4, v3

    .line 43
    .end local v4    # "$this$all\\6":Ljava/lang/CharSequence;
    .end local v6    # "$i$f$all\\6\\43":I
    :goto_8
    if-eqz v4, :cond_13

    .line 45
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "$this$filter\\8":Ljava/lang/String;
    const/4 v6, 0x0

    .line 69
    .local v6, "$i$f$filter\\8\\45":I
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    .local v8, "$this$filterTo\\9":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v9, Ljava/lang/Appendable;

    .local v9, "destination\\9":Ljava/lang/Appendable;
    const/4 v10, 0x0

    .line 70
    .local v10, "$i$f$filterTo\\9\\69":I
    const/4 v11, 0x0

    .local v11, "index\\9":I
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    :goto_9
    if-ge v11, v12, :cond_f

    .line 71
    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 72
    .local v13, "element\\9":C
    move v14, v13

    .local v14, "it\\10":C
    const/4 v15, 0x0

    .line 45
    .local v15, "$i$a$-filter-Fmt$parseMoney$value$whole$1\\10\\72\\0":I
    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    .line 72
    .end local v14    # "it\\10":C
    .end local v15    # "$i$a$-filter-Fmt$parseMoney$value$whole$1\\10\\72\\0":I
    if-eqz v16, :cond_e

    invoke-interface {v9, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 70
    .end local v13    # "element\\9":C
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 74
    .end local v11    # "index\\9":I
    :cond_f
    nop

    .end local v8    # "$this$filterTo\\9":Ljava/lang/CharSequence;
    .end local v9    # "destination\\9":Ljava/lang/Appendable;
    .end local v10    # "$i$f$filterTo\\9\\69":I
    move-object v8, v9

    check-cast v8, Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    .end local v4    # "$this$filter\\8":Ljava/lang/String;
    .end local v6    # "$i$f$filter\\8\\45":I
    nop

    .line 46
    .local v4, "whole":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v6, "fraction":Ljava/lang/String;
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_10

    move v8, v3

    goto :goto_a

    :cond_10
    move v8, v2

    :goto_a
    if-eqz v8, :cond_11

    .line 75
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-ifEmpty-Fmt$parseMoney$value$2\\11\\47\\0":I
    nop

    .end local v5    # "$i$a$-ifEmpty-Fmt$parseMoney$value$2\\11\\47\\0":I
    const-string v5, "0"

    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_c

    .end local v4    # "whole":Ljava/lang/String;
    .end local v6    # "fraction":Ljava/lang/String;
    :cond_12
    goto :goto_b

    .line 49
    :cond_13
    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_c

    .line 42
    :cond_14
    :goto_b
    move-wide/from16 v8, p2

    :goto_c
    nop

    .line 51
    .local v8, "value":D
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v4, v4, v10

    if-lez v4, :cond_15

    move v3, v2

    :cond_15
    if-eqz v3, :cond_16

    move-wide v2, v8

    goto :goto_d

    :cond_16
    move-wide/from16 v2, p2

    :goto_d
    return-wide v2
.end method

.method public final signed(D)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # D

    .line 16
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-string v0, "+"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bcr/android/model/Fmt;->money(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final units(DI)Ljava/lang/String;
    .locals 16
    .param p1, "value"    # D
    .param p3, "digits"    # I

    .line 19
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%,."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "format(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v11, 0x2e

    const/16 v12, 0x2c

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
