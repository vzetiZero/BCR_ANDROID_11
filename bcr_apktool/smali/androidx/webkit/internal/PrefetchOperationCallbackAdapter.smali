.class public Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;
.super Ljava/lang/Object;
.source "PrefetchOperationCallbackAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/PrefetchOperationCallbackBoundaryInterface;


# instance fields
.field private final mCallback:Landroidx/webkit/WebViewOutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/Void;",
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
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "callback":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Ljava/lang/Void;Landroidx/webkit/PrefetchException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    .line 45
    return-void
.end method

.method public static buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/WebViewOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation

    .line 58
    .local p0, "callback":Landroidx/webkit/WebViewOutcomeReceiver;, "Landroidx/webkit/WebViewOutcomeReceiver<Ljava/lang/Void;Landroidx/webkit/PrefetchException;>;"
    new-instance v0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;-><init>(Landroidx/webkit/WebViewOutcomeReceiver;)V

    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 3

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREFETCH_WITH_CALLBACK_RESULT_V1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "networkErrorCode"    # I

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 107
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchException;

    invoke-direct {v1, p2}, Landroidx/webkit/PrefetchException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchNetworkException;

    invoke-direct {v1, p2, p3}, Landroidx/webkit/PrefetchNetworkException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 105
    nop

    .line 110
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

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given type isn\'t defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    new-instance v1, Landroidx/webkit/PrefetchNetworkException;

    const-string v2, "Duplicate prefetch request"

    invoke-direct {v1, v2}, Landroidx/webkit/PrefetchNetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 87
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 77
    nop

    .line 91
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->mCallback:Landroidx/webkit/WebViewOutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
