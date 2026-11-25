.class public final synthetic Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/ui/MainActivity;"
    method = "onCreate$lambda$16$lambda$12"
    proto = "(Lcom/bcr/android/ui/MainActivity;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bcr/android/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/bcr/android/ui/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/bcr/android/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v0}, Lcom/bcr/android/ui/MainActivity;->onCreate$lambda$16$lambda$12(Lcom/bcr/android/ui/MainActivity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
