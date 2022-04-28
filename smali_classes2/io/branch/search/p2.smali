.class public final Lio/branch/search/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-static {p0}, Lio/branch/search/p2;->c(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$allAggregateAnalyticsPingJobs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    const-string v0, "allPendingJobs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/job/JobInfo;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "AA_PING_SCHEDULING_TIMESTAMP"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final c(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 8

    invoke-static {p0}, Lio/branch/search/p2;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v5, "AA_PING_SCHEDULING_TIMESTAMP"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    if-eqz v0, :cond_1

    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    :cond_1
    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method
