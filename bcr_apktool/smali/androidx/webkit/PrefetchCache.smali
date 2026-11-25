.class public final Landroidx/webkit/PrefetchCache;
.super Ljava/lang/Object;
.source "PrefetchCache.java"


# instance fields
.field private final mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;


# direct methods
.method public static synthetic $r8$lambda$mCEi04OcFi8gu0FD463twzV2nG8(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V
    .locals 0
    .param p1, "profileImpl"    # Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 62
    return-void
.end method


# virtual methods
.method public clearMaxPrefetches()V
    .locals 2

    .line 133
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 134
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearMaxPrefetches()V

    .line 139
    return-void

    .line 137
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public clearPrefetchTtl()V
    .locals 2

    .line 211
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 212
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->clearPrefetchTtl()V

    .line 217
    return-void

    .line 215
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public getMaxPrefetches()I
    .locals 2

    .line 107
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 108
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getMaxPrefetches()I

    move-result v1

    return v1

    .line 111
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public getPrefetchTtlSeconds()I
    .locals 2

    .line 184
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 185
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getPrefetchTtlSeconds()I

    move-result v1

    return v1

    .line 188
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public prefetchUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/PrefetchParameters;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "prefetchParameters"    # Landroidx/webkit/PrefetchParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/webkit/PrefetchParameters;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/PrefetchResult;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p5, "outcomeReceiver":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Landroidx/webkit/PrefetchResult;Landroidx/webkit/PrefetchException;>;"
    const-string v0, "Url can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    const-string v0, "OutcomeReceiver can not be null."

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 352
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    if-nez p3, :cond_0

    .line 354
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/webkit/PrefetchCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/webkit/PrefetchCache$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object p3, v2

    move-object v4, p3

    goto :goto_0

    .line 353
    :cond_0
    move-object v4, p3

    .line 357
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v4, "callbackExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    new-instance p3, Landroidx/webkit/SpeculativeLoadingParameters;

    invoke-direct {p3, p4}, Landroidx/webkit/SpeculativeLoadingParameters;-><init>(Landroidx/webkit/PrefetchParameters;)V

    .line 360
    .local p3, "params":Landroidx/webkit/SpeculativeLoadingParameters;
    new-instance v1, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;

    invoke-direct {v1, p3}, Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;-><init>(Landroidx/webkit/SpeculativeLoadingParameters;)V

    .line 361
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v5

    .line 364
    .local v5, "paramsBoundaryInterface":Ljava/lang/reflect/InvocationHandler;
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 370
    invoke-static {p5}, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v6

    .line 364
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local v2, "url":Ljava/lang/String;
    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-interface/range {v1 .. v6}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->prefetchUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V

    .line 373
    .end local v5    # "paramsBoundaryInterface":Ljava/lang/reflect/InvocationHandler;
    .end local p3    # "params":Landroidx/webkit/SpeculativeLoadingParameters;
    nop

    .line 376
    return-void

    .line 374
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local p3, "callbackExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    move-object v2, p1

    .end local p1    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public prefetchUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/PrefetchResult;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p4, "outcomeReceiver":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Landroidx/webkit/PrefetchResult;Landroidx/webkit/PrefetchException;>;"
    const-string v0, "Url can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v0, "OutcomeReceiver can not be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 276
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    if-nez p3, :cond_0

    .line 278
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/webkit/PrefetchCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/webkit/PrefetchCache$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    move-object p3, v2

    .line 280
    :cond_0
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 285
    invoke-static {p4}, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .line 280
    invoke-interface {v1, p1, p2, p3, v2}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->prefetchUrl(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/reflect/InvocationHandler;)V

    .line 290
    return-void

    .line 288
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setMaxPrefetches(I)V
    .locals 3
    .param p1, "maxPrefetches"    # I

    .line 83
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 84
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 89
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setMaxPrefetches(I)V

    .line 93
    return-void

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxPrefetches should be greater than or equal to 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setPrefetchTtlSeconds(I)V
    .locals 3
    .param p1, "prefetchTtlSeconds"    # I

    .line 160
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 161
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 166
    iget-object v1, p0, Landroidx/webkit/PrefetchCache;->mProfileImpl:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->setPrefetchTtlSeconds(I)V

    .line 170
    return-void

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "prefetchTtlSeconds should be greater than or equal to 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
