.class public Lio/branch/search/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/c4;


# instance fields
.field public a:Lio/branch/search/y0;

.field public b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/a1;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/y0;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/a1;->a:Lio/branch/search/y0;

    return-void
.end method

.method public a(Ljava/util/concurrent/Executor;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lio/branch/search/a1;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(J)Lio/branch/search/z0;

    move-result-object p1

    iget-object v2, p0, Lio/branch/search/a1;->a:Lio/branch/search/y0;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lio/branch/search/y0;->a(Lio/branch/search/z0;)V

    iget-object p1, p0, Lio/branch/search/a1;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b(J)V
    :try_end_0
    .catch Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
