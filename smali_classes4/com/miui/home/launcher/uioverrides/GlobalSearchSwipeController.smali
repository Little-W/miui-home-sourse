.class public Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;
.super Ljava/lang/Object;
.source "GlobalSearchSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


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

.field private mGlobalSearchBottom:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mStatusBarSwipeBottom:I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mStatusBarSwipeBottom:I

    .line 28
    iput v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mGlobalSearchBottom:I

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 36
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mTouchSlop:F

    .line 37
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private calculateTouchArea()V
    .locals 2

    .line 50
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mStatusBarSwipeBottom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mGlobalSearchBottom:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mGlobalSearchBottom:I

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070691

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mStatusBarSwipeBottom:I

    :cond_1
    return-void
.end method

.method private isInPullDownToSearchZone(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mTouchSlop:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget p2, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mStatusBarSwipeBottom:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mGlobalSearchBottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showPullDownTipsDialog()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;-><init>(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showPullDownTips(Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isPullDownGestureGlobalSearch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent(Z)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 151
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    .line 155
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDisallowIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->calculateTouchArea()V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 80
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    .line 84
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_1

    return v1

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 90
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_5

    return v1

    .line 100
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 101
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    .line 102
    invoke-direct {p0, v3, v2, p1, v0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->isInPullDownToSearchZone(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isShowPullToSearchTips()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->showPullDownTipsDialog()V

    .line 106
    invoke-static {v1}, Lcom/miui/home/launcher/GlobalSearchUtil;->setShowPullToSearchTips(Z)V

    goto :goto_1

    :cond_6
    const-string p1, "global_search"

    .line 108
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    const-string p1, "home_down"

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    .line 114
    :cond_7
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    .line 115
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    :cond_8
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 0

    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDisallowIntercept:Z

    return-void
.end method
