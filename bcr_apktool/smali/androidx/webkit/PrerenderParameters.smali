.class public final Landroidx/webkit/PrerenderParameters;
.super Ljava/lang/Object;
.source "PrerenderParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/PrerenderParameters$Builder;
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

.field private final mVariationsId:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "noVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;
    .param p3, "variationsId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/webkit/NoVarySearchHeader;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 35
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/webkit/PrerenderParameters;->mAdditionalHeaders:Ljava/util/Map;

    .line 37
    iput-object p2, p0, Landroidx/webkit/PrerenderParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 38
    iput-object p3, p0, Landroidx/webkit/PrerenderParameters;->mVariationsId:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;Ljava/lang/Integer;Landroidx/webkit/PrerenderParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/PrerenderParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;Ljava/lang/Integer;)V

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

    .line 45
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters;->mAdditionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getExpectedNoVarySearchData()Landroidx/webkit/NoVarySearchHeader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    return-object v0
.end method

.method public getExpectedNoVarySearchHeader()Landroidx/webkit/NoVarySearchHeader;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    return-object v0
.end method

.method public getVariationsId()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/webkit/PrerenderParameters;->mVariationsId:Ljava/lang/Integer;

    return-object v0
.end method
