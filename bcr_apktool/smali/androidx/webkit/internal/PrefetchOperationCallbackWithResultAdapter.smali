.class public Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;
.super Ljava/lang/Object;
.source "PrefetchOperationCallbackWithResultAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/PrefetchOperationCallbackBoundaryInterface;


# instance fields
.field private final mCallback:Landroidx/webkit/WebViewOutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/PrefetchResult;",
            "Landroidx/webkit/PrefetchException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/PrefetchResult;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "callback":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Landroidx/webkit/PrefetchResult;Landroidx/webkit/PrefetchException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    .line 60
    return-void
.end method

.method public static buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Landroidx/webkit/PrefetchResult;",
            "Landroidx/webkit/PrefetchException;",
            ">;)",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation

    .line 73
    .local p0, "callback":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Landroidx/webkit/PrefetchResult;Landroidx/webkit/PrefetchException;>;"
    new-instance v0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;)V

    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 3

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREFETCH_WITH_CALLBACK_RESULT_V1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "networkErrorCode"    # I

    .line 114
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PREFETCH_WITH_CALLBACK_RESULT:Landroidx/webkit/internal/ApiFeature$NoFrameworkInternal;

    .line 116
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFrameworkInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFrameworkInternal;->isSupportedByWebView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const-string v1, "Duplicate prefetch request"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v2, Landroidx/webkit/PrefetchResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/webkit/PrefetchResult;-><init>(Z)V

    invoke-interface {v1, v2}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 119
    return-void

    .line 122
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 127
    iget-object v1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v2, Landroidx/webkit/PrefetchException;

    invoke-direct {v2, p2}, Landroidx/webkit/PrefetchException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v2, Landroidx/webkit/PrefetchNetworkException;

    invoke-direct {v2, p2, p3}, Landroidx/webkit/PrefetchNetworkException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 125
    nop

    .line 130
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(I)V
    .locals 3
    .param p1, "type"    # I

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given type isn\'t defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/webkit/PrefetchResult;-><init>(Z)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 94
    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/webkit/PrefetchResult;-><init>(Z)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 91
    nop

    .line 98
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 3

    .line 83
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackWithResultAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/webkit/PrefetchResult;-><init>(Z)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
