.class Landroidx/webkit/WebViewCompat$NullReturningWebViewStartUpResult;
.super Ljava/lang/Object;
.source "WebViewCompat.java"

# interfaces
.implements Landroidx/webkit/WebViewStartUpResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullReturningWebViewStartUpResult"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/webkit/WebViewCompat-IA;)V
    .locals 0

    invoke-direct {p0}, Landroidx/webkit/WebViewCompat$NullReturningWebViewStartUpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 1634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonUiThreadBlockingStartUpLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 1644
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalTimeInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 1629
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiThreadBlockingStartUpLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 1639
    const/4 v0, 0x0

    return-object v0
.end method
