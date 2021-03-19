.class public abstract Lcom/miui/maml/RenderUpdater;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Lcom/miui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mSignaled:Z

.field private mStarted:Z

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/miui/maml/RenderUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$1;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/miui/maml/RenderUpdater$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$2;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    iput-object p2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 27
    iput-boolean p3, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/RenderUpdater;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/maml/RenderUpdater;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/RenderUpdater;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/maml/RenderUpdater;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/maml/RenderUpdater;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    return p1
.end method

.method private checkDelay()J
    .locals 7

    .line 92
    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-wide v2

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    sub-long/2addr v0, v4

    .line 96
    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long v2, v4, v0

    :cond_1
    return-wide v2
.end method

.method private doRunUpdater()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 87
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 124
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    return-void
.end method

.method public final doRender()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->doRenderImp()V

    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .locals 8

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 116
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->cleanUp()V

    .line 151
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 142
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 143
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    return-void
.end method

.method public isStarted()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 136
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 137
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method public runUpdater()V
    .locals 5

    .line 72
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->checkDelay()J

    move-result-wide v3

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setAutoCleanup(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method public setStartDelay(JJ)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    .line 32
    iput-wide p3, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 33
    iget-wide p1, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    :cond_0
    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method
