.class public interface abstract Landroidx/webkit/NavigationListener;
.super Ljava/lang/Object;
.source "NavigationListener.java"


# virtual methods
.method public onFirstContentfulPaintMillis(Landroidx/webkit/Page;J)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;
    .param p2, "durationMillis"    # J

    .line 127
    return-void
.end method

.method public onLargestContentfulPaintMillis(Landroidx/webkit/Page;J)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;
    .param p2, "durationMillis"    # J

    .line 148
    return-void
.end method

.method public onNavigationCompleted(Landroidx/webkit/Navigation;)V
    .locals 0
    .param p1, "navigation"    # Landroidx/webkit/Navigation;

    .line 78
    return-void
.end method

.method public onNavigationRedirected(Landroidx/webkit/Navigation;)V
    .locals 0
    .param p1, "navigation"    # Landroidx/webkit/Navigation;

    .line 66
    return-void
.end method

.method public onNavigationStarted(Landroidx/webkit/Navigation;)V
    .locals 0
    .param p1, "navigation"    # Landroidx/webkit/Navigation;

    .line 57
    return-void
.end method

.method public onPageDeleted(Landroidx/webkit/Page;)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;

    .line 88
    return-void
.end method

.method public onPageDomContentLoadedEvent(Landroidx/webkit/Page;)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;

    .line 106
    return-void
.end method

.method public onPageLoadEvent(Landroidx/webkit/Page;)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;

    .line 97
    return-void
.end method

.method public onPerformanceMarkMillis(Landroidx/webkit/Page;Ljava/lang/String;J)V
    .locals 0
    .param p1, "page"    # Landroidx/webkit/Page;
    .param p2, "markName"    # Ljava/lang/String;
    .param p3, "markTimeMillis"    # J

    .line 172
    return-void
.end method
