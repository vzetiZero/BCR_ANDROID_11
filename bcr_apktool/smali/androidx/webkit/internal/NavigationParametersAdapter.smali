.class public Landroidx/webkit/internal/NavigationParametersAdapter;
.super Ljava/lang/Object;
.source "NavigationParametersAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/NavigationParametersBoundaryInterface;


# static fields
.field private static final SUPPORTED_FEATURES:[Ljava/lang/String;


# instance fields
.field private final mParams:Landroidx/webkit/NavigationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WEBVIEW_NAVIGATE_V1"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/webkit/internal/NavigationParametersAdapter;->SUPPORTED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/NavigationParameters;)V
    .locals 0
    .param p1, "params"    # Landroidx/webkit/NavigationParameters;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/webkit/internal/NavigationParametersAdapter;->mParams:Landroidx/webkit/NavigationParameters;

    .line 39
    return-void
.end method


# virtual methods
.method public getAdditionalHeaders()Ljava/util/Map;
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

    .line 48
    iget-object v0, p0, Landroidx/webkit/internal/NavigationParametersAdapter;->mParams:Landroidx/webkit/NavigationParameters;

    invoke-virtual {v0}, Landroidx/webkit/NavigationParameters;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShouldReplaceCurrentEntry()Z
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/webkit/internal/NavigationParametersAdapter;->mParams:Landroidx/webkit/NavigationParameters;

    invoke-virtual {v0}, Landroidx/webkit/NavigationParameters;->shouldReplaceCurrentEntry()Z

    move-result v0

    return v0
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Landroidx/webkit/internal/NavigationParametersAdapter;->SUPPORTED_FEATURES:[Ljava/lang/String;

    return-object v0
.end method
