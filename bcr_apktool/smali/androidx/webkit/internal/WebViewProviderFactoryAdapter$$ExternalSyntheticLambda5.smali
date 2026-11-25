.class public final synthetic Landroidx/webkit/internal/WebViewProviderFactoryAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/webkit/internal/WebViewProviderFactoryAdapter;"
    method = "lambda$startUpWebView$2"
    proto = "(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "64bbee9deb17f2433a2f464e7880a82f306bf117c38a5da5e35bd2560d29022a"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/webkit/WebViewOutcomeReceiver;

.field public final synthetic f$1:Landroidx/webkit/internal/WebViewStartupResultImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter$$ExternalSyntheticLambda5;->f$0:Landroidx/webkit/WebViewOutcomeReceiver;

    iput-object p2, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter$$ExternalSyntheticLambda5;->f$1:Landroidx/webkit/internal/WebViewStartupResultImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter$$ExternalSyntheticLambda5;->f$0:Landroidx/webkit/WebViewOutcomeReceiver;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewProviderFactoryAdapter$$ExternalSyntheticLambda5;->f$1:Landroidx/webkit/internal/WebViewStartupResultImpl;

    invoke-static {v0, v1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->lambda$startUpWebView$2(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V

    return-void
.end method
