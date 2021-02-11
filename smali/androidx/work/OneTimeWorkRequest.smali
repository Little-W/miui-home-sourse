.class public final Landroidx/work/OneTimeWorkRequest;
.super Landroidx/work/WorkRequest;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/OneTimeWorkRequest$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/OneTimeWorkRequest$Builder;)V
    .locals 2

    .line 65
    iget-object v0, p1, Landroidx/work/OneTimeWorkRequest$Builder;->mId:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object p1, p1, Landroidx/work/OneTimeWorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    return-void
.end method
