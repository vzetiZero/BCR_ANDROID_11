.class public Landroidx/webkit/JavaScriptExecutionException;
.super Ljava/lang/Exception;
.source "JavaScriptExecutionException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/JavaScriptExecutionException$ErrorType;
    }
.end annotation


# static fields
.field public static final ERROR_FRAME_DESTROYED:I = 0x1

.field public static final ERROR_GENERIC:I


# instance fields
.field private final mErrorType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 62
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    iput p1, p0, Landroidx/webkit/JavaScriptExecutionException;->mErrorType:I

    .line 64
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/webkit/JavaScriptExecutionException;->mErrorType:I

    return v0
.end method
