.class public final synthetic Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bcr/android/web/Bridge;"
    method = "evalTop$lambda$2"
    proto = "(Lcom/bcr/android/web/Bridge;Ljava/lang/String;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bcr/android/web/Bridge;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/bcr/android/web/Bridge;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;->f$0:Lcom/bcr/android/web/Bridge;

    iput-object p2, p0, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;->f$0:Lcom/bcr/android/web/Bridge;

    iget-object v1, p0, Lcom/bcr/android/web/Bridge$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bcr/android/web/Bridge;->evalTop$lambda$2(Lcom/bcr/android/web/Bridge;Ljava/lang/String;)V

    return-void
.end method
