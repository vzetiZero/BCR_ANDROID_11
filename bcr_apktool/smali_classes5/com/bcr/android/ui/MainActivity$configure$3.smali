.class public final Lcom/bcr/android/ui/MainActivity$configure$3;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bcr/android/ui/MainActivity;->configure(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/bcr/android/ui/MainActivity$configure$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,557:1\n1#2:558\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J \u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0015H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/bcr/android/ui/MainActivity$configure$3",
        "Landroid/webkit/WebViewClient;",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "onPageStarted",
        "",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onPageFinished",
        "onReceivedError",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bcr/android/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/bcr/android/ui/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/bcr/android/ui/MainActivity;

    iput-object p1, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    .line 231
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v0}, Lcom/bcr/android/ui/MainActivity;->access$updateNavState(Lcom/bcr/android/ui/MainActivity;)V

    .line 252
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 244
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    move-object v1, p2

    .line 558
    .local v1, "it\\1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$a$-let-MainActivity$configure$3$onPageStarted$1\\1\\244\\0":I
    invoke-static {v0}, Lcom/bcr/android/ui/MainActivity;->access$getPrefs$p(Lcom/bcr/android/ui/MainActivity;)Lcom/bcr/android/core/SitePrefs;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "prefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/bcr/android/core/SitePrefs;->setLastUrl(Ljava/lang/String;)V

    .line 245
    .end local v1    # "it\\1":Ljava/lang/String;
    .end local v2    # "$i$a$-let-MainActivity$configure$3$onPageStarted$1\\1\\244\\0":I
    :cond_1
    iget-object v0, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v0}, Lcom/bcr/android/ui/MainActivity;->access$updateNavState(Lcom/bcr/android/ui/MainActivity;)V

    .line 246
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 261
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, ""

    if-nez v0, :cond_2

    move-object v0, v2

    .line 263
    .local v0, "failed":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v3, v0}, Lcom/bcr/android/ui/MainActivity;->access$swapScheme(Lcom/bcr/android/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "swapped":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/bcr/android/ui/MainActivity$configure$3;

    .line 558
    .local v4, "$this$onReceivedError_u24lambda_u241\\1":Lcom/bcr/android/ui/MainActivity$configure$3;
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$a$-runCatching-MainActivity$configure$3$onReceivedError$code$1\\1\\264\\0":I
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v6

    .end local v4    # "$this$onReceivedError_u24lambda_u241\\1":Lcom/bcr/android/ui/MainActivity$configure$3;
    .end local v5    # "$i$a$-runCatching-MainActivity$configure$3$onReceivedError$code$1\\1\\264\\0":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v5

    :cond_3
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 269
    .local v4, "code":I
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v5, v4}, Lcom/bcr/android/ui/MainActivity;->access$isConnectionError(Lcom/bcr/android/ui/MainActivity;I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v5}, Lcom/bcr/android/ui/MainActivity;->access$getLastFallbackKey$p(Lcom/bcr/android/ui/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 270
    iget-object v1, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v1, v0}, Lcom/bcr/android/ui/MainActivity;->access$setLastFallbackKey$p(Lcom/bcr/android/ui/MainActivity;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 272
    return-void

    .line 275
    :cond_4
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, p0

    check-cast v5, Lcom/bcr/android/ui/MainActivity$configure$3;

    .line 558
    .local v5, "$this$onReceivedError_u24lambda_u242\\2":Lcom/bcr/android/ui/MainActivity$configure$3;
    const/4 v6, 0x0

    .line 275
    .local v6, "$i$a$-runCatching-MainActivity$configure$3$onReceivedError$text$1\\2\\275\\0":I
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5    # "$this$onReceivedError_u24lambda_u242\\2":Lcom/bcr/android/ui/MainActivity$configure$3;
    .end local v6    # "$i$a$-runCatching-MainActivity$configure$3$onReceivedError$text$1\\2\\275\\0":I
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v1

    :cond_5
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v2, v5

    .line 276
    .local v2, "text":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v5}, Lcom/bcr/android/ui/MainActivity;->access$getPanel$p(Lcom/bcr/android/ui/MainActivity;)Lcom/bcr/android/ui/ControlPanel;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, "panel"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_7
    iget-object v6, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v6}, Lcom/bcr/android/ui/MainActivity;->access$getPrefs$p(Lcom/bcr/android/ui/MainActivity;)Lcom/bcr/android/core/SitePrefs;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, "prefs"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v1, v6

    :goto_3
    invoke-virtual {v1}, Lcom/bcr/android/core/SitePrefs;->getSiteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bcr/android/ui/ControlPanel;->setSiteUrl(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v1, v4}, Lcom/bcr/android/ui/MainActivity;->access$isConnectionError(Lcom/bcr/android/ui/MainActivity;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 278
    const-string v1, "M\u00e1y kh\u00f4ng n\u1ed1i \u0111\u01b0\u1ee3c t\u1edbi t\u00ean mi\u1ec1n n\u00e0y.\n\u2022 Link c\u00f3 th\u1ec3 \u0111\u00e3 ch\u1ebft \u2014 l\u1ea5y link m\u1edbi c\u1ee7a site\n\u2022 N\u1ebfu site c\u1ea7n VPN/proxy: b\u1eadt l\u00ean r\u1ed3i th\u1eed l\u1ea1i\n\u2022 D\u00e1n link \u0111\u1ea7y \u0111\u1ee7 (c\u00f3 http:// ho\u1eb7c https://) v\u00e0o \u00f4 \"Link site\""

    goto :goto_4

    .line 283
    :cond_9
    const-string v1, "D\u00e1n link kh\u00e1c v\u00e0o \u00f4 \"Link site\" trong panel r\u1ed3i b\u1ea5m M\u1ede LINK."

    .line 277
    :goto_4
    nop

    .line 285
    .local v1, "hint":Ljava/lang/String;
    iget-object v5, p0, Lcom/bcr/android/ui/MainActivity$configure$3;->this$0:Lcom/bcr/android/ui/MainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kh\u00f4ng m\u1edf \u0111\u01b0\u1ee3c trang ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ").\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bcr/android/ui/MainActivity;->access$toast(Lcom/bcr/android/ui/MainActivity;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 297
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 238
    .local v0, "scheme":Ljava/lang/String;
    :cond_0
    const-string v1, "http"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
