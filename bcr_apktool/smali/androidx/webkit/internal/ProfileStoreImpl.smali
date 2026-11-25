.class public Landroidx/webkit/internal/ProfileStoreImpl;
.super Ljava/lang/Object;
.source "ProfileStoreImpl.java"

# interfaces
.implements Landroidx/webkit/ProfileStore;


# static fields
.field private static sInstance:Landroidx/webkit/internal/ProfileStoreImpl;


# instance fields
.field private final mProfileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/webkit/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;)V
    .locals 1
    .param p1, "profileStoreImpl"    # Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileCache:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    .line 52
    return-void
.end method

.method public static getInstance()Landroidx/webkit/internal/ProfileStoreImpl;
    .locals 2

    .line 61
    sget-object v0, Landroidx/webkit/internal/ProfileStoreImpl;->sInstance:Landroidx/webkit/internal/ProfileStoreImpl;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroidx/webkit/internal/ProfileStoreImpl;

    .line 63
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/webkit/internal/ProfileStoreImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;)V

    sput-object v0, Landroidx/webkit/internal/ProfileStoreImpl;->sInstance:Landroidx/webkit/internal/ProfileStoreImpl;

    .line 65
    :cond_0
    sget-object v0, Landroidx/webkit/internal/ProfileStoreImpl;->sInstance:Landroidx/webkit/internal/ProfileStoreImpl;

    return-object v0
.end method

.method static synthetic lambda$getOrCreateProfileFromBoundaryInterface$2(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;Ljava/lang/String;)Landroidx/webkit/Profile;
    .locals 1
    .param p0, "profile"    # Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    new-instance v0, Landroidx/webkit/internal/ProfileImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public deleteProfile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 123
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 124
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;->deleteProfile(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 127
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public getAllProfileNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 102
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;->getAllProfileNames()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public getOrCreateProfile(Ljava/lang/String;)Landroidx/webkit/Profile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 71
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileCache:Ljava/util/Map;

    new-instance v2, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/webkit/internal/ProfileStoreImpl;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/Profile;

    return-object v1

    .line 72
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method getOrCreateProfileFromBoundaryInterface(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Profile;
    .locals 4
    .param p1, "profileInvocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 111
    const-class v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 114
    .local v0, "profile":Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileCache:Ljava/util/Map;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/Profile;

    return-object v1

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebView returned the name of a non-existent Profile."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProfile(Ljava/lang/String;)Landroidx/webkit/Profile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 84
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileCache:Ljava/util/Map;

    new-instance v2, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/webkit/internal/ProfileStoreImpl;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/Profile;

    return-object v1

    .line 85
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method synthetic lambda$getOrCreateProfile$0$androidx-webkit-internal-ProfileStoreImpl(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/Profile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 75
    new-instance v0, Landroidx/webkit/internal/ProfileImpl;

    const-class v1, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    iget-object v2, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    .line 78
    invoke-interface {v2, p1}, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;->getOrCreateProfile(Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-direct {v0, v1}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    .line 75
    return-object v0
.end method

.method synthetic lambda$getProfile$1$androidx-webkit-internal-ProfileStoreImpl(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/Profile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;->getProfile(Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 90
    .local v0, "profileBoundaryInterface":Ljava/lang/reflect/InvocationHandler;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Landroidx/webkit/internal/ProfileImpl;

    const-class v2, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    .line 94
    invoke-static {v2, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    invoke-direct {v1, v2}, Landroidx/webkit/internal/ProfileImpl;-><init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V

    .line 93
    return-object v1
.end method
