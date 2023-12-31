.class public Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;
.super Ljava/lang/Object;
.source "StatusBarSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;
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

.field private mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

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

.method static synthetic access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/miui/home/recents/SystemUiProxyWrapper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    return-object p0
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const-string v1, "StatusBarController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "can\'t intercept touch because launcher isn\'t in NORMAL"

    .line 204
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "can\'t intercept touch because launcher state can\'t intercept touchEvent"

    .line 209
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isTopSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "can\'t intercept touch because pull_down action isn\'t notification"

    .line 214
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const-string p0, "can\'t intercept touch because DOWN_EVENT is in navigation area"

    .line 220
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_4

    return v2

    .line 228
    :cond_4
    sget-object p1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    .line 229
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->isProxySurvive()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    .line 230
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "try intercept touch, isProxySurvive="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setWindowSlippery(Z)V
    .locals 2

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 195
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 197
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x20000001

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private tackEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 170
    iget-boolean p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isPullDownGestureGlobalSearch()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const-string p0, "notification_bar"

    .line 173
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "control_center"

    .line 175
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public disableTouchBySwipeStatusBar(Z)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->disableTouchBySwipeStatusBar(Z)V

    :cond_0
    return-void
.end method

.method public isDispatchingToStatusBar()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    return p0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDisallowIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    .line 114
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_1

    return v1

    .line 117
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

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 120
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const-string v3, "StatusBarController"

    if-nez v0, :cond_5

    const-string p0, "pull status bar error"

    .line 128
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 131
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    .line 136
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 138
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 139
    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 140
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableTouchBySwipeStatusBar(Z)V

    .line 141
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    return v4

    .line 144
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dx("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") over mTouchSlop("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "), don\'t intercept"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    :cond_7
    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 154
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableTouchBySwipeStatusBar(Z)V

    .line 159
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->tackEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 0

    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDisallowIntercept:Z

    return-void
.end method
