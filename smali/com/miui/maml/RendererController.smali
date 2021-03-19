.class public Lcom/miui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RendererController$EmptyListener;,
        Lcom/miui/maml/RendererController$Listener;,
        Lcom/miui/maml/RendererController$ISelfUpdateRenderable;,
        Lcom/miui/maml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lcom/miui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReset:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfPaused:Z

.field private mSelfRender:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    invoke-direct {v0}, Lcom/miui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    const/4 v0, 0x0

    .line 96
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    const-wide v0, 0x7fffffffffffffffL

    .line 99
    iput-wide v0, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    .line 106
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 108
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lcom/miui/maml/FramerateTokenList;-><init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    return-void
.end method

.method private runRunnables()V
    .locals 3

    .line 485
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 488
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 489
    iput-object v1, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 493
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 490
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lcom/miui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object p1

    return-object p1
.end method

.method public final doRender()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 232
    invoke-interface {v0}, Lcom/miui/maml/RendererController$Listener;->doRender()V

    :cond_0
    return-void
.end method

.method public final doneRender()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 279
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public finish()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    monitor-enter v0

    .line 143
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    if-nez v1, :cond_0

    .line 144
    monitor-exit v0

    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 160
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :try_start_4
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 162
    :try_start_5
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 163
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    .line 165
    :try_start_6
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 166
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 167
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    invoke-virtual {v0}, Lcom/miui/maml/FramerateTokenList;->clear()V

    return-void

    :catchall_0
    move-exception v2

    .line 163
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v2

    .line 160
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2

    :catchall_2
    move-exception v1

    .line 166
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method

.method public forceUpdate()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Lcom/miui/maml/RendererController$Listener;->forceUpdate()V

    .line 293
    :cond_0
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    return-void
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final hasInited()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public final hasMessage()Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 411
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final hasRunnable()Z
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 454
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    monitor-enter v0

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    if-eqz v1, :cond_0

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RendererController"

    .line 181
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 184
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final isSelfPaused()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 395
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "RendererController"

    .line 401
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "RendererController"

    .line 398
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 377
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "RendererController"

    .line 383
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "RendererController"

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final pendingRender()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 426
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 428
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_5

    const/4 p1, 0x0

    .line 435
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    .line 436
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_3

    move-object p1, v3

    :cond_4
    if-eqz p1, :cond_5

    .line 442
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 446
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 446
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 465
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 460
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "postRunnable null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 479
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 479
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 472
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "postRunnable null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lcom/miui/maml/FramerateTokenList;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    return-void
.end method

.method public final requestUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 138
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public selfPause()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    monitor-enter v0

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 247
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 248
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->pause()V

    .line 252
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    return-void

    :catchall_0
    move-exception v1

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public selfResume()V
    .locals 2

    .line 258
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    monitor-enter v0

    .line 262
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 263
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 264
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->resume()V

    .line 268
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->onResume()V

    return-void

    :catchall_0
    move-exception v1

    .line 268
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/miui/maml/RendererController$Listener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    return-void
.end method

.method public setNeedReset(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    return-void
.end method

.method public setSelfRender(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    return-void
.end method

.method public tick(J)V
    .locals 2

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 359
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/RendererController$Listener;->tick(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RendererController"

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Lcom/miui/maml/RendererController$Listener;->triggerUpdate()V

    .line 286
    :cond_0
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater;->triggerUpdate()V

    return-void
.end method

.method public update(J)J
    .locals 4

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v0

    .line 335
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v2

    .line 336
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_5

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 338
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 340
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 346
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 347
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    if-nez p1, :cond_3

    .line 348
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 350
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-wide/16 v0, 0x0

    :cond_5
    return-wide v0
.end method

.method public final updateFramerate(J)J
    .locals 9

    .line 203
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 205
    iget-object v6, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/elements/FramerateController;

    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    invoke-virtual {p1}, Lcom/miui/maml/FramerateTokenList;->getFramerate()F

    move-result p1

    .line 211
    iget p2, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    cmpl-float v0, p2, p1

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_2

    cmpg-float p2, p1, v0

    if-gez p2, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 220
    :cond_2
    iput p1, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-long v1, p2

    .line 223
    :cond_3
    iput-wide v1, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 226
    :cond_4
    iget-wide p1, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide p1, v4

    :goto_1
    return-wide p1
.end method

.method public updateIfNeeded(J)J
    .locals 8

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v0

    .line 300
    iget-wide v2, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-wide v4, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    sub-long v4, p1, v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide v2, v4

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v4

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    .line 303
    iget-boolean v7, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p1, v2, v0

    if-gez p1, :cond_8

    move-wide v0, v2

    goto :goto_3

    .line 304
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    if-eqz v2, :cond_3

    if-eqz v4, :cond_8

    .line 305
    :cond_3
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 306
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 308
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 311
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 314
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 315
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    if-nez p1, :cond_6

    .line 316
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 318
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move-wide v0, v5

    :cond_8
    :goto_3
    return-wide v0
.end method
