.class public Lcom/miui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RenderThread$CommandThreadHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lcom/miui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MAML RenderThread"

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/RendererController;)V
    .locals 0

    const-string p1, "MAML RenderThread"

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 29
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/RenderThread;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/maml/RenderThread;->setPausedImpl(Z)V

    return-void
.end method

.method private doFinish()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 279
    monitor-exit v0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 283
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    .line 284
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doInit()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 240
    monitor-exit v0

    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 243
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    .line 244
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->init()V

    .line 245
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doPause()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 253
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 257
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doResume()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    monitor-exit v0

    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 270
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static globalThread()Lcom/miui/maml/RenderThread;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Lcom/miui/maml/RenderThread;->globalThread(Z)Lcom/miui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lcom/miui/maml/RenderThread;
    .locals 2

    .line 73
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/miui/maml/RenderThread;

    invoke-direct {v1}, Lcom/miui/maml/RenderThread;-><init>()V

    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    :cond_0
    if-eqz p0, :cond_1

    .line 77
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->isStarted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 79
    :try_start_1
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catch_0
    :cond_1
    :try_start_2
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static globalThreadStop()V
    .locals 2

    .line 60
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {v1}, Lcom/miui/maml/RenderThread;->setStop()V

    const/4 v1, 0x0

    .line 63
    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initCmdThread()V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cmd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Lcom/miui/maml/RenderThread$CommandThreadHandler;

    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;-><init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    return-void
.end method

.method private setPausedImpl(Z)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    if-nez p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 132
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final waitSleep(J)V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 234
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private waiteForResume()V
    .locals 1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "RenderThread"

    const-string v1, "addRendererController: RendererController already exists"

    .line 92
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isStarted()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 12

    const-string v0, "RenderThread"

    const-string v1, "RenderThread started"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doInit()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    .line 149
    :goto_0
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    if-nez v1, :cond_a

    .line 150
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    iget-boolean v2, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    if-eqz v2, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doPause()V

    const-string v2, "RenderThread"

    const-string v3, "RenderThread paused, waiting for signal"

    .line 154
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->waiteForResume()V

    const-string v2, "RenderThread"

    const-string v3, "RenderThread resumed"

    .line 156
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doResume()V

    .line 159
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 161
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 164
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    .line 166
    iget-object v5, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :try_start_3
    iget-object v6, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move-wide v8, v3

    move v3, v7

    move v4, v0

    :goto_2
    if-ge v3, v6, :cond_7

    .line 171
    iget-boolean v10, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    if-eqz v10, :cond_3

    goto :goto_4

    .line 174
    :cond_3
    iget-object v10, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/maml/RendererController;

    .line 175
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasInited()Z

    move-result v4

    if-nez v4, :cond_5

    .line 181
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->init()V

    .line 184
    :cond_5
    invoke-virtual {v10, v1, v2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-gez v4, :cond_6

    move v4, v7

    move-wide v8, v10

    goto :goto_3

    :cond_6
    move v4, v7

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    goto :goto_5

    .line 193
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    :try_start_4
    invoke-direct {p0, v8, v9}, Lcom/miui/maml/RenderThread;->waitSleep(J)V

    .line 197
    iput-boolean v7, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 189
    :cond_9
    :goto_5
    :try_start_5
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    const-string v1, "RenderThread"

    const-string v2, "All controllers paused."

    .line 190
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 193
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v1, "RenderThread"

    .line 204
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RenderThread"

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doFinish()V

    .line 208
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "RenderThread"

    const-string v1, "RenderThread stopped"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    invoke-virtual {v0, p1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    return-void
.end method

.method public setStop()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public signal()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 218
    :try_start_0
    iput-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 219
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
