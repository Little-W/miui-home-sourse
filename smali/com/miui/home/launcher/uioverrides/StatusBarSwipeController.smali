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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;-><init>(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    .line 64
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/miui/home/recents/SystemUiProxyWrapper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    return-object p0
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because launcher isn\'t in NORMAL"

    .line 187
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because launcher state can\'t intercept touchEvent"

    .line 192
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isTopSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "StatusBarController"

    const-string v0, "can\'t intercept touch because pull_down action isn\'t notification"

    .line 197
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 202
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

    .line 203
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 207
    :cond_3
    sget-object p1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mSystemUiProxyWrapper:Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->isProxySurvive()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string p1, "StatusBarController"

    .line 209
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
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setWindowSlippery(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 178
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 180
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disableBackStubWindow(Z)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    :cond_0
    return-void
.end method

.method public isDispatchingToStatusBar()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    return v0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDisallowIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    .line 113
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_1

    return v1

    .line 116
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

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 119
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_5

    const-string p1, "StatusBarController"

    const-string v0, "pull status bar error"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 131
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    .line 135
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

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 137
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 138
    iput-boolean v3, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 139
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableBackStubWindow(Z)V

    .line 140
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    return v3

    .line 143
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const-string p1, "StatusBarController"

    .line 144
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

    .line 145
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mCanIntercept:Z

    :cond_7
    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->dispatchTouchToStatusBar(Landroid/view/MotionEvent;)V

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->mIsDispatchingToStatusBar:Z

    .line 157
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->disableBackStubWindow(Z)V

    .line 158
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->setWindowSlippery(Z)V

    :cond_1
    return v0
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
