.class public final synthetic Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/ui/MainActivity;"
    method = "tap$lambda$42"
    proto = "(FFLkotlin/jvm/internal/Ref$BooleanRef;Lcom/bcr/android/ui/MainActivity;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Lcom/bcr/android/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(FFLkotlin/jvm/internal/Ref$BooleanRef;Lcom/bcr/android/ui/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$3:Lcom/bcr/android/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$0:F

    iget v1, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$1:F

    iget-object v2, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/bcr/android/ui/MainActivity$$ExternalSyntheticLambda0;->f$3:Lcom/bcr/android/ui/MainActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/bcr/android/ui/MainActivity;->tap$lambda$42(FFLkotlin/jvm/internal/Ref$BooleanRef;Lcom/bcr/android/ui/MainActivity;)V

    return-void
.end method
