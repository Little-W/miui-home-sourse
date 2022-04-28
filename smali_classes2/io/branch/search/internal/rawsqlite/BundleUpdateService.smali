.class public Lio/branch/search/internal/rawsqlite/BundleUpdateService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:Landroid/app/job/JobParameters;

.field public b:Lio/branch/search/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/o;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 4

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const v3, 0x22a0f02

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static a(Lio/branch/search/l;JJ)Landroid/app/job/JobInfo;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const v1, 0x22a0f02

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, p3, p4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_0
    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/branch/search/l;)V
    .locals 8

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SQLUpdaterService"

    const-string v1, "SQLUpdaterService.expediteScheduledBundleUpdate()"

    invoke-static {v0, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJZ)V

    goto :goto_0

    :cond_0
    const-string p0, "SQLUpdaterService"

    const-string v0, "ignore expediteScheduledBundleUpdate, bundle request already in flight/being expedited"

    invoke-static {p0, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lio/branch/search/l;JJZ)V
    .locals 5

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "SQLUpdaterService"

    const-string p1, "Abort scheduling a new job because there is one scheduled already and the new job is not being forced."

    :goto_0
    invoke-static {p0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_2

    const-string p1, "SQLUpdaterService.schedule"

    const-string p2, "jobScheduler is null?! (should never happen)"

    invoke-virtual {p0, p1, p2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJ)Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-ne p0, v4, :cond_4

    move v3, v4

    :cond_4
    const-string p0, "SQLUpdaterService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SQLUpdaterService.schedule()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5

    const-string p2, " - forcefully"

    goto :goto_3

    :cond_5
    const-string p2, ""

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string p2, " - succeeded"

    goto :goto_4

    :cond_6
    const-string p2, "failed"

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_5
    return-void
.end method

.method public static synthetic a(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Lio/branch/search/l;Landroid/app/job/JobParameters;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;Landroid/app/job/JobParameters;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Lio/branch/search/l;Landroid/app/job/JobParameters;I)V
    .locals 2

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/o;

    invoke-virtual {v0, v1}, Lio/branch/search/BranchConfiguration;->b(Lio/branch/search/o;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;-><init>(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Lio/branch/search/l;Landroid/app/job/JobParameters;)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lio/branch/search/l;Landroid/app/job/JobParameters;Lio/branch/search/BranchConfiguration;)V
    .locals 1

    new-instance v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$b;

    invoke-direct {v0, p0, p1, p2}, Lio/branch/search/internal/rawsqlite/BundleUpdateService$b;-><init>(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Lio/branch/search/l;Landroid/app/job/JobParameters;)V

    iput-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/o;

    invoke-virtual {p3, v0}, Lio/branch/search/BranchConfiguration;->a(Lio/branch/search/o;)V

    return-void
.end method

.method public final a(Lio/branch/search/l;Landroid/app/job/JobParameters;)Z
    .locals 2

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lio/branch/search/l;->e()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    return v1

    :cond_0
    const-string p2, "SQLUpdaterService.doStartJob"

    const-string v0, "attempted to start bundle download job, while the last one hasn\'t completed yet."

    invoke-virtual {p1, p2, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBundleUpdateComplete(Z)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a:Landroid/app/job/JobParameters;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/k1;->e()V

    :cond_0
    return-void
.end method

.method public onBundleUpdateInit()V
    .locals 0

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-static {p1}, Lio/branch/search/q2;->a(Landroid/app/job/JobParameters;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SQLUpdaterService"

    const-string v0, "Immediately ending old bundle job"

    :goto_0
    invoke-static {p1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "SQLUpdaterService"

    const-string v1, "Branch singleton is null, cancel SQLUpdaterService, we will update when SDK initializes"

    invoke-static {v0, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    :cond_1
    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/k1;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "SQLUpdaterService"

    const-string v0, "Still processing cold state bundle, will reschedule remote bundle download after it completes."

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "SQLUpdaterService"

    const-string v0, "Opted out of local content."

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "SQLUpdaterService"

    const-string v4, "GAID is null, fetch GAID, listen for completion, in case of error, timeout after GAID_WAIT_TIMEOUT_MILLIS and start the update job anyway (results will be inferior though)."

    invoke-static {v3, v4}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;Landroid/app/job/JobParameters;Lio/branch/search/BranchConfiguration;)V

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p1, v1}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;Landroid/app/job/JobParameters;I)V

    return v2

    :cond_4
    invoke-virtual {p0, v0, p1}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLUpdaterService job cancelled before completion, params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SQLUpdaterService"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
