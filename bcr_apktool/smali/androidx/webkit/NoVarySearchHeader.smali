.class public Landroidx/webkit/NoVarySearchHeader;
.super Ljava/lang/Object;
.source "NoVarySearchHeader.java"


# instance fields
.field public final consideredQueryParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ignoreDifferencesInParameters:Z

.field public final ignoredQueryParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final varyOnKeyOrder:Z


# direct methods
.method private constructor <init>(ZZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "varyOnKeyOrder"    # Z
    .param p2, "ignoreDifferencesInParameters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p3, "ignoredQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "consideredQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean p1, p0, Landroidx/webkit/NoVarySearchHeader;->varyOnKeyOrder:Z

    .line 90
    iput-boolean p2, p0, Landroidx/webkit/NoVarySearchHeader;->ignoreDifferencesInParameters:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/NoVarySearchHeader;->ignoredQueryParameters:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/NoVarySearchHeader;->consideredQueryParameters:Ljava/util/List;

    .line 95
    return-void
.end method

.method public static alwaysVaryHeader()Landroidx/webkit/NoVarySearchHeader;
    .locals 5

    .line 116
    new-instance v0, Landroidx/webkit/NoVarySearchHeader;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/webkit/NoVarySearchHeader;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    .line 116
    return-object v0
.end method

.method public static neverVaryExcept(ZLjava/util/List;)Landroidx/webkit/NoVarySearchHeader;
    .locals 3
    .param p0, "varyOnOrdering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/NoVarySearchHeader;"
        }
    .end annotation

    .line 136
    .local p1, "consideredQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/webkit/NoVarySearchHeader;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/webkit/NoVarySearchHeader;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static neverVaryHeader()Landroidx/webkit/NoVarySearchHeader;
    .locals 5

    .line 105
    new-instance v0, Landroidx/webkit/NoVarySearchHeader;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/webkit/NoVarySearchHeader;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    .line 105
    return-object v0
.end method

.method public static varyExcept(ZLjava/util/List;)Landroidx/webkit/NoVarySearchHeader;
    .locals 3
    .param p0, "varyOnOrdering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/NoVarySearchHeader;"
        }
    .end annotation

    .line 156
    .local p1, "ignoredQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/webkit/NoVarySearchHeader;

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Landroidx/webkit/NoVarySearchHeader;-><init>(ZZLjava/util/List;Ljava/util/List;)V

    .line 156
    return-object v0
.end method
