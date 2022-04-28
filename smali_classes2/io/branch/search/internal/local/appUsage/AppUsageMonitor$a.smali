.class public Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
