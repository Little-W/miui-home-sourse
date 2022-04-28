.class public final Lio/branch/search/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 1

    const-string v0, "branch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o2;->b:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "branch.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/search/o2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/job/JobInfo;
    .locals 4

    iget-object v0, p0, Lio/branch/search/o2;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/job/JobScheduler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    const-string v1, "scheduler.allPendingJobs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    const-string v3, "job"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v1

    :cond_3
    return-object v2
.end method

.method public final a(Lio/branch/search/n2;)Z
    .locals 0

    invoke-virtual {p1}, Lio/branch/search/n2;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/o2;->a(I)Landroid/app/job/JobInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lio/branch/search/n2;)V
    .locals 3

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/o2;->a:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_3

    instance-of v1, p1, Lio/branch/search/n2$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/branch/search/o2;->b:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->l()I

    move-result v1

    invoke-static {v0}, Lio/branch/search/p2;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Lio/branch/search/p2;->a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lio/branch/search/o2;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lio/branch/search/n2;->a(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduling success = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doSchedule"

    invoke-static {v0, p1}, Lio/branch/search/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c(Lio/branch/search/n2;)V
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/branch/search/o2;->a(Lio/branch/search/n2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/branch/search/o2;->b(Lio/branch/search/n2;)V

    :cond_0
    return-void
.end method
