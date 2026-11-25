.class public final Landroidx/webkit/NavigationParameters$Builder;
.super Ljava/lang/Object;
.source "NavigationParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/NavigationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private mShouldReplaceCurrentEntry:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdditionalHeaders(Landroidx/webkit/NavigationParameters$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/NavigationParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldReplaceCurrentEntry(Landroidx/webkit/NavigationParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/webkit/NavigationParameters$Builder;->mShouldReplaceCurrentEntry:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/webkit/NavigationParameters$Builder;->mShouldReplaceCurrentEntry:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/webkit/NavigationParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public addAdditionalHeader(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/NavigationParameters$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroidx/webkit/NavigationParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object p0
.end method

.method public addAdditionalHeaders(Ljava/util/Map;)Landroidx/webkit/NavigationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/NavigationParameters$Builder;"
        }
    .end annotation

    .line 116
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/NavigationParameters$Builder;->mAdditionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    return-object p0
.end method

.method public build()Landroidx/webkit/NavigationParameters;
    .locals 2

    .line 131
    new-instance v0, Landroidx/webkit/NavigationParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/webkit/NavigationParameters;-><init>(Landroidx/webkit/NavigationParameters$Builder;Landroidx/webkit/NavigationParameters-IA;)V

    return-object v0
.end method

.method public setShouldReplaceCurrentEntry(Z)Landroidx/webkit/NavigationParameters$Builder;
    .locals 0
    .param p1, "shouldReplaceCurrentEntry"    # Z

    .line 80
    iput-boolean p1, p0, Landroidx/webkit/NavigationParameters$Builder;->mShouldReplaceCurrentEntry:Z

    .line 81
    return-object p0
.end method
