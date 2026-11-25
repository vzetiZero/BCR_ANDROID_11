.class public Landroidx/webkit/JavaScriptExecutionWorld;
.super Ljava/lang/Object;
.source "JavaScriptExecutionWorld.java"


# static fields
.field public static final PAGE_WORLD_NAME:Ljava/lang/String; = ""


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mWebView:Landroid/webkit/WebView;

    .line 45
    return-void
.end method


# virtual methods
.method checkWebviewRegistration(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 59
    iget-object v0, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mWebView:Landroid/webkit/WebView;

    if-ne v0, p1, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The world is not associated with the webview"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 68
    return v0

    .line 71
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 72
    return v1

    .line 74
    :cond_1
    instance-of v2, p1, Landroidx/webkit/JavaScriptExecutionWorld;

    if-eqz v2, :cond_3

    .line 75
    move-object v2, p1

    check-cast v2, Landroidx/webkit/JavaScriptExecutionWorld;

    .line 76
    .local v2, "that":Landroidx/webkit/JavaScriptExecutionWorld;
    iget-object v3, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroidx/webkit/JavaScriptExecutionWorld;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v2, Landroidx/webkit/JavaScriptExecutionWorld;->mWebView:Landroid/webkit/WebView;

    .line 77
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 76
    :goto_0
    return v0

    .line 79
    .end local v2    # "that":Landroidx/webkit/JavaScriptExecutionWorld;
    :cond_3
    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/webkit/JavaScriptExecutionWorld;->mWebView:Landroid/webkit/WebView;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
