.class public final Landroidx/webkit/SpeculativeLoadingParameters;
.super Ljava/lang/Object;
.source "SpeculativeLoadingParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    }
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

.field private final mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

.field private final mIsJavaScriptEnabled:Z

.field private final mVariationsId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroidx/webkit/PrefetchParameters;)V
    .locals 4
    .param p1, "prefetchParameters"    # Landroidx/webkit/PrefetchParameters;

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Landroidx/webkit/PrefetchParameters;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroidx/webkit/PrefetchParameters;->getExpectedNoVarySearchHeader()Landroidx/webkit/NoVarySearchHeader;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroidx/webkit/PrefetchParameters;->isJavaScriptEnabled()Z

    move-result v2

    .line 58
    invoke-virtual {p1}, Landroidx/webkit/PrefetchParameters;->getVariationsId()Ljava/lang/Integer;

    move-result-object v3

    .line 54
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroidx/webkit/PrerenderParameters;)V
    .locals 4
    .param p1, "prerenderParameters"    # Landroidx/webkit/PrerenderParameters;

    .line 64
    nop

    .line 65
    invoke-virtual {p1}, Landroidx/webkit/PrerenderParameters;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroidx/webkit/PrerenderParameters;->getExpectedNoVarySearchHeader()Landroidx/webkit/NoVarySearchHeader;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Landroidx/webkit/PrerenderParameters;->getVariationsId()Ljava/lang/Integer;

    move-result-object v2

    .line 64
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;)V
    .locals 0
    .param p2, "noVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;
    .param p3, "isJavaScriptEnabled"    # Z
    .param p4, "variationsId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/webkit/NoVarySearchHeader;",
            "Z",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mAdditionalHeaders:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 48
    iput-boolean p3, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mIsJavaScriptEnabled:Z

    .line 49
    iput-object p4, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mVariationsId:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;Landroidx/webkit/SpeculativeLoadingParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getAdditionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mAdditionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getExpectedNoVarySearchData()Landroidx/webkit/NoVarySearchHeader;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    return-object v0
.end method

.method public getVariationsId()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mVariationsId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isJavaScriptEnabled()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroidx/webkit/SpeculativeLoadingParameters;->mIsJavaScriptEnabled:Z

    return v0
.end method
