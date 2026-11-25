.class public final Landroidx/webkit/RestrictionAllowlist;
.super Ljava/lang/Object;
.source "RestrictionAllowlist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/RestrictionAllowlist$ConfigTask;,
        Landroidx/webkit/RestrictionAllowlist$Builder;
    }
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


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "configTasks":Ljava/util/List;, "Ljava/util/List<Landroidx/webkit/RestrictionAllowlist$ConfigTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/webkit/RestrictionAllowlist-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/webkit/RestrictionAllowlist;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 2
    .param p1, "config"    # Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    .line 55
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/RestrictionAllowlist$ConfigTask;

    .line 56
    .local v1, "configTask":Landroidx/webkit/RestrictionAllowlist$ConfigTask;
    invoke-interface {v1, p1}, Landroidx/webkit/RestrictionAllowlist$ConfigTask;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 57
    .end local v1    # "configTask":Landroidx/webkit/RestrictionAllowlist$ConfigTask;
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
