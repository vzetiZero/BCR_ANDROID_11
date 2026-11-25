.class public final synthetic Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/webkit/RestrictionAllowlist$ConfigTask;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/webkit/RestrictionAllowlist$Builder;"
    method = "lambda$addJavaScriptInterface$0"
    proto = "(Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/webkit/RestrictionAllowlist$Builder;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/RestrictionAllowlist$Builder;

    iput-object p2, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/RestrictionAllowlist$Builder;

    iget-object v1, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/webkit/RestrictionAllowlist$Builder;->lambda$addJavaScriptInterface$0$androidx-webkit-RestrictionAllowlist$Builder(Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    return-void
.end method
