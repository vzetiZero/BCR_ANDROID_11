.class public final Landroidx/webkit/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

.field mPage:Landroidx/webkit/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V
    .locals 0
    .param p1, "navigationImpl"    # Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 59
    return-void
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Navigation;
    .locals 2
    .param p0, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 67
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 68
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 70
    .local v0, "boundaryInterface":Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Landroidx/webkit/Navigation$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/webkit/Navigation$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/Navigation;

    return-object v1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/webkit/Navigation;

    invoke-direct {v0, p0}, Landroidx/webkit/Navigation;-><init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public didCommit()Z
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommit()Z

    move-result v0

    return v0
.end method

.method public didCommitErrorPage()Z
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommitErrorPage()Z

    move-result v0

    return v0
.end method

.method public getPage()Landroidx/webkit/Page;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Landroidx/webkit/Navigation;->mPage:Landroidx/webkit/Page;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    invoke-static {v0}, Landroidx/webkit/Page;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/Navigation;->mPage:Landroidx/webkit/Page;

    .line 98
    :cond_1
    iget-object v0, p0, Landroidx/webkit/Navigation;->mPage:Landroidx/webkit/Page;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebResourceError()Landroidx/webkit/WebResourceErrorCompat;
    .locals 3

    .line 215
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_GET_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 216
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getWebResourceError()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 218
    :cond_0
    new-instance v1, Landroidx/webkit/internal/WebResourceErrorImpl;

    iget-object v2, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v2}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getWebResourceError()Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/webkit/internal/WebResourceErrorImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    return-object v1

    .line 220
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public isBack()Z
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isBack()Z

    move-result v0

    return v0
.end method

.method public isForward()Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isForward()Z

    move-result v0

    return v0
.end method

.method public isHistory()Z
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isHistory()Z

    move-result v0

    return v0
.end method

.method public isReload()Z
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isReload()Z

    move-result v0

    return v0
.end method

.method public isRestore()Z
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isRestore()Z

    move-result v0

    return v0
.end method

.method public isSameDocument()Z
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isSameDocument()Z

    move-result v0

    return v0
.end method

.method public wasInitiatedByPage()Z
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/webkit/Navigation;->mNavigationImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->wasInitiatedByPage()Z

    move-result v0

    return v0
.end method
