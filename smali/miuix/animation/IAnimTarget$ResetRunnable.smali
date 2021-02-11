.class Lmiuix/animation/IAnimTarget$ResetRunnable;
.super Ljava/lang/Object;
.source "IAnimTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/IAnimTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetRunnable"
.end annotation


# instance fields
.field mMonitorInfo:Lmiuix/animation/IAnimTarget$MonitorInfo;

.field mProperty:Lmiuix/animation/property/FloatProperty;

.field mTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/animation/IAnimTarget$MonitorInfo;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mMonitorInfo:Lmiuix/animation/IAnimTarget$MonitorInfo;

    return-void
.end method


# virtual methods
.method post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 76
    :cond_1
    iput-object p2, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 77
    invoke-static {p1}, Lmiuix/animation/IAnimTarget;->access$000(Lmiuix/animation/IAnimTarget;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {p1}, Lmiuix/animation/IAnimTarget;->access$000(Lmiuix/animation/IAnimTarget;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getAnimTask()Lmiuix/animation/internal/AnimTask;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/internal/AnimTask;->isRunning(Lmiuix/animation/property/FloatProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 88
    :cond_0
    iget-object v0, p0, Lmiuix/animation/IAnimTarget$ResetRunnable;->mMonitorInfo:Lmiuix/animation/IAnimTarget$MonitorInfo;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    :cond_1
    return-void
.end method
