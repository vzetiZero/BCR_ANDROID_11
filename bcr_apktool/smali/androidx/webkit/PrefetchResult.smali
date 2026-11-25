.class public final Landroidx/webkit/PrefetchResult;
.super Ljava/lang/Object;
.source "PrefetchResult.java"


# instance fields
.field private final mWasDuplicate:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "wasDuplicate"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Landroidx/webkit/PrefetchResult;->mWasDuplicate:Z

    .line 38
    return-void
.end method


# virtual methods
.method public wasDuplicate()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Landroidx/webkit/PrefetchResult;->mWasDuplicate:Z

    return v0
.end method
