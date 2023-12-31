.class public Lcom/miui/home/recents/GestureSoscController;
.super Ljava/lang/Object;
.source "GestureSoscController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;,
        Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/recents/GestureSoscController;


# instance fields
.field mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

.field private final mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

.field private final mGestureProgressListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSoscListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForbidGesture:Z

.field private mIsForbidLaunchSplit:Z

.field private mIsMinimized:Z

.field private mIsPredictMinimized:Z

.field private mLeftOrTopBounds:Landroid/graphics/Rect;

.field private mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mMinimizedPosition:I

.field private mMinimizedSize:I

.field private mPredictAndCallbackState:I

.field private mPredictMinimizedPosition:I

.field private mPredictMinimizedSize:I

.field private mPredictState:I

.field private mRightOrBottomBounds:Landroid/graphics/Rect;

.field private mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRootBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mStateOnGestureStart:I

.field private mTouchRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    .line 27
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    .line 28
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    .line 29
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Lcom/miui/home/recents/GestureSoscController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureSoscController$1;-><init>(Lcom/miui/home/recents/GestureSoscController;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/miui/home/recents/GestureSoscController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureSoscController$2;-><init>(Lcom/miui/home/recents/GestureSoscController;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/recents/GestureSoscController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/recents/GestureSoscController;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    return p1
.end method

.method public static getInstance()Lcom/miui/home/recents/GestureSoscController;
    .locals 1

    .line 51
    sget-object v0, Lcom/miui/home/recents/GestureSoscController;->sInstance:Lcom/miui/home/recents/GestureSoscController;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/miui/home/recents/GestureSoscController;

    invoke-direct {v0}, Lcom/miui/home/recents/GestureSoscController;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureSoscController;->sInstance:Lcom/miui/home/recents/GestureSoscController;

    .line 54
    :cond_0
    sget-object v0, Lcom/miui/home/recents/GestureSoscController;->sInstance:Lcom/miui/home/recents/GestureSoscController;

    return-object v0
.end method

.method private isHalfSplitState(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isMinimizeStateChange(ZZ)Z
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBackGestureStatusByHalfSplitAndNotMinimizeState(IIZZ)V
    .locals 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBackGestureStatusByHalfSplitAndNotMinimizeState, nowState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nowMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " lastMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 204
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 209
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 213
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 214
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    if-eqz v1, :cond_7

    .line 221
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->showBackStubWindow()V

    goto :goto_5

    .line 219
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByLauncherState()V

    :cond_7
    :goto_5
    return-void
.end method

.method private notifyBackGestureStatusByLauncherState()V
    .locals 0

    .line 234
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->clearTopActivity()V

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_0
    return-void
.end method

.method private notifyBackGestureStatusBySplitState(IIZZ)V
    .locals 1

    .line 186
    invoke-direct {p0, p3, p4}, Lcom/miui/home/recents/GestureSoscController;->isMinimizeStateChange(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByLauncherState()V

    .line 191
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusByHalfSplitAndNotMinimizeState(IIZZ)V

    return-void
.end method

.method private postStopForbidGestureRunnable()V
    .locals 3

    .line 145
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showBackStubWindow()V
    .locals 2

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "typefrom_half_split"

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method

.method private stopForbidGesture()V
    .locals 2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    const-string v0, "GestureSoscController"

    const-string v1, "stopForbidGesture"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidGestureSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopForbidLaunchSplit()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    .line 168
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p0, "GestureSoscController"

    const-string v0, "stopForbidLaunchSplit"

    .line 169
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePredictMinimizedPosition()I
    .locals 2

    .line 366
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 367
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private updatePredictStateFromGestureStart()V
    .locals 5

    .line 332
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const-string v2, "GestureSoscController"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string p0, "onGestureStart, predict state error."

    .line 360
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez v0, :cond_1

    .line 335
    iput v3, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    .line 339
    :cond_2
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    .line 350
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-ne v0, v3, :cond_4

    .line 351
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_4
    const-string p0, "onGestureStart: SINGLE_OPEN_IN_RIGHT_OR_BOTTOM predict state error."

    .line 353
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_5
    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    if-nez v0, :cond_6

    .line 344
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_0

    :cond_6
    const-string p0, "onGestureStart: SINGLE_OPEN_IN_LEFT_OR_TOP predict state error."

    .line 346
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_7
    iput v1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addGestureProgressListener(Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSoscSplitScreenListener()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V

    return-void
.end method

.method public getLaunchHalfSplitTaskPosition()I
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getLeftOrTopBounds()Landroid/graphics/Rect;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLeftOrTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getPredictState()I
    .locals 0

    .line 477
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    return p0
.end method

.method public getRightOrBottoRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getRightOrBottomBounds()Landroid/graphics/Rect;
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 278
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    return p0
.end method

.method public isForbidGesture()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    return p0
.end method

.method public isForbidLaunchSplit()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    return p0
.end method

.method public isHalfSplitAndNotMinimize()Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHalfSplitMode()Z
    .locals 1

    .line 250
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isMinimized()Z
    .locals 0

    .line 507
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    return p0
.end method

.method public isNormalMode()Z
    .locals 1

    .line 246
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPredictAndCallbackHalfSplitMode()Z
    .locals 1

    .line 481
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPredictAndCallbackSplitMode()Z
    .locals 1

    .line 486
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitMode()Z
    .locals 1

    .line 264
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchCenterRange()Z
    .locals 1

    .line 503
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchSingleApp()Z
    .locals 1

    .line 490
    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onGestureEnd(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    :goto_3
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 385
    :goto_4
    iget v8, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget v9, v0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    if-eq v8, v9, :cond_5

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictStateFromGestureStart()V

    .line 389
    :cond_5
    iget v8, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    if-eqz v8, :cond_b

    if-eq v8, v3, :cond_a

    if-eq v8, v5, :cond_6

    const-string v2, "GestureSoscController"

    const-string v3, "onGestureEnd, predict state error."

    .line 431
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_7

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchCenterRange()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 392
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchCenterRange()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p2, :cond_8

    .line 396
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchSingleApp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 400
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_f

    .line 404
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_f

    .line 414
    iput v3, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_f

    .line 409
    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    if-eqz p2, :cond_d

    .line 419
    iput v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_e

    if-nez p2, :cond_e

    .line 423
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 427
    iput v9, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    :cond_f
    :goto_5
    if-eqz v7, :cond_10

    .line 436
    iget-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    iput-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    .line 437
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedPosition:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    .line 438
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedSize:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    .line 441
    :cond_10
    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iput v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 443
    iget-object v2, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v3, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;

    .line 445
    iget v10, v0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    iget-object v11, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    iget v14, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iget-boolean v15, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    iget v4, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    iget v5, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    invoke-interface/range {v9 .. v18}, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;->onGestureEnd(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    goto :goto_6

    .line 448
    :cond_11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->getPredictState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->onGestureEnd(I)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureEnd: mTouchRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRootBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLeftOrTopBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRightOrBottomBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPredictState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPredictMinimized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPredictMinimizedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPredictMinimizedSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 448
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGestureStart(I)V
    .locals 12

    .line 290
    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    .line 291
    iget p1, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mStateOnGestureStart:I

    .line 292
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictStateFromGestureStart()V

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isTouchSingleApp()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    .line 299
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->updatePredictMinimizedPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    .line 301
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    if-eqz p1, :cond_1

    .line 302
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    .line 304
    iget p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iput p1, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 306
    iget-object p1, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    monitor-enter p1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureProgressListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;

    .line 308
    iget v3, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    iget-object v4, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    iget v8, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget-boolean v9, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    iget v10, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    iget v11, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-interface/range {v2 .. v11}, Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;->onGestureStart(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZII)V

    goto :goto_1

    .line 318
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGestureStart: mTouchRange = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mTouchRange:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRootBounds = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mLeftOrTopBounds = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mRightOrBottomBounds = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPredictState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPredictMinimized = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsPredictMinimized:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mPredictMinimizedPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedPosition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPredictMinimizedSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/GestureSoscController;->mPredictMinimizedSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GestureSoscController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 318
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onInitSoscSplitScreen()V
    .locals 0

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    .line 105
    iget v1, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    iget-boolean v2, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    invoke-direct {v0, v10, v1, v13, v2}, Lcom/miui/home/recents/GestureSoscController;->notifyBackGestureStatusBySplitState(IIZZ)V

    .line 106
    iput v10, v0, Lcom/miui/home/recents/GestureSoscController;->mState:I

    .line 107
    iput v10, v0, Lcom/miui/home/recents/GestureSoscController;->mPredictAndCallbackState:I

    .line 108
    iput-object v7, v0, Lcom/miui/home/recents/GestureSoscController;->mRootBounds:Landroid/graphics/Rect;

    .line 109
    iput-object v8, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 110
    iput-object v9, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 111
    iput-object v11, v0, Lcom/miui/home/recents/GestureSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    iput-object v12, v0, Lcom/miui/home/recents/GestureSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    iput-boolean v13, v0, Lcom/miui/home/recents/GestureSoscController;->mIsMinimized:Z

    .line 114
    iput v14, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedPosition:I

    .line 115
    iput v15, v0, Lcom/miui/home/recents/GestureSoscController;->mMinimizedSize:I

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->stopForbidGesture()V

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/GestureSoscController;->stopForbidLaunchSplit()V

    .line 118
    iget-object v0, v0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p9

    .line 119
    invoke-interface/range {v0 .. v6}, Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;->onSoscStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZI)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSoScStateChanged: rootBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lotBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c robBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMinimized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minimizedPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minimizedSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lotTopTaskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", robTopTaskInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public removeGestureSoscListener(Lcom/miui/home/recents/GestureSoscController$GestureSoscListener;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mGestureSoscListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startForbidGesture()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidGesture:Z

    const-string v0, "GestureSoscController"

    const-string v1, "startForbidGesture"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/miui/home/recents/GestureSoscController;->postStopForbidGestureRunnable()V

    :cond_0
    return-void
.end method

.method public startForbidLaunchSplit()V
    .locals 3

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureSoscController;->mIsForbidLaunchSplit:Z

    const-string v0, "GestureSoscController"

    const-string v1, "startForbidLaunchSplit"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController;->mForbidLaunchSplitCallbackTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
