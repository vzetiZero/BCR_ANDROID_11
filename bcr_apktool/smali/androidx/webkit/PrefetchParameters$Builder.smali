.class public final Landroidx/webkit/PrefetchParameters$Builder;
.super Ljava/lang/Object;
.source "PrefetchParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/PrefetchParameters;
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

.field private mIsJavaScriptEnabled:Z

.field private mVariationsId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/webkit/PrefetchParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 100
    return-void
.end method


# virtual methods
.method public addAdditionalHeader(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object p0
.end method

.method public addAdditionalHeaders(Ljava/util/Map;)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/PrefetchParameters$Builder;"
        }
    .end annotation

    .line 146
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/PrefetchParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    return-object p0
.end method

.method public build()Landroidx/webkit/PrefetchParameters;
    .locals 6

    .line 107
    new-instance v0, Landroidx/webkit/PrefetchParameters;

    iget-object v1, p0, Landroidx/webkit/PrefetchParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    iget-object v2, p0, Landroidx/webkit/PrefetchParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    iget-boolean v3, p0, Landroidx/webkit/PrefetchParameters$Builder;->mIsJavaScriptEnabled:Z

    iget-object v4, p0, Landroidx/webkit/PrefetchParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/webkit/PrefetchParameters;-><init>(Ljava/util/Map;Landroidx/webkit/NoVarySearchHeader;ZLjava/lang/Integer;Landroidx/webkit/PrefetchParameters-IA;)V

    return-object v0
.end method

.method public setExpectedNoVarySearchData(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 0
    .param p1, "expectedNoVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iput-object p1, p0, Landroidx/webkit/PrefetchParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 172
    return-object p0
.end method

.method public setExpectedNoVarySearchHeader(Landroidx/webkit/NoVarySearchHeader;)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 0
    .param p1, "expectedNoVarySearchHeader"    # Landroidx/webkit/NoVarySearchHeader;

    .line 192
    iput-object p1, p0, Landroidx/webkit/PrefetchParameters$Builder;->mExpectedNoVarySearchHeader:Landroidx/webkit/NoVarySearchHeader;

    .line 193
    return-object p0
.end method

.method public setJavaScriptEnabled(Z)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 0
    .param p1, "javaScriptEnabled"    # Z

    .line 209
    iput-boolean p1, p0, Landroidx/webkit/PrefetchParameters$Builder;->mIsJavaScriptEnabled:Z

    .line 210
    return-object p0
.end method

.method public setVariationsId(Ljava/lang/Integer;)Landroidx/webkit/PrefetchParameters$Builder;
    .locals 0
    .param p1, "variationsId"    # Ljava/lang/Integer;

    .line 223
    iput-object p1, p0, Landroidx/webkit/PrefetchParameters$Builder;->mVariationsId:Ljava/lang/Integer;

    .line 224
    return-object p0
.end method
