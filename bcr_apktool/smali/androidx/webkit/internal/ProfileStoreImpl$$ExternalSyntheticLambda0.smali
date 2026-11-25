.class public final synthetic Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/webkit/internal/ProfileStoreImpl;"
    method = "lambda$getOrCreateProfileFromBoundaryInterface$2"
    proto = "(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;Ljava/lang/String;)Landroidx/webkit/Profile;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/ProfileStoreImpl$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/webkit/internal/ProfileStoreImpl;->lambda$getOrCreateProfileFromBoundaryInterface$2(Lorg/chromium/support_lib_boundary/ProfileBoundaryInterface;Ljava/lang/String;)Landroidx/webkit/Profile;

    move-result-object p1

    return-object p1
.end method
