.class public Landroidx/webkit/BackForwardCacheSettings;
.super Ljava/lang/Object;
.source "BackForwardCacheSettings.java"


# instance fields
.field private final mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;


# direct methods
.method constructor <init>(Landroidx/webkit/internal/WebSettingsAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroidx/webkit/internal/WebSettingsAdapter;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    .line 54
    return-void
.end method


# virtual methods
.method public getMaxPagesInCache()I
    .locals 2

    .line 108
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 110
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getBackForwardCacheMaxPagesInCache()I

    move-result v1

    return v1

    .line 113
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public getTimeoutSeconds()J
    .locals 3

    .line 67
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 69
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getBackForwardCacheTimeoutSeconds()J

    move-result-wide v1

    return-wide v1

    .line 72
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public isKeepForwardEntriesEnabled()Z
    .locals 2

    .line 150
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 152
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1}, Landroidx/webkit/internal/WebSettingsAdapter;->getBackForwardCacheKeepForwardEntries()Z

    move-result v1

    return v1

    .line 155
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setKeepForwardEntriesEnabled(Z)V
    .locals 2
    .param p1, "keepForwardEntries"    # Z

    .line 172
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 174
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setBackForwardCacheKeepForwardEntries(Z)V

    .line 179
    return-void

    .line 177
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setMaxPagesInCache(I)V
    .locals 2
    .param p1, "maxPagesInCache"    # I

    .line 129
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 131
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1, p1}, Landroidx/webkit/internal/WebSettingsAdapter;->setBackForwardCacheMaxPagesInCache(I)V

    .line 136
    return-void

    .line 134
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setTimeoutSeconds(J)V
    .locals 2
    .param p1, "timeoutSeconds"    # J

    .line 88
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 90
    .local v0, "feature":Landroidx/webkit/internal/ApiFeature$NoFramework;
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Landroidx/webkit/BackForwardCacheSettings;->mAdapter:Landroidx/webkit/internal/WebSettingsAdapter;

    invoke-virtual {v1, p1, p2}, Landroidx/webkit/internal/WebSettingsAdapter;->setBackForwardCacheTimeoutSeconds(J)V

    .line 95
    return-void

    .line 93
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
