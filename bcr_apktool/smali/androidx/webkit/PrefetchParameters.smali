.class public final Landroidx/webkit/PrefetchParameters;
.super Ljava/lang/Object;
.source "PrefetchParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/PrefetchParameters$Builder;
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

    .line 38
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/webkit/PrefetchParameters;->mAdditionalHeaders:Ljava/util/Map;

    .line 40
    iput-object p2, p0, Landroidx/webkit/PrefetchParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 41
    iput-boolean p3, p0, Landroidx/webkit/PrefetchParameters;->mIsJavaScriptEnabled:Z

    .line 42
    iput-object p4, p0, Landroidx/webkit/PrefetchParameters;->mVariationsId:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;Landroidx/webkit/PrefetchParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/webkit/PrefetchParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;)V

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

    .line 49
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters;->mAdditionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getExpectedNoVarySearchData()Landroidx/webkit/NoVarySearchHeader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    return-object v0
.end method

.method public getExpectedNoVarySearchHeader()Landroidx/webkit/NoVarySearchHeader;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    return-object v0
.end method

.method public getVariationsId()Ljava/lang/Integer;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters;->mVariationsId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isJavaScriptEnabled()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Landroidx/webkit/PrefetchParameters;->mIsJavaScriptEnabled:Z

    return v0
.end method
