.class public final Landroidx/webkit/RestrictionAllowlist$Builder;
.super Ljava/lang/Object;
.source "RestrictionAllowlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/RestrictionAllowlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mConfigTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "originPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mOriginPatterns:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)Landroidx/webkit/RestrictionAllowlist$Builder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    new-instance v1, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/webkit/RestrictionAllowlist$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object p0
.end method

.method public build()Landroidx/webkit/RestrictionAllowlist;
    .locals 3

    .line 106
    new-instance v0, Landroidx/webkit/RestrictionAllowlist;

    iget-object v1, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mConfigTasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/webkit/RestrictionAllowlist;-><init>(Ljava/util/List;Landroidx/webkit/RestrictionAllowlist-IA;)V

    return-object v0
.end method

.method synthetic lambda$addJavaScriptInterface$0$androidx-webkit-RestrictionAllowlist$Builder(Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    .line 95
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist$Builder;->mOriginPatterns:Ljava/util/List;

    invoke-virtual {p3, p1, p2, v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
