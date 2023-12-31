.class Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;
.super Ljava/lang/Object;
.source "MemoryUtils.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GcIdler"
.end annotation


# instance fields
.field private mGcIdlerScheduled:Z

.field private mGcIdlerSuccessScheduled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 83
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/MemoryUtils$1;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;-><init>()V

    return-void
.end method

.method private bootTime()J
    .locals 2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private doGcIfNeeded()Z
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->bootTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->doGcIfNeeded()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MemoryUtils"

    const-string v0, "onScreenOff run gc task"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleGcIdler()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 88
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string p0, "MemoryUtils"

    const-string v0, "scheduleGcIdler"

    .line 89
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unscheduleGcIdler()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 96
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string p0, "MemoryUtils"

    const-string v0, "unscheduleGcIdler"

    .line 97
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
