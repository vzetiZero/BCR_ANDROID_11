.class public Landroidx/webkit/internal/WebViewStartupExceptionBuilder;
.super Ljava/lang/Object;
.source "WebViewStartupExceptionBuilder.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mErrorCode:Ljava/lang/Integer;

.field mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildException(Ljava/util/function/Consumer;)Landroidx/webkit/WebViewStartupException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroidx/webkit/WebViewStartupException;"
        }
    .end annotation

    .line 58
    .local p0, "onFailure":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    new-instance v0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;

    invoke-direct {v0}, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;-><init>()V

    .line 59
    .local v0, "builder":Landroidx/webkit/internal/WebViewStartupExceptionBuilder;
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 61
    iget-object v1, v0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorCode:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Landroidx/webkit/WebViewStartupException;

    iget-object v2, v0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/webkit/WebViewStartupException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 65
    :cond_0
    iget-object v1, v0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    new-instance v1, Landroidx/webkit/WebViewStartupException;

    iget-object v2, v0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/webkit/WebViewStartupException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 40
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorMessage:Ljava/lang/String;

    .line 41
    goto :goto_0

    .line 36
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->mErrorCode:Ljava/lang/Integer;

    .line 37
    nop

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
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

    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebViewStartupExceptionBuilder;->accept(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method
