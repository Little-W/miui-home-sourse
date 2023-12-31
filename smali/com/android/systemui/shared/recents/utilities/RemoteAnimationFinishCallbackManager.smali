.class public Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
.super Ljava/lang/Object;
.source "RemoteAnimationFinishCallbackManager.java"


# static fields
.field private static final FINISH_CALLBACK_TIME_OUT:I = 0x64

.field private static final FRAMEWORK_ENABLE_CALLBACK:Z

.field private static final MAX_POST_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ConnectAnimFinishCallbackManager"

.field public static final USE_CONNECT_ANIM:Z

.field private static final WAIT_MERGE_ANIM_CALLBACK_TIME:I = 0x32

.field private static volatile sInstance:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;


# instance fields
.field private volatile activityIsCloseType:Z

.field private volatile mConnectAnimRunning:Z

.field private final mCounterRotatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/util/CounterRotator;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalWct:Landroid/window/WindowContainerTransaction;

.field private final mFinishCallbackTimeOut:Ljava/lang/Runnable;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private volatile mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field private final mInfoExposeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/hideapi/TransitionInfoExpose;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeashCacheMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field private volatile mMainAnimToken:Landroid/os/IBinder;

.field private mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

.field private volatile mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field private volatile mMergeAnimToken:Landroid/os/IBinder;

.field private mNeedShowLauncher:Z

.field private final mNoCacheLeashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenLeash:Landroid/view/SurfaceControl;

.field private final mOpenMergeTaskId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenTaskId:I

.field private volatile mQuickSwitchApp:Z

.field private volatile mRecentsMergeAnimToken:Landroid/os/IBinder;

.field private volatile mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

.field private volatile mRoot:Landroid/view/SurfaceControl;

.field private final mTransactionCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitFinishCallback:Z

.field private mWaitFinishMainAnim:Z

.field private mWaitForAnimCallback:Z

.field private mWaitMergeAnimTimes:I

.field private final mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

.field private final mWorkHandler:Landroid/os/Handler;

.field private final mWorkThread:Landroid/os/HandlerThread;

.field private volatile taskId:I

.field private volatile useGesture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isFrameworkEnableCallback()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->FRAMEWORK_ENABLE_CALLBACK:Z

    .line 38
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->enableConnectAnim()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLastControls:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNoCacheLeashList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenMergeTaskId:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mTransactionCallbackList:Ljava/util/List;

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->taskId:I

    .line 606
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6SxPl8REr6wrLkHSItRYd3Ny59w;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6SxPl8REr6wrLkHSItRYd3Ny59w;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$MrTtSyTsY8asWXpJW6L_olylt-4;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$MrTtSyTsY8asWXpJW6L_olylt-4;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    .line 639
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HomeShellAnim"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkThread:Landroid/os/HandlerThread;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFrameworkEnableCallback = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->FRAMEWORK_ENABLE_CALLBACK:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConnectAnimFinishCallbackManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->notifyFinishTransitionEnd()V

    return-void
.end method

