.class public final Landroidx/webkit/NavigationParameters;
.super Ljava/lang/Object;
.source "NavigationParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/NavigationParameters$Builder;
    }
.end annotation


# instance fields
.field private final mAdditionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldReplaceCurrentEntry:Z


# direct methods
.method private constructor <init>(Landroidx/webkit/NavigationParameters$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/webkit/NavigationParameters$Builder;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroidx/webkit/NavigationParameters$Builder;->-$$Nest$fgetmShouldReplaceCurrentEntry(Landroidx/webkit/NavigationParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/webkit/NavigationParameters;->mShouldReplaceCurrentEntry:Z

    .line 40
    invoke-static {p1}, Landroidx/webkit/NavigationParameters$Builder;->-$$Nest$fgetmAdditionalHeaders(Landroidx/webkit/NavigationParameters$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/NavigationParameters;->mAdditionalHeaders:Ljava/util/Map;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroidx/webkit/NavigationParameters$Builder;Landroidx/webkit/NavigationParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/webkit/NavigationParameters;-><init>(Landroidx/webkit/NavigationParameters$Builder;)V

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

    .line 55
    iget-object v0, p0, Landroidx/webkit/NavigationParameters;->mAdditionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public shouldReplaceCurrentEntry()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Landroidx/webkit/NavigationParameters;->mShouldReplaceCurrentEntry:Z

    return v0
.end method
