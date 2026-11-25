.class public final synthetic Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/core/Runner;"
    method = "tryPlace$lambda$26"
    proto = "(Lcom/bcr/android/model/Plan;Lcom/bcr/android/web/Bridge$Reply;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bcr/android/model/Plan;


# direct methods
.method public synthetic constructor <init>(Lcom/bcr/android/model/Plan;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda11;->f$0:Lcom/bcr/android/model/Plan;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bcr/android/core/Runner$$ExternalSyntheticLambda11;->f$0:Lcom/bcr/android/model/Plan;

    check-cast p1, Lcom/bcr/android/web/Bridge$Reply;

    invoke-static {v0, p1}, Lcom/bcr/android/core/Runner;->tryPlace$lambda$26(Lcom/bcr/android/model/Plan;Lcom/bcr/android/web/Bridge$Reply;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
