.class public final Landroidx/webkit/WebViewBuilder;
.super Ljava/lang/Object;
.source "WebViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewBuilder$Preset;,
        Landroidx/webkit/WebViewBuilder$Experimental;
    }
.end annotation


# static fields
.field public static final PRESET_LEGACY:I


# instance fields
.field private final mAllowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist;",
            ">;"
        }
    .end annotation
.end field

.field mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

.field private mProfileName:Ljava/lang/String;

.field private mRestrictJavascriptInterface:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "preset"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    .line 90
    if-nez p1, :cond_0

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid preset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 236
    :cond_0
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    return-object v0
.end method

.method private makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    .locals 3

    .line 240
    new-instance v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    invoke-direct {v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;-><init>()V

    .line 243
    .local v0, "config":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    iget-boolean v1, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    iput-boolean v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->restrictJavascriptInterface:Z

    .line 244
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    .line 247
    :try_start_0
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/webkit/RestrictionAllowlist;

    .line 248
    .local v2, "allowList":Landroidx/webkit/RestrictionAllowlist;
    invoke-virtual {v2, v0}, Landroidx/webkit/RestrictionAllowlist;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "allowList":Landroidx/webkit/RestrictionAllowlist;
    goto :goto_0

    .line 252
    :cond_0
    nop

    .line 254
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {v2, v1}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addAllowlist(Landroidx/webkit/RestrictionAllowlist;)Landroidx/webkit/WebViewBuilder;
    .locals 1
    .param p1, "allowList"    # Landroidx/webkit/RestrictionAllowlist;

    .line 146
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public applyTo(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/webkit/WebView;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 206
    .local p1, "webview":Landroid/webkit/WebView;, "TT;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V2:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 207
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v1

    .line 213
    .local v1, "builder":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    move-result-object v2

    .line 216
    .local v2, "config":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    :try_start_0
    invoke-interface {v1, p1, v2}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->applyTo(Landroid/webkit/WebView;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    nop

    .line 226
    return-object p1

    .line 222
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {v4, v3}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 217
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/IllegalStateException;
    throw v3

    .line 208
    .end local v1    # "builder":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    .end local v2    # "config":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public build(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 166
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v1

    .line 172
    .local v1, "builder":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    move-result-object v2

    .line 175
    .local v2, "config":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    :try_start_0
    invoke-interface {v1, p1, v2}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->build(Landroid/content/Context;Ljava/util/function/Consumer;)Landroid/webkit/WebView;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {v4, v3}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 167
    .end local v1    # "builder":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    .end local v2    # "config":Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public restrictJavaScriptInterfaces()Landroidx/webkit/WebViewBuilder;
    .locals 1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    .line 111
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Landroidx/webkit/WebViewBuilder;
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    .line 132
    return-object p0
.end method
