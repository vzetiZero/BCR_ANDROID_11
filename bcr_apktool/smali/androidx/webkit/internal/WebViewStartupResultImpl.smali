.class public Landroidx/webkit/internal/WebViewStartupResultImpl;
.super Ljava/lang/Object;
.source "WebViewStartupResultImpl.java"

# interfaces
.implements Landroidx/webkit/WebViewStartUpResult;
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/webkit/WebViewStartUpResult;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAsyncStartupLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockingStartupLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTimePerTaskUiThreadMillis:Ljava/lang/Long;

.field private mTotalTimeUiThreadMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    .local p1, "result":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mBlockingStartupLocations:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mAsyncStartupLocations:Ljava/util/List;

    .line 40
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    goto :goto_0

    .line 80
    :pswitch_0
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mAsyncStartupLocations:Ljava/util/List;

    new-instance v2, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;

    .line 84
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;-><init>(Ljava/lang/Throwable;)V

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mAsyncStartupLocations:Ljava/util/List;

    new-instance v1, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mBlockingStartupLocations:Ljava/util/List;

    new-instance v1, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Landroidx/webkit/internal/WebViewStartupResultImpl$StartUpLocationImpl;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_0

    .line 72
    :pswitch_2
    if-eqz p2, :cond_2

    .line 73
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mMaxTimePerTaskUiThreadMillis:Ljava/lang/Long;

    goto :goto_0

    .line 67
    :pswitch_3
    if-eqz p2, :cond_2

    .line 68
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mTotalTimeUiThreadMillis:Ljava/lang/Long;

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current AndroidX version doesn\'t support this callback value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebViewStartupResultImpl;->accept(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mMaxTimePerTaskUiThreadMillis:Ljava/lang/Long;

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

    .line 60
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mAsyncStartupLocations:Ljava/util/List;

    return-object v0
.end method

.method public getTotalTimeInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mTotalTimeUiThreadMillis:Ljava/lang/Long;

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

    .line 55
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartupResultImpl;->mBlockingStartupLocations:Ljava/util/List;

    return-object v0
.end method
