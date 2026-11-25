.class public Landroidx/webkit/SpeculativeLoadingConfig;
.super Ljava/lang/Object;
.source "SpeculativeLoadingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mMaxPrefetches:I

.field private final mMaxPrerenders:I

.field private final mPrefetchTTLSeconds:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "ttlSecs"    # I
    .param p2, "maxPrefetches"    # I
    .param p3, "maxPrerenders"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    .line 43
    iput p2, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    .line 44
    iput p3, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(IIILandroidx/webkit/SpeculativeLoadingConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/SpeculativeLoadingConfig;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getMaxPrefetches()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    return v0
.end method

.method public getMaxPrerenders()I
    .locals 1

    .line 73
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    return v0
.end method

.method public getPrefetchTtlSeconds()I
    .locals 1

    .line 54
    iget v0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    return v0
.end method
