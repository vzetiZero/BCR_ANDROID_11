.class public final Landroidx/webkit/PrerenderParameters$Builder;
.super Ljava/lang/Object;
.source "PrerenderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/PrerenderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAdditionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

.field private mVariationsId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/webkit/PrerenderParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 84
    return-void
.end method


# virtual methods
.method public addAdditionalHeader(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/PrerenderParameters$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-object p0
.end method

.method public addAdditionalHeaders(Ljava/util/Map;)Landroidx/webkit/PrerenderParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/PrerenderParameters$Builder;"
        }
    .end annotation

    .line 128
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    return-object p0
.end method

.method public build()Landroidx/webkit/PrerenderParameters;
    .locals 5

    .line 91
    new-instance v0, Landroidx/webkit/PrerenderParameters;

    iget-object v1, p0, Landroidx/webkit/PrerenderParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    iget-object v2, p0, Landroidx/webkit/PrerenderParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    iget-object v3, p0, Landroidx/webkit/PrerenderParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/PrerenderParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;Ljava/lang/Integer;Landroidx/webkit/PrerenderParameters-IA;)V

    return-object v0
.end method

.method public setExpectedNoVarySearchData(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/PrerenderParameters$Builder;
    .locals 0
    .param p1, "expectedNoVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iput-object p1, p0, Landroidx/webkit/PrerenderParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 151
    return-object p0
.end method

.method public setExpectedNoVarySearchHeader(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/PrerenderParameters$Builder;
    .locals 0
    .param p1, "expectedNoVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;

    .line 170
    iput-object p1, p0, Landroidx/webkit/PrerenderParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 171
    return-object p0
.end method

.method public setVariationsId(Ljava/lang/Integer;)Landroidx/webkit/PrerenderParameters$Builder;
    .locals 0
    .param p1, "variationsId"    # Ljava/lang/Integer;

    .line 185
    iput-object p1, p0, Landroidx/webkit/PrerenderParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    .line 186
    return-object p0
.end method
