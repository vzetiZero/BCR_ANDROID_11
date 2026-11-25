.class public final Lcom/bcr/android/core/SitePrefs;
.super Ljava/lang/Object;
.source "SitePrefs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bcr/android/core/SitePrefs$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSitePrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SitePrefs.kt\ncom/bcr/android/core/SitePrefs\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0013\u001a\u00020\nR\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bcr/android/core/SitePrefs;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "store",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "value",
        "",
        "siteUrl",
        "getSiteUrl",
        "()Ljava/lang/String;",
        "setSiteUrl",
        "(Ljava/lang/String;)V",
        "lastUrl",
        "getLastUrl",
        "setLastUrl",
        "resumeUrl",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bcr/android/core/SitePrefs$Companion;

.field public static final DEFAULT_SITE:Ljava/lang/String; = "https://onbet.com/vi/"

.field private static final KEY_LAST:Ljava/lang/String; = "last_url"

.field private static final KEY_SITE:Ljava/lang/String; = "site_url"


# instance fields
.field private final store:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bcr/android/core/SitePrefs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bcr/android/core/SitePrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bcr/android/core/SitePrefs;->Companion:Lcom/bcr/android/core/SitePrefs$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    nop

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    const-string v1, "bcr_site"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bcr/android/core/SitePrefs;->store:Landroid/content/SharedPreferences;

    .line 12
    return-void
.end method


# virtual methods
.method public final getLastUrl()Ljava/lang/String;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/bcr/android/core/SitePrefs;->store:Landroid/content/SharedPreferences;

    const-string v1, "last_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public final getSiteUrl()Ljava/lang/String;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/bcr/android/core/SitePrefs;->store:Landroid/content/SharedPreferences;

    const-string v1, "site_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public final resumeUrl()Ljava/lang/String;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/bcr/android/core/SitePrefs;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-ifBlank-SitePrefs$resumeUrl$1\\1\\35\\0":I
    invoke-virtual {p0}, Lcom/bcr/android/core/SitePrefs;->getSiteUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-ifBlank-SitePrefs$resumeUrl$1$1\\2\\35\\1":I
    nop

    .end local v1    # "$i$a$-ifBlank-SitePrefs$resumeUrl$1$1\\2\\35\\1":I
    const-string v1, "https://onbet.com/vi/"

    :cond_0
    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "$i$a$-ifBlank-SitePrefs$resumeUrl$1\\1\\35\\0":I
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setLastUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "http"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bcr/android/core/SitePrefs;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    :cond_0
    return-void
.end method

.method public final setSiteUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/bcr/android/core/SitePrefs;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "site_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method
