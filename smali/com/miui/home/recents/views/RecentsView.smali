.class public Lcom/miui/home/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mHomeIntent:Landroid/content/Intent;

.field private mInOverviewState:Z

.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

.field private mRunningTaskId:I

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mVisualRotationSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 64
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 67
    iput p3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 540
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p4, 0x7f0d00b0

    .line 90
    invoke-virtual {p1, p4, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 91
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/home/recents/views/RecentsView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/RecentsView$1;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    const p4, 0x7f0d00ae

    .line 99
    invoke-virtual {p1, p4, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/RecentMenuView;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    .line 100
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p0, p1, p3, p3}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;II)V

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 104
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    return-void
.end method

.method private alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 8

    if-eqz p1, :cond_3

    .line 572
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 573
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 576
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v0

    .line 577
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 578
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v4, :cond_1

    .line 582
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 583
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 584
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 585
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 586
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 587
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 588
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 589
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 590
    invoke-virtual {v4, v1}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 591
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private isTaskLaunchAnimRunning()Z
    .locals 1

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isTaskLaunchAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 5

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    const/4 v2, 0x1

    .line 412
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setIsPrintTaskInfo(Z)V

    .line 414
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    .line 415
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isWindowFocus()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 415
    :cond_1
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 419
    :cond_2
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 420
    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 421
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 422
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 423
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 424
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method private onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 3

    .line 429
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsView;->onReload(ZZ)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 432
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fullScreen"

    goto :goto_1

    :cond_1
    const-string v0, "clickButton"

    .line 434
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "landscape"

    goto :goto_2

    :cond_2
    const-string v1, "portrait"

    .line 435
    :goto_2
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterRecentsEvent(Lcom/android/systemui/shared/recents/model/TaskStack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "doubleTap"

    .line 382
    invoke-static {v0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 383
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "clickRecentsKey"

    .line 385
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :goto_0
    return-void
.end method

.method private updateTaskIsLauncherTarget()V
    .locals 6

    .line 468
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 469
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 470
    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 474
    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    move v4, v3

    :goto_3
    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    const/high16 p4, 0x41c80000    # 25.0f

    mul-float v5, v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 560
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 7

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p5

    .line 566
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public getFirstTaskViewYWhenNoScroll()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v0, v0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getFirstTaskViewYWhenNoScroll()I

    move-result v0

    return v0
.end method

.method public getMenuView()Lcom/miui/home/recents/views/RecentMenuView;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    return v0
.end method

.method public getRunningTaskIndex()I
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRunningTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 480
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIdByIndex(I)I
    .locals 1

    .line 505
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getTaskIndexById(I)I
    .locals 1

    .line 500
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object v0
.end method

.method public getTaskView(I)Lcom/miui/home/recents/views/TaskView;
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 452
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTaskViewCount()I
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->bringToFront()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 196
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkModeChange()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->onDarkModeChange()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 202
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 270
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->layout(IIII)V

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 276
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 277
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 278
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sub-int/2addr p5, p3

    sub-int/2addr p5, v2

    .line 279
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 280
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int/2addr p1, p2

    add-int/2addr v2, p3

    invoke-virtual {p4, p2, p3, p1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentMenuView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 285
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentMenuView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/RecentMenuView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v1, v1, p2, p3}, Lcom/miui/home/recents/views/RecentMenuView;->layout(IIII)V

    .line 288
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_3

    .line 289
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    const/4 p1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 244
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 247
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->measure(II)V

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, v3, :cond_1

    .line 252
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 253
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 252
    invoke-virtual {p0, p1, v2, v4}, Lcom/miui/home/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentMenuView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 258
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 259
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 258
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/home/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 262
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ClickTaskViewEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "clickToSwitch"

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->getTaskId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/HideRecentsEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const v0, 0x7f100025

    .line 220
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 235
    iget-object p1, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public onReload(ZZ)V
    .locals 1

    .line 115
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 117
    new-instance p1, Lcom/miui/home/recents/views/TaskStackViewStack;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/home/recents/views/TaskStackViewStack;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 118
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 119
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 123
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    move p1, v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 129
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 132
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReload(Z)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 347
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->returnTaskViewsToPool()V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 339
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reloadStackView()V
    .locals 1

    .line 439
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 440
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 399
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    return-void
.end method

.method public setCurrentTaskId(I)V
    .locals 1

    .line 460
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 463
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 464
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public setInOverviewState(Z)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eq v0, p1, :cond_1

    .line 544
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    .line 545
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eqz p1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 548
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 549
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningTaskHidden(IZ)V
    .locals 0

    .line 530
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 532
    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_1
    return-void
.end method

.method public setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showCurrentTask(I)V
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 404
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    return-void
.end method

.method public showEmptyView(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startHome()V
    .locals 3

    .line 391
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startTaskOrHome(J)V
    .locals 6

    .line 353
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_0

    const-string p1, "RecentsView"

    const-string p2, "mTaskStackView is null, can\'t start any task"

    .line 354
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const-string v1, "RecentsView"

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runningTaskIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    if-eq v0, v2, :cond_2

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isTaskLaunchAnimRunning()Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 364
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 366
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    goto :goto_0

    :cond_2
    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    .line 370
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 372
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    :goto_0
    return-void
.end method

.method public updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 143
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001fa

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->showEmptyView(I)V

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    return-void
.end method
