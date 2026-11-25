.class public Landroidx/webkit/internal/WebSettingsNoOpAdapter;
.super Landroidx/webkit/internal/WebSettingsAdapter;
.source "WebSettingsNoOpAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/webkit/internal/WebSettingsAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAttributionRegistrationBehavior()I
    .locals 1

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getBackForwardCacheEnabled()Z
    .locals 1

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getBackForwardCacheKeepForwardEntries()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public getBackForwardCacheMaxPagesInCache()I
    .locals 1

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getBackForwardCacheTimeoutSeconds()J
    .locals 2

    .line 329
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCookieAccessForShouldInterceptRequestEnabled()Z
    .locals 1

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public getDisabledActionModeMenuItems()I
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadFaviconsEnabled()Z
    .locals 1

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public getEnterpriseAuthenticationAppLinkPolicyEnabled()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getForceDark()I
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getForceDarkStrategy()I
    .locals 1

    .line 122
    const/4 v0, 0x2

    return v0
.end method

.method public getHasEnrolledInstrumentEnabled()Z
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getOffscreenPreRaster()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getPaymentRequestEnabled()Z
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeBrowsingEnabled()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public getSpeculativeLoadingStatus()I
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getUserAgentMetadata()Landroidx/webkit/UserAgentMetadata;
    .locals 1

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroidx/webkit/internal/UserAgentMetadataInternal;->getUserAgentMetadataFromMap(Ljava/util/Map;)Landroidx/webkit/UserAgentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getWebAuthenticationSupport()I
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getWebViewMediaIntegrityApiStatus()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;
    .locals 2

    .line 208
    new-instance v0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;-><init>(I)V

    .line 210
    invoke-virtual {v0}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->build()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public isAlgorithmicDarkeningAllowed()Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 130
    return-void
.end method

.method public setAttributionRegistrationBehavior(I)V
    .locals 0
    .param p1, "behavior"    # I

    .line 191
    return-void
.end method

.method public setBackForwardCacheEnabled(Z)V
    .locals 0
    .param p1, "backForwardCacheEnabled"    # Z

    .line 254
    return-void
.end method

.method public setBackForwardCacheKeepForwardEntries(Z)V
    .locals 0
    .param p1, "keepForwardEntries"    # Z

    .line 341
    return-void
.end method

.method public setBackForwardCacheMaxPagesInCache(I)V
    .locals 0
    .param p1, "maxPages"    # I

    .line 324
    return-void
.end method

.method public setBackForwardCacheTimeoutSeconds(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 319
    return-void
.end method

.method public setCookieAccessForShouldInterceptRequestEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 301
    return-void
.end method

.method public setDisabledActionModeMenuItems(I)V
    .locals 0
    .param p1, "menuItems"    # I

    .line 83
    return-void
.end method

.method public setDownloadFaviconsEnabled(Z)V
    .locals 0
    .param p1, "shouldDownload"    # Z

    .line 355
    return-void
.end method

.method public setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 146
    return-void
.end method

.method public setForceDark(I)V
    .locals 0
    .param p1, "forceDarkMode"    # I

    .line 98
    return-void
.end method

.method public setForceDarkStrategy(I)V
    .locals 0
    .param p1, "forceDarkStrategy"    # I

    .line 114
    return-void
.end method

.method public setHasEnrolledInstrumentEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 288
    return-void
.end method

.method public setHyperlinkContextMenuItems(I)V
    .locals 0
    .param p1, "hyperlinkMenuItems"    # I

    .line 314
    return-void
.end method

.method public setOffscreenPreRaster(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 53
    return-void
.end method

.method public setPaymentRequestEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 271
    return-void
.end method

.method public setSafeBrowsingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 68
    return-void
.end method

.method public setSpeculativeLoadingStatus(I)V
    .locals 0
    .param p1, "speculativeLoadingStatus"    # I

    .line 236
    return-void
.end method

.method public setUserAgentMetadata(Landroidx/webkit/UserAgentMetadata;)V
    .locals 0
    .param p1, "uaMetadata"    # Landroidx/webkit/UserAgentMetadata;

    .line 174
    return-void
.end method

.method public setWebAuthenticationSupport(I)V
    .locals 0
    .param p1, "support"    # I

    .line 219
    return-void
.end method

.method public setWebViewMediaIntegrityApiStatus(Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;)V
    .locals 0
    .param p1, "permissionConfig"    # Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;

    .line 200
    return-void
.end method
