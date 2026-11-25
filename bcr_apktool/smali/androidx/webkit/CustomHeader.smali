.class public Landroidx/webkit/CustomHeader;
.super Ljava/lang/Object;
.source "CustomHeader.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p3, "originRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/webkit/CustomHeader;->mName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroidx/webkit/CustomHeader;->mValue:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Landroidx/webkit/CustomHeader;->mRules:Ljava/util/Set;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Landroidx/webkit/CustomHeader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 98
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/webkit/CustomHeader;

    .line 99
    .local v1, "other":Landroidx/webkit/CustomHeader;
    iget-object v3, p0, Landroidx/webkit/CustomHeader;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroidx/webkit/CustomHeader;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/webkit/CustomHeader;->mValue:Ljava/lang/String;

    iget-object v4, v1, Landroidx/webkit/CustomHeader;->mValue:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/webkit/CustomHeader;->mRules:Ljava/util/Set;

    iget-object v4, v1, Landroidx/webkit/CustomHeader;->mRules:Ljava/util/Set;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 99
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/webkit/CustomHeader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/webkit/CustomHeader;->mRules:Ljava/util/Set;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/webkit/CustomHeader;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-object v0, p0, Landroidx/webkit/CustomHeader;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/webkit/CustomHeader;->mValue:Ljava/lang/String;

    iget-object v2, p0, Landroidx/webkit/CustomHeader;->mRules:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
