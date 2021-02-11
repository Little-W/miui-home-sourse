.class public Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;
.super Ljava/lang/Object;
.source "StatusBarSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;,
        Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$_lancet;
    }
.end annotation


# instance fields
.field private mCanIntercept:Z

.field private mDisallowIntercept:Z

.field private final mDownEventsPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsDispatchingToStatusBar:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mTouchSlop:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;-><init>(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because launcher isn\'t in NORMAL"

    .line 186
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because launcher state can\'t intercept touchEvent"

    .line 191
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isTopSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because pull_down action isn\'t notification"

    .line 196
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because DOWN_EVENT is in navigation area"

    .line 202
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string p1, "StatusBarController"

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try intercept touch, isProxySurvive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setWindowSlippery(Z)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 177
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 179
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disableBackStubWindow(Z)V
    .locals 1

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    :cond_0
    return-void
.end method

.method public isDispatchingToStatusBar()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    return v0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 104
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDisallowIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    .line 112
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_1

    return v1

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 118
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_5

    const-string p1, "StatusBarController"

    const-string v0, "pull status bar error"

    .line 126
    invoke-static {p1, v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    .line 134
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 136
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 137
    iput-boolean v3, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 138
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableBackStubWindow(Z)V

    .line 139
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    return v3

    .line 142
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const-string p1, "StatusBarController"

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dx("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") over mTouchSlop("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "), don\'t intercept"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    :cond_7
    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableBackStubWindow(Z)V

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    :cond_1
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDisallowIntercept:Z

    return-void
.end method
