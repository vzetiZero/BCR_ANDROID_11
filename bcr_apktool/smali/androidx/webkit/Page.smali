.class public final Landroidx/webkit/Page;
.super Ljava/lang/Object;
.source "Page.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V
    .locals 0
    .param p1, "pageImpl"    # Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/webkit/Page;->mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 48
    return-void
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;
    .locals 2
    .param p0, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 55
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 56
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 58
    .local v0, "boundaryInterface":Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Landroidx/webkit/Page$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/webkit/Page$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 60
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/Page;

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    new-instance v0, Landroidx/webkit/Page;

    invoke-direct {v0, p0}, Landroidx/webkit/Page;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/webkit/Page;->mPageImpl:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
