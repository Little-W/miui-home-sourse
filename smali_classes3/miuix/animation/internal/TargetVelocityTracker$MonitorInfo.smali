.class Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
.super Ljava/lang/Object;
.source "TargetVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/TargetVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorInfo"
.end annotation


# instance fields
.field monitor:Lmiuix/animation/utils/VelocityMonitor;

.field resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 19
    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;-><init>(Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;)V

    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/internal/TargetVelocityTracker$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;-><init>()V

    return-void
.end method
