.class public final synthetic Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/ui/ControlPanel;"
    method = "_init_$lambda$57"
    proto = "(Lcom/bcr/android/ui/ControlPanel;Landroid/view/View;IIIIIIII)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bcr/android/ui/ControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/bcr/android/ui/ControlPanel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda16;->f$0:Lcom/bcr/android/ui/ControlPanel;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/bcr/android/ui/ControlPanel$$ExternalSyntheticLambda16;->f$0:Lcom/bcr/android/ui/ControlPanel;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/bcr/android/ui/ControlPanel;->_init_$lambda$57(Lcom/bcr/android/ui/ControlPanel;Landroid/view/View;IIIIIIII)V

    return-void
.end method
