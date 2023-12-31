.class public final Lio/branch/search/a3$a;
.super Lio/branch/search/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/a3$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/a3$a$a;


# instance fields
.field public final c:Lio/branch/search/s1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/a3$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/a3$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/a3$a;->Companion:Lio/branch/search/a3$a$a;

    return-void
.end method

.method public constructor <init>(ILio/branch/search/s1;)V
    .locals 2

    const-string v0, "aggregateAnalyticsQueryResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lio/branch/search/internal/services/PingService;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/branch/search/a3;-><init>(ILjava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v0}, Lio/branch/search/s1;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    iget-object v0, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v0}, Lio/branch/search/s1;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->i()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_0
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->k()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_1
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->b()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v3}, Lio/branch/search/s1;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_2
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->e()Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_3
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->l()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_4
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->f()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_5
    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->j()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_6
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {v1}, Lio/branch/search/s1;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PING_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/a3$a;->c:Lio/branch/search/s1;

    invoke-virtual {p0}, Lio/branch/search/s1;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "QUERY_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p0, "AA_PING_SCHEDULING_TIMESTAMP"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    return-object p1
.end method
