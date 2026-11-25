.class public Landroidx/webkit/WebResourceResponseCompat;
.super Ljava/lang/Object;
.source "WebResourceResponseCompat.java"


# instance fields
.field private mCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrapped:Landroid/webkit/WebResourceResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 83
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 84
    new-instance v1, Landroid/webkit/WebResourceResponse;

    .line 85
    if-eqz p5, :cond_0

    move-object v6, p5

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v6, v0

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p6

    .end local p1    # "mimeType":Ljava/lang/String;
    .end local p2    # "encoding":Ljava/lang/String;
    .end local p3    # "statusCode":I
    .end local p4    # "reasonPhrase":Ljava/lang/String;
    .end local p6    # "data":Ljava/io/InputStream;
    .local v2, "mimeType":Ljava/lang/String;
    .local v3, "encoding":Ljava/lang/String;
    .local v4, "statusCode":I
    .local v5, "reasonPhrase":Ljava/lang/String;
    .local v7, "data":Ljava/io/InputStream;
    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    iput-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 73
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, p1, p2, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 74
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method private serializeMultiCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 256
    .local p1, "cookieValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, ""

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "cookieValue":Ljava/lang/String;
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Metric$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 263
    const-string v3, "\u0000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .end local v2    # "cookieValue":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toWebResourceResponseCompat(Landroid/webkit/WebResourceResponse;)Landroidx/webkit/WebResourceResponseCompat;
    .locals 9
    .param p0, "response"    # Landroid/webkit/WebResourceResponse;

    .line 55
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    .line 56
    .local v0, "statusCode":I
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "reasonPhrase":Ljava/lang/String;
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 58
    const/16 v0, 0xc8

    move v5, v0

    goto :goto_0

    .line 57
    :cond_0
    move v5, v0

    .line 60
    .end local v0    # "statusCode":I
    .local v5, "statusCode":I
    :goto_0
    if-nez v1, :cond_1

    .line 61
    const-string v1, "OK"

    move-object v6, v1

    goto :goto_1

    .line 60
    :cond_1
    move-object v6, v1

    .line 63
    .end local v1    # "reasonPhrase":Ljava/lang/String;
    .local v6, "reasonPhrase":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroidx/webkit/WebResourceResponseCompat;

    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Landroidx/webkit/WebResourceResponseCompat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 63
    return-object v2
.end method


# virtual methods
.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    return-object v0
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public setCookies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 230
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iput-object p1, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 234
    return-void

    .line 231
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;

    .line 194
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 195
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setEncoding(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public toWebResourceResponse()Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 99
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 101
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v7, v1

    .local v1, "mergedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 104
    .end local v1    # "mergedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    .line 106
    .local v7, "mergedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 108
    invoke-direct {p0, v1}, Landroidx/webkit/WebResourceResponseCompat;->serializeMultiCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "\u0000Set-Cookie-Multivalue\u0000"

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    .line 114
    .local v1, "statusCode":I
    iget-object v2, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "reasonPhrase":Ljava/lang/String;
    const/16 v3, 0x64

    if-ge v1, v3, :cond_2

    .line 116
    const/16 v1, 0xc8

    .line 117
    const-string v2, "OK"

    move v5, v1

    move-object v6, v2

    goto :goto_1

    .line 115
    :cond_2
    move v5, v1

    move-object v6, v2

    .line 119
    .end local v1    # "statusCode":I
    .end local v2    # "reasonPhrase":Ljava/lang/String;
    .local v5, "statusCode":I
    .local v6, "reasonPhrase":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/webkit/WebResourceResponse;

    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 120
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 119
    return-object v2
.end method
