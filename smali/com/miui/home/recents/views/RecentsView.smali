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

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 65
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 68
    iput p3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 536
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d00f5

    .line 91
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 92
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/recents/views/RecentsView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsView$1;-><init>(Lcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 100
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mHomeIntent:Landroid/content/Intent;

    return-void
.end method

.method private alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 8

    if-eqz p1, :cond_3

    .line 564
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v0

    .line 569
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 570
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 571
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    if-eq p1, v4, :cond_1

    .line 574
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 575
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, p4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 576
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 577
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 578
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 579
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 580
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 581
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 582
    invoke-virtual {v4, v1}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 583
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

.method private isLandscapeVisually()Z
    .locals 2

    .line 421
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    return v0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 402
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 403
    iget v3, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 404
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 407
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method private onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 2

    .line 412
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

    .line 413
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 415
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fullScreen"

    goto :goto_1

    :cond_1
    const-string v0, "clickButton"

    .line 416
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->isLandscapeVisually()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "landscape"

    goto :goto_2

    :cond_2
    const-string v1, "portrait"

    .line 417
    :goto_2
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterRecentsEvent(Lcom/android/systemui/shared/recents/model/TaskStack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "doubleTap"

    .line 371
    invoke-static {v0, p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwitchAppEvent(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 372
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "clickRecentsKey"

    .line 374
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :goto_0
    return-void
.end method

.method private updateTaskIsLauncherTarget()V
    .locals 6

    .line 460
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 461
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_3

    .line 469
    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v4, v5, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    goto :goto_2

    :cond_5
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

    .line 552
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

    .line 558
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsView;->alignTaskByVisualRectF(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public getFirstTaskViewYWhenNoScroll()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v0, v0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getFirstTaskViewYWhenNoScroll()I

    move-result v0

    return v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    return v0
.end method

.method public getRunningTaskIndex()I
    .locals 2

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRunningTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 476
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIdByIndex(I)I
    .locals 1

    .line 501
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 502
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

    .line 496
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object v0
.end method

.method public getTaskView(I)Lcom/miui/home/recents/views/TaskView;
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 443
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

    .line 444
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

    .line 506
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 510
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

    .line 515
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

    .line 489
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 197
    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 198
    invoke-virtual {v2, v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public hideEmptyViewAndShowTaskStackView()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    .line 191
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->bringToFront()V

    return-void
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    .line 366
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

.method protected onAttachedToWindow()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 210
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 214
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 219
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 220
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 226
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 283
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->layout(IIII)V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 289
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 291
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    .line 292
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 293
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int/2addr p1, p2

    add-int/2addr v0, p3

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 296
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_2

    .line 297
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    const/4 p1, 0x0

    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 265
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 266
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->measure(II)V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_1

    .line 271
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 272
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 271
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/home/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 275
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ClickTaskViewEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "clickToSwitch"

    .line 234
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

    .line 239
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 254
    iget-object p1, p1, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public onReload(ZZ)V
    .locals 1

    .line 111
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 113
    new-instance p1, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/RecentsContainer;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    move p1, v0

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 126
    :cond_3
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 129
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReload(Z)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 336
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->returnTaskViewsToPool()V

    :cond_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 328
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 310
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reloadStackView()V
    .locals 1

    .line 430
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->loadTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->onStackLoaded(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 389
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    return-void
.end method

.method public setCurrentTaskId(I)V
    .locals 1

    .line 452
    iget v0, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 455
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/RecentsView;->mRunningTaskId:I

    .line 456
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public setInOverviewState(Z)V
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eq v0, p1, :cond_1

    .line 540
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    .line 541
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsView;->mInOverviewState:Z

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 544
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 545
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningTaskHidden(IZ)V
    .locals 0

    .line 526
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 528
    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_1
    return-void
.end method

.method public setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 247
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public shouldUseMultiWindowTaskSizeStrategy()Z
    .locals 1

    .line 435
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
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

    .line 393
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 394
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    return-void
.end method

.method public showEmptyView(I)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 182
    new-array v1, p1, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    aput-object v2, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    .line 183
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-interface {v1, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public startHome()V
    .locals 3

    .line 380
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    goto :goto_0

    .line 384
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

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_0

    const-string p1, "RecentsView"

    const-string p2, "mTaskStackView is null, can\'t start any task"

    .line 343
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const-string v1, "RecentsView"

    .line 347
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

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->isTaskLaunchAnimRunning()Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 353
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

    .line 355
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    .line 356
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    goto :goto_0

    :cond_2
    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    .line 359
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskViewAt(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 361
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/miui/home/recents/views/RecentsView;->startTaskOrHome(Lcom/miui/home/recents/views/TaskView;I)V

    :goto_0
    return-void
.end method

.method public updateEmptyView(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyViewAndShowTaskStackView()V

    goto :goto_0

    :cond_0
    const p1, 0x7f100319

    .line 158
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->showEmptyView(I)V

    :goto_0
    return-void
.end method

.method public updateStack(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->updateEmptyView(I)V

    .line 147
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsView;->updateTaskIsLauncherTarget()V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 519
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setThumbnail(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    return-void
.end method
