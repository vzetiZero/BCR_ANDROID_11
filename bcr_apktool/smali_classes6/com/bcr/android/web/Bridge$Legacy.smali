.class final Lcom/bcr/android/web/Bridge$Legacy;
.super Ljava/lang/Object;
.source "Bridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bcr/android/web/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Legacy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bcr/android/web/Bridge$Legacy;",
        "",
        "<init>",
        "(Lcom/bcr/android/web/Bridge;)V",
        "postMessage",
        "",
        "text",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bcr/android/web/Bridge;


# direct methods
.method public constructor <init>(Lcom/bcr/android/web/Bridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bcr/android/web/Bridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/bcr/android/web/Bridge$Legacy;->this$0:Lcom/bcr/android/web/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final postMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/bcr/android/web/Bridge$Legacy;->this$0:Lcom/bcr/android/web/Bridge;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bcr/android/web/Bridge;->access$deliver(Lcom/bcr/android/web/Bridge;Ljava/lang/String;Z)V

    return-void
.end method
