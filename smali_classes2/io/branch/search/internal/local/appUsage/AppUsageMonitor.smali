.class public Lio/branch/search/internal/local/appUsage/AppUsageMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public a:J

.field public final b:Lio/branch/search/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_usages_last_save_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:J

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->d()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android:get_usage_stats"

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(J)Lio/branch/search/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/search/z0;

    invoke-direct {v0}, Lio/branch/search/z0;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c()Landroid/app/usage/UsageStatsManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b(Lio/branch/search/z0;Landroid/app/usage/UsageStatsManager;J)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(Lio/branch/search/z0;Landroid/app/usage/UsageStatsManager;J)V

    return-object v0

    :cond_0
    new-instance p1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    invoke-direct {p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;-><init>()V

    throw p1
.end method

.method public final a(Lio/branch/search/z0;Landroid/app/usage/UsageStatsManager;J)V
    .locals 6

    iget-wide v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:J

    invoke-virtual {p2, v0, v1, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {p2, p3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/z0;->a(Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/branch/search/o4$a;->a:Lio/branch/search/o4$a;

    invoke-static {v0, v1}, Lio/branch/search/o4;->a(Landroid/content/Context;Lio/branch/search/o4$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_usages_last_save_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:J

    return-void
.end method

.method public final b(Lio/branch/search/z0;Landroid/app/usage/UsageStatsManager;J)V
    .locals 6

    iget-wide v2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:J

    const/4 v1, 0x4

    move-object v0, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/UsageStats;

    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/z0;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Landroid/app/usage/UsageStatsManager;
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method public d()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    invoke-direct {v0, p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V

    invoke-static {v0}, Lio/branch/search/t4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMoveToForeground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    iget-object v1, v0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->e()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object v0

    new-instance v1, Lio/branch/search/a1;

    invoke-direct {v1, p0}, Lio/branch/search/a1;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V

    invoke-virtual {v0, v1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/a1;)V

    :cond_0
    return-void
.end method
