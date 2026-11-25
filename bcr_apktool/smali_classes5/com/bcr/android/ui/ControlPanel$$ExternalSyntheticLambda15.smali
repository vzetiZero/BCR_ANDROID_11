.class public final synthetic Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/ui/ControlPanel;"
    method = "lambda$51$lambda$48$lambda$47"
    proto = "(Lcom/bcr/android/ui/ControlPanel;ILandroid/view/View;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bcr/android/ui/ControlPanel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/bcr/android/ui/ControlPanel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/bcr/android/ui/ControlPanel;

    iput p2, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda15;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/bcr/android/ui/ControlPanel;

    iget v1, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda15;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/bcr/android/ui/ControlPanel;->lambda$51$lambda$48$lambda$47(Lcom/bcr/android/ui/ControlPanel;ILandroid/view/View;)V

    return-void
.end method
