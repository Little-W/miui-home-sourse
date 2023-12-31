.class public Lcom/miui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;,
        Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderVsyncUpdater"


# instance fields
.field private mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mRendererControllerList:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScheduleFrame:Ljava/lang/Runnable;

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    const/16 v0, 0x10

    .line 27
    iput v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 73
    new-instance v0, Lcom/miui/maml/-$$Lambda$RenderVsyncUpdater$gFkqXHuGu3gegvMkSlSn1AwYyQk;

    invoke-direct {v0, p0}, Lcom/miui/maml/-$$Lambda$RenderVsyncUpdater$gFkqXHuGu3gegvMkSlSn1AwYyQk;-><init>(Lcom/miui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 50
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v1, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/RenderVsyncUpdater;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/miui/maml/RenderVsyncUpdater;J)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    return p0
.end method

.method private doRunUpdater()V
    .locals 4

    .line 64
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/miui/maml/RenderVsyncUpdater;
    .locals 1

    .line 39
    sget-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    return-object v0
.end method

.method public static synthetic lambda$gFkqXHuGu3gegvMkSlSn1AwYyQk(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method private scheduleFrame()V
    .locals 14

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v3}, Landroidx/collection/ArraySet;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x1

    move-wide v9, v5

    move v8, v7

    :goto_0
    const/4 v11, 0x0

    if-ltz v4, :cond_4

    .line 83
    iget-object v12, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v12, v4}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/maml/RendererController;

    if-nez v12, :cond_0

    .line 85
    iget-object v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v11, v4}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasInited()Z

    move-result v8

    if-nez v8, :cond_2

    .line 94
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->init()V

    .line 97
    :cond_2
    invoke-virtual {v12, v0, v1}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-gez v8, :cond_3

    move v8, v11

    move-wide v9, v12

    goto :goto_1

    :cond_3
    move v8, v11

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    goto :goto_2

    .line 105
    :cond_5
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    goto :goto_3

    .line 102
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    const-string v0, "RenderVsyncUpdater"

    const-string v1, "All controllers paused."

    .line 103
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v9, v5

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v7, v11

    .line 109
    :goto_4
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 111
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-lez v2, :cond_9

    .line 112
    iget v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    int-to-long v2, v2

    div-long/2addr v9, v2

    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 113
    iget-wide v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 114
    iput-wide v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 117
    :cond_8
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    .line 107
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 125
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v3, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    if-ne v3, p1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceUpdate()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 60
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 150
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 151
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    return-void
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 139
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 141
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 145
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSyncInterval(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method
