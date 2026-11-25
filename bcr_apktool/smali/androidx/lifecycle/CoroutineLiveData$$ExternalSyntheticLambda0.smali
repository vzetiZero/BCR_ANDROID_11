.class public final synthetic Landroidx/lifecycle/CoroutineLiveData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/lifecycle/CoroutineLiveData;"
    method = "_init_$lambda$0"
    proto = "(Landroidx/lifecycle/CoroutineLiveData;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/CoroutineLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/CoroutineLiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/CoroutineLiveData;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/CoroutineLiveData$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/CoroutineLiveData;

    invoke-static {v0}, Landroidx/lifecycle/CoroutineLiveData;->_init_$lambda$0(Landroidx/lifecycle/CoroutineLiveData;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
