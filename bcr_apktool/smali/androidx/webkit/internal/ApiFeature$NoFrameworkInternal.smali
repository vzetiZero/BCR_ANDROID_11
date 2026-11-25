.class public Landroidx/webkit/internal/ApiFeature$NoFrameworkInternal;
.super Landroidx/webkit/internal/ApiFeature;
.source "ApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/internal/ApiFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFrameworkInternal"
.end annotation


# static fields
.field private static final PUBLIC_NAME:Ljava/lang/String; = "IMPLEMENTATION_ONLY_FEATURE"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalFeatureValue"    # Ljava/lang/String;

    .line 133
    const-string v0, "IMPLEMENTATION_ONLY_FEATURE"

    invoke-direct {p0, v0, p1}, Landroidx/webkit/internal/ApiFeature;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final isSupportedByFramework()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method
