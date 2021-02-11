.class public final Landroidx/work/PeriodicWorkRequest;
.super Landroidx/work/WorkRequest;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/PeriodicWorkRequest$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/PeriodicWorkRequest$Builder;)V
    .locals 2

    .line 70
    iget-object v0, p1, Landroidx/work/PeriodicWorkRequest$Builder;->mId:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object p1, p1, Landroidx/work/PeriodicWorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    return-void
.end method