.method private addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkCallbackSync()V
    .locals 2

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCallbackSync, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 684
    invoke-interface {v1}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    goto :goto_0

    .line 686
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static enableConnectAnim()Z
    .locals 2

    .line 403
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.miui.home_reuse_leash"

    .line 406
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz v0, :cond_7

    .line 298
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 299
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 300
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/util/CounterRotator;

    .line 301
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 309
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    move-object p1, v1

    .line 312
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call finishMainCallback, wct = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sct = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCounterRotatorList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    .line 314
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mInfoExposeList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    .line 315
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimToken:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConnectAnimFinishCallbackManager"

    .line 312
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 317
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    .line 318
    sget-boolean v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->FRAMEWORK_ENABLE_CALLBACK:Z

    if-eqz v1, :cond_4

    .line 319
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    .line 322
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 323
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimToken:Landroid/os/IBinder;

    .line 324
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRoot:Landroid/view/SurfaceControl;

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->clearTempSaveOpenLeash()V

    .line 326
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/hideapi/TransitionInfoExpose;

    .line 327
    invoke-virtual {p2}, Lcom/android/hideapi/TransitionInfoExpose;->releaseAllSurfaces()V

    goto :goto_3

    .line 329
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    .line 331
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->release()V

    goto :goto_4

    .line 333
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method private finishMergeCallbackSync()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call finishMergeCallback, callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectAnimFinishCallbackManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 287
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    .line 288
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 289
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V
    .locals 5

    const-string v0, "onTransitionFinished finally call notifyFinishTransitionEnd"

    const-string v1, "ConnectAnimFinishCallbackManager"

    if-nez p1, :cond_0

    const-string p0, "finishTransitionAnimationCallback callback is null"

    .line 342
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "finishTransitionAnimationCallback fail"

    const-string v3, "call onTransitionFinished end"

    if-eqz p4, :cond_4

    .line 345
    sget-boolean v4, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->FRAMEWORK_ENABLE_CALLBACK:Z

    if-nez v4, :cond_1

    goto :goto_2

    .line 362
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinishedWithCallback(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    const-string p4, "call onTransitionFinishedWithCallback end"

    .line 363
    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_7

    .line 378
    :goto_0
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_4

    :catchall_0
    move-exception p4

    .line 365
    :try_start_1
    invoke-static {v1, v2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    instance-of p4, p4, Ljava/lang/NoSuchMethodError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p4, :cond_2

    .line 368
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 369
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    const-string p2, "finishTransitionAnimationCallback again fail"

    .line 371
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const-string p1, "onTransitionFinishedWithCallback err, call notifyFinishTransitionEnd"

    .line 374
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_7

    goto :goto_0

    :catchall_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 378
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 380
    :cond_3
    throw p0

    .line 347
    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {p1, p2, p3}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 348
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p4, :cond_5

    .line 353
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eqz p3, :cond_7

    .line 357
    :goto_3
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 350
    :try_start_5
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p4, :cond_6

    .line 353
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return-void

    :catchall_4
    move-exception p1

    if-eqz p4, :cond_8

    .line 353
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;

    invoke-direct {p4, p0}, Lcom/android/systemui/shared/recents/utilities/-$$Lambda$RemoteAnimationFinishCallbackManager$6N0r2mu3tWMIyTIUmQ1zGiShtYs;-><init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    if-eqz p3, :cond_9

    .line 357
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 359
    :cond_9
    throw p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
    .locals 2

    .line 88
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->sInstance:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    if-nez v0, :cond_1

    .line 89
    const-class v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->sInstance:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;-><init>()V

    sput-object v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->sInstance:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 93
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->sInstance:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    return-object v0
.end method

.method private static isFrameworkEnableCallback()Z
    .locals 2

    const-string v0, "ro.miui.shell_anim_enable_fcb"

    const/4 v1, 0x0

    .line 411
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$6N0r2mu3tWMIyTIUmQ1zGiShtYs(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->notifyFinishTransitionEnd()V

    return-void
.end method

.method public static synthetic lambda$MrTtSyTsY8asWXpJW6L_olylt-4(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->runnableExecuteFinish()V

    return-void
.end method

.method private notifyFinishTransitionEnd()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 614
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    .line 616
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->checkCallbackSync()V

    .line 618
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private runnableExecuteFinish()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFinishRunnable run is waitFinishMainAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 628
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallbackSync()V

    .line 630
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinalWct:Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const/4 v1, 0x0

    .line 631
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 632
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinalWct:Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_0
    const-string p0, "ConnectAnimFinishCallbackManager"

    const-string v1, "postDelay but mWaitFinishMainAnim is false"

    .line 634
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addTaskId(I)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenMergeTaskId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canNoStartActivity()Z
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useGesture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->useGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activityIsCloseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->activityIsCloseType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->useGesture:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->activityIsCloseType:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkHandlerRunnable()V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHandlerRunnable has mFinishRunnable in handler, times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitMergeAnimTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitMergeAnimTimes:I

    if-lez v1, :cond_1

    .line 664
    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitMergeAnimTimes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitMergeAnimTimes:I

    .line 665
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "ConnectAnimFinishCallbackManager"

    const-string v1, "checkHandlerRunnable no mFinishRunnable in handler"

    .line 669
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearLeashMap()V
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLastControls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 445
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLastControls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 448
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_1

    .line 451
    :try_start_1
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x0

    .line 452
    :try_start_2
    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 453
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    :try_start_3
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v5

    .line 451
    :try_start_4
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v4

    :try_start_6
    const-string v5, "ConnectAnimFinishCallbackManager"

    const-string v6, "release SurfaceControl fail"

    .line 455
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLastControls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "ConnectAnimFinishCallbackManager"

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear leash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", key = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 462
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public clearTempSaveOpenLeash()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 701
    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenLeash:Landroid/view/SurfaceControl;

    const/4 v1, -0x1

    .line 702
    iput v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenTaskId:I

    .line 703
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenMergeTaskId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 704
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsTaskId(I)Z
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenTaskId:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    .line 585
    monitor-exit v0

    return v2

    .line 587
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenMergeTaskId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 588
    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x0

    .line 590
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 591
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public directExecuteWorkHandlerFinishRunnableIfNeed()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    if-eqz v1, :cond_0

    const-string v1, "ConnectAnimFinishCallbackManager"

    const-string v2, "directExecuteWorkHandlerFinishRunnable"

    .line 652
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->runnableExecuteFinish()V

    .line 656
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public executeFinishCallback()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0, v1, v0, v0, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Z)V

    return-void
.end method

.method public executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Z)V

    return-void
.end method

.method public executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    .line 155
    iget-object v4, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v0, "ConnectAnimFinishCallbackManager"

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call executeFinishCallback, toHome = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 159
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v6, "mFinishedCallback.onAnimationFinished() end"

    .line 160
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v6, "ConnectAnimFinishCallbackManager"

    const-string v7, "onAnimationFinished fail"

    .line 162
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_0
    iput-object v5, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    goto :goto_1

    :cond_0
    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v6, "mFinishedCallback is null"

    .line 166
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-nez v0, :cond_3

    const-string v0, "ConnectAnimFinishCallbackManager"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call executeFinishCallback, mMainAnimFinishCallback is null, waitFinishCallback = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 174
    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    .line 177
    :cond_2
    :goto_2
    monitor-exit v4

    return-void

    .line 179
    :cond_3
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    if-eqz v0, :cond_5

    .line 180
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    if-eqz p4, :cond_4

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v1, "now is wait for finish main, can\' finish right now"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v2, "mWaitFinishMainAnim but no wait, finish direct"

    .line 184
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->runnableExecuteFinish()V

    .line 188
    :goto_3
    monitor-exit v4

    return-void

    .line 190
    :cond_5
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_11

    if-nez v2, :cond_b

    if-nez p2, :cond_6

    .line 195
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_4

    :cond_6
    move-object/from16 v2, p2

    .line 197
    :goto_4
    new-instance v9, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v9}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    move v10, v8

    .line 198
    :goto_5
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 199
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 200
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v12

    .line 201
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v13

    const-string v14, "ConnectAnimFinishCallbackManager"

    .line 202
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foreach changes, i = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isLeafChange = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isClosingType = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    .line 205
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 206
    invoke-static {v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v5

    if-ne v5, v6, :cond_7

    goto :goto_7

    .line 212
    :cond_7
    invoke-static {v11, v2}, Lcom/android/wm/shell/util/TransitionUtil;->reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V

    .line 213
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 214
    iget-object v5, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeAnimToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 215
    :try_start_3
    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 216
    :try_start_4
    invoke-virtual {v9, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const-string v0, "ConnectAnimFinishCallbackManager"

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "before call addToFinishTransaction, change = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", token = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", wct = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", sct = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v5, v9}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    :try_start_5
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v5, v0

    .line 215
    :try_start_6
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_7
    invoke-virtual {v5, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v0

    :try_start_8
    const-string v5, "ConnectAnimFinishCallbackManager"

    const-string v9, "call addToFinishTransaction fail"

    .line 221
    invoke-static {v5, v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_8
    :goto_7
    const-string v5, "ConnectAnimFinishCallbackManager"

    const-string v11, "taskInfo == null or no standard type, continue"

    .line 208
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_a
    :goto_8
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_e

    .line 227
    :cond_b
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v7

    goto :goto_9

    :cond_c
    move v2, v8

    :goto_9
    const-string v5, "ConnectAnimFinishCallbackManager"

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mNeedShowLauncher = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNeedShowLauncher:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v5, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNeedShowLauncher:Z

    if-eqz v5, :cond_10

    .line 230
    iput-boolean v8, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNeedShowLauncher:Z

    .line 231
    iput-boolean v8, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitForAnimCallback:Z

    .line 232
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 233
    :goto_a
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 234
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 235
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v10, :cond_d

    goto :goto_b

    .line 239
    :cond_d
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v11

    .line 240
    invoke-virtual {v11, v10}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v10

    if-ne v10, v6, :cond_e

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v8, "mNeedShowLauncher, create sct to show launcher"

    .line 242
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_e
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    :goto_c
    move v8, v2

    goto :goto_d

    :cond_10
    move v8, v2

    const/4 v5, 0x0

    :goto_d
    const/4 v9, 0x0

    move-object/from16 v2, p2

    .line 249
    :goto_e
    iput-object v9, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    .line 250
    iput-object v9, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeAnimToken:Landroid/os/IBinder;

    goto :goto_f

    :cond_11
    move-object v9, v5

    move-object/from16 v2, p2

    .line 252
    :goto_f
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    if-eqz p4, :cond_12

    if-eqz v8, :cond_12

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallbackSync()V

    .line 255
    iput-boolean v7, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    .line 256
    iput-object v5, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 257
    iput-object v2, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinalWct:Landroid/window/WindowContainerTransaction;

    .line 258
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x32

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    iput v6, v1, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitMergeAnimTimes:I

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v1, "set is waitFinishMainAnim true, postDelayed"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 262
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallbackSync()V

    .line 263
    invoke-direct {v1, v5, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string v1, "execute finishMainCallbackSync return, no need post delay"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_10
    monitor-exit v4

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public executeFinishCallbackDirect()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Z)V

    return-void
.end method

.method public findHomeSurfaceControl()Landroid/view/SurfaceControl;
    .locals 5

    .line 708
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hideapi/TransitionInfoExpose;

    .line 710
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->unbox()Landroid/window/TransitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 711
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 713
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v4

    .line 714
    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 715
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 719
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 720
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishMergeCallback()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallbackSync()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 480
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMainToken()Landroid/os/IBinder;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 501
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMergeToken()Landroid/os/IBinder;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOpenLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenLeash:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 597
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRoot()Landroid/view/SurfaceControl;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRoot:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTaskId()I
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->taskId:I

    return p0
.end method

.method public hasMainFinishCallback()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasMergeFinishCallback()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 387
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnectAnimRunning()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mConnectAnimRunning:Z

    return p0
.end method

.method public isQuickSwitchApp()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mQuickSwitchApp:Z

    return p0
.end method

.method public isWaitFinishMainAnim()Z
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get is waitFinishMainAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishMainAnim:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 678
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$new$0$RemoteAnimationFinishCallbackManager()V
    .locals 2

    const-string v0, "ConnectAnimFinishCallbackManager"

    const-string/jumbo v1, "wait finish transition callback timeout"

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->notifyFinishTransitionEnd()V

    return-void
.end method

.method public lastAnimIsOpenAppAnim()Z
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    if-eqz v1, :cond_0

    .line 569
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 571
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public launcherOnNewIntent(Z)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 547
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNeedShowLauncher:Z

    .line 548
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitForAnimCallback:Z

    const-string p0, "ConnectAnimFinishCallbackManager"

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedShowLauncher = true, waitFrameworkAnimCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mainAnimNoFinishClear()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitFinishCallback:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 399
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mergeStartT(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 696
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameWorkAnimCall()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitForAnimCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "ConnectAnimFinishCallbackManager"

    const-string v3, "onFrameWorkAnimCall mWaitForAnimCallback is true"

    .line 557
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mWaitForAnimCallback:Z

    .line 559
    monitor-exit v0

    return-void

    .line 561
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNeedShowLauncher:Z

    const-string p0, "ConnectAnimFinishCallbackManager"

    const-string v1, "mNeedShowLauncher = false"

    .line 562
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveLeash(Ljava/lang/String;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setActivityIsCloseType(Z)V
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivityIsCloseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->activityIsCloseType:Z

    return-void
.end method

.method public setConnectAnimRunning(Z)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectAnimRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mConnectAnimRunning:Z

    return-void
.end method

.method public setFinishCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMainFinishCallback, token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMainAnimToken:Landroid/os/IBinder;

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMergeFinishCallback, token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimToken:Landroid/os/IBinder;

    .line 126
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOpenTaskId(I)V
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOpenTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimFinishCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->taskId:I

    return-void
.end method

.method public setQuickSwitchApp(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mQuickSwitchApp:Z

    return-void
.end method

.method public setRoot(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRoot:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ConnectAnimFinishCallbackManager"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTransitionInfo token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeAnimToken:Landroid/os/IBinder;

    .line 134
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUseGesture(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->useGesture:Z

    return-void
.end method

.method public tempSaveLeash(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tempSaveOpenLeash(ILandroid/view/SurfaceControl;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenLeash:Landroid/view/SurfaceControl;

    .line 578
    iput p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mOpenTaskId:I

    .line 579
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
