.class public final Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;
.super Ljava/lang/Object;
.source "WebViewAssetLoader.java"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsPathHandler"
.end annotation


# instance fields
.field private final mAssetHelper:Landroidx/webkit/internal/AssetHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Landroidx/webkit/internal/AssetHelper;

    invoke-direct {v0, p1}, Landroidx/webkit/internal/AssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 169
    return-void
.end method

.method constructor <init>(Landroidx/webkit/internal/AssetHelper;)V
    .locals 0
    .param p1, "assetHelper"    # Landroidx/webkit/internal/AssetHelper;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    .line 174
    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 198
    :try_start_0
    iget-object v0, p0, Landroidx/webkit/WebViewAssetLoader$AssetsPathHandler;->mAssetHelper:Landroidx/webkit/internal/AssetHelper;

    invoke-virtual {v0, p1}, Landroidx/webkit/internal/AssetHelper;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v7, v0

    .line 199
    .local v7, "is":Ljava/io/InputStream;
    invoke-static {p1}, Landroidx/webkit/internal/AssetHelper;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v5, "OK"

    invoke-static {}, Landroidx/webkit/WebViewAssetLoader;->-$$Nest$sfgetCACHE_CONTROL_HEADER()Ljava/util/Map;

    move-result-object v6

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 201
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening asset path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewAssetLoader"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method
