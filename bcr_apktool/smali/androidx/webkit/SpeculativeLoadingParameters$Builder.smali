.class public final Landroidx/webkit/SpeculativeLoadingParameters$Builder;
.super Ljava/lang/Object;
.source "SpeculativeLoadingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/SpeculativeLoadingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

.field private mIsJavaScriptEnabled:Z

.field private mVariationsId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 113
    return-void
.end method


# virtual methods
.method public addAdditionalHeader(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method

.method public addAdditionalHeaders(Ljava/util/Map;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/SpeculativeLoadingParameters$Builder;"
        }
    .end annotation

    .line 157
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    return-object p0
.end method

.method public build()Landroidx/webkit/SpeculativeLoadingParameters;
    .locals 6

    .line 127
    new-instance v0, Landroidx/webkit/SpeculativeLoadingParameters;

    iget-object v1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    iget-object v2, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    iget-boolean v3, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mIsJavaScriptEnabled:Z

    iget-object v4, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;Landroidx/webkit/SpeculativeLoadingParameters-IA;)V

    return-object v0
.end method

.method public setExpectedNoVarySearchData(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 0
    .param p1, "expectedNoVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;

    .line 171
    iput-object p1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 172
    return-object p0
.end method

.method public setJavaScriptEnabled(Z)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 0
    .param p1, "javaScriptEnabled"    # Z

    .line 186
    iput-boolean p1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mIsJavaScriptEnabled:Z

    .line 187
    return-object p0
.end method

.method public setVariationsId(Ljava/lang/Integer;)Landroidx/webkit/SpeculativeLoadingParameters$Builder;
    .locals 0
    .param p1, "variationsId"    # Ljava/lang/Integer;

    .line 200
    iput-object p1, p0, Landroidx/webkit/SpeculativeLoadingParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    .line 201
    return-object p0
.end method
