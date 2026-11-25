.class public final Landroidx/webkit/HttpCache;
.super Ljava/lang/Object;
.source "HttpCache.java"


# instance fields
.field private final mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;)V
    .locals 0
    .param p1, "httpCacheImpl"    # Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultQuotaBytes()J
    .locals 2

    .line 53
    iget-object v0, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;->getDefaultQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuotaBytes()J
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;->getQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public isUsingDefaultQuota()Z
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;->isUsingDefaultQuota()Z

    move-result v0

    return v0
.end method

.method public setQuotaBytes(J)V
    .locals 2
    .param p1, "quotaInBytes"    # J

    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;->setQuotaBytes(J)V

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Quota must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useDefaultQuota()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/webkit/HttpCache;->mHttpCacheImpl:Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/HttpCacheBoundaryInterface;->useDefaultQuota()V

    .line 84
    return-void
.end method
