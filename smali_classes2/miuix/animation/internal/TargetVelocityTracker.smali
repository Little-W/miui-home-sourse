.class public Lmiuix/animation/internal/TargetVelocityTracker;
.super Ljava/lang/Object;
.source "TargetVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;,
        Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    }
.end annotation


# instance fields
.field private mMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    return-void
.end method

.method private getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    .locals 2

    .line 69
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;-><init>(Lmiuix/animation/internal/TargetVelocityTracker$1;)V

    .line 72
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V
    .locals 3

    .line 59
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TargetVelocityTracker;->getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    move-result-object p0

    .line 60
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p3, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 61
    iget-object p3, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p3, v2}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p3

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_0

    .line 63
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    float-to-double p3, p3

    .line 64
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    :cond_0
    return-void
.end method
