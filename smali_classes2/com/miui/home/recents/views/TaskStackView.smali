.class public Lcom/miui/home/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;
.implements Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;
.implements Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;",
        "Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;",
        "Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer<",
        "Lcom/miui/home/recents/views/TaskView;",
        "Lcom/android/systemui/shared/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mConfig:Landroid/content/res/Configuration;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

.field private mDeleteAllTasksAnimating:Z

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHardwareLayerThumbnailView:Z

.field private mIsShowingMenu:Z

.field mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mRecentsVisibleBound:Landroid/graphics/Rect;

.field private mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mViewPool:Lcom/miui/home/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/views/ViewPool<",
            "Lcom/miui/home/recents/views/TaskView;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualRotationSystemInsets:Landroid/graphics/Rect;

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 120
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 122
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 127
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 137
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 145
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    .line 147
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    .line 149
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    .line 1346
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    .line 155
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 156
    new-instance v2, Lcom/miui/home/recents/views/ViewPool;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 159
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 162
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 164
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setClipChildren(Z)V

    .line 169
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->checkVisibleBoundValid()V

    .line 170
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackView;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/views/TaskStackView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    return p1
.end method

.method private bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 1224
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;->bindTask(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 1227
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private checkVisibleBoundValid()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mRecentsVisibleBound:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1366
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setRecentsVisibleBound(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;FF)V"
        }
    .end annotation

    .line 394
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 395
    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 398
    :goto_0
    invoke-static {p2, p1}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 404
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 407
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 408
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 407
    invoke-virtual {v3, v2, p3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 409
    iget-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v5, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v4, v2, p4, v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v2

    .line 415
    iget-boolean v4, v2, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v3, v2}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I
    .locals 8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 1304
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 1306
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1308
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v5, p1, :cond_0

    move v4, v6

    goto :goto_1

    .line 1311
    :cond_0
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v7, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_2

    if-eqz v4, :cond_1

    sub-int/2addr v3, v6

    :cond_1
    return v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isLandscapeConsiderKeptPortrait()Z
    .locals 2

    .line 639
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSnappingChild()Z
    .locals 0

    .line 947
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isSnappingChild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTaskViewBoundChanged(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1017
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 1018
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 1019
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 1020
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isTaskViewVisible(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)Z"
        }
    .end annotation

    if-ltz p0, :cond_1

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskViewTransform;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onReturnViewToPool$1(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1157
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V
    .locals 4

    .line 994
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 999
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1000
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1001
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    if-nez p1, :cond_3

    .line 1004
    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->isTaskViewBoundChanged(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1012
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result p0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v1

    invoke-virtual {p2, p0, p1, v0, v1}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    goto :goto_1

    .line 1005
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1006
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1007
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 1008
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    invoke-virtual {p2, p1, v1, v2, p0}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    :goto_1
    return-void
.end method

.method private measureTaskView(Lcom/miui/home/recents/views/TaskView;)V
    .locals 4

    .line 933
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 934
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 935
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 938
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 939
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 940
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 942
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 939
    invoke-virtual {p1, v1, p0}, Lcom/miui/home/recents/views/TaskView;->measure(II)V

    return-void
.end method

.method private recalculateVisibleTaskView(Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 427
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 428
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 430
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    invoke-static {v5, p1}, Lcom/miui/home/recents/views/TaskStackView;->isTaskViewVisible(ILjava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_2

    .line 435
    :cond_2
    :goto_1
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private resetSnappingChild()V
    .locals 0

    .line 951
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz p0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->resetIsSnappingChild()V

    :cond_0
    return-void
.end method

.method private scrollTaskStackViewToPosition(I)F
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p1

    .line 274
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return p1
.end method

.method private setRecentsVisibleBound(Landroid/graphics/Rect;)V
    .locals 1

    .line 1360
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mRecentsVisibleBound:Landroid/graphics/Rect;

    .line 1361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRecentsVisibleBound: mRecentsVisibleBound = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskStackView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 1232
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private updateLayoutStyle()V
    .locals 3

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    .line 176
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->createTaskStackViewScroller(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/views/TaskStackViewScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 177
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 179
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStableLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->updateLayoutDirection()V

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getScrollDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setScrollDirection(I)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getSwipeDirection()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setSwipeDirection(I)V

    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindVisibleTaskViews(F)V
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 467
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 466
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/miui/home/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FF)V

    .line 469
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->modifyTransformVisible(Ljava/util/ArrayList;)V

    .line 474
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->recalculateVisibleTaskView(Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_8

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 479
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 482
    :goto_1
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 487
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v5, :cond_3

    goto :goto_2

    .line 491
    :cond_3
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    if-nez v5, :cond_5

    .line 493
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v5, v3, v3}, Lcom/miui/home/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    .line 494
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    sget-object v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v4, v3}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    .line 497
    :cond_4
    new-instance v3, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    .line 498
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getOldStackScroll()F

    move-result v6

    invoke-virtual {v4, v1, v6, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    .line 499
    invoke-virtual {v3, v2}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    .line 500
    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    .line 504
    :cond_5
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    .line 505
    invoke-direct {p0, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v3

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 507
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-ne v5, v4, :cond_6

    .line 508
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    .line 510
    :cond_6
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 511
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    return-void
.end method

.method public changeTaskStackViewScrollAndTaskViewTranslation(F)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->translationTaskViewsToScroll0(Lcom/miui/home/recents/views/TaskStackView;F)V

    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    .line 837
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 843
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/StackScrollChangedEvent;

    .line 844
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    neg-float v2, v2

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, p0}, Lcom/miui/home/recents/messages/StackScrollChangedEvent;-><init>(I)V

    .line 843
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;
    .locals 2

    .line 1136
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0166

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 795
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 740
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 743
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 744
    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 748
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    .line 333
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 335
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 336
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 665
    invoke-static {p1, p2}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 666
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 667
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 668
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 669
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 671
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewTransform;->fillIn(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_1

    .line 673
    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    .line 677
    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 318
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 319
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutTaskTransforms(FLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 687
    invoke-static {p2, p3}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 688
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 689
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 690
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 691
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4, v2, p1, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    .line 692
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getScrollForTaskView(I)F
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p0

    return p0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object p0
.end method

.method public getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object p0
.end method

.method public getStackIndexFromTaskId(I)I
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p0

    return p0
.end method

.method public getStackIndexFromTaskViewIndex(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getTaskIdFromStackIndex(I)I
    .locals 2

    .line 550
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, -0x1

    if-ltz p1, :cond_1

    .line 551
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_1

    .line 555
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :cond_1
    :goto_0
    return v0
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object p0
.end method

.method public getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getTouchHandler()Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    return-object p0
.end method

.method public hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    .line 1219
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 82
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    .line 623
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 624
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 625
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 626
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictNormalMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mRecentsVisibleBound:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 628
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->isLandscapeConsiderKeptPortrait()Z

    move-result v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 629
    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 634
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    :cond_3
    return-void
.end method

.method public isDeleteAllTasksAnimating()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    return p0
.end method

.method isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isShowingMenu()Z
    .locals 0

    .line 1351
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return p0
.end method

.method public isTouchPointInView(FFLcom/miui/home/recents/views/TaskView;)Z
    .locals 5

    .line 1024
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1028
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getIgnoreTranslationWhenFindTouchView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 1031
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onPickUpViewFromPool$2$TaskStackView(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 1

    .line 1213
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic lambda$setAllThumbnailViewHardware$0$TaskStackView(Lcom/miui/home/recents/views/TaskViewThumbnail;)V
    .locals 1

    .line 855
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 211
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 651
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 652
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 656
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 246
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->onDarkModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 217
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1036
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onExitState()V
    .locals 1

    .line 958
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->resetSnappingChild()V

    .line 959
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    const/4 v0, 0x0

    .line 960
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 757
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 758
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 759
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 761
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    add-int/lit8 v1, v1, -0x1

    .line 762
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 763
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 764
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 765
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 769
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 770
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 771
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 777
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 778
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 782
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 783
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v2, 0x2000

    .line 785
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    if-ltz v0, :cond_1

    .line 787
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_1

    const/16 p0, 0x1000

    .line 788
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 965
    iget-boolean p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->isSnappingChild()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 970
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 971
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 972
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 973
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    .line 975
    iget-object p5, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, p1, p5}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 978
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 979
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 983
    :cond_2
    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 985
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_3

    .line 986
    iput-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 890
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 891
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setMeasuredDimension(II)V

    return-void

    .line 899
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mRecentsVisibleBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 900
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 901
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mRecentsVisibleBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 904
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 908
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 909
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 911
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 914
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 917
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 918
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 919
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 920
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 922
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, v3}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 925
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 926
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1254
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1256
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1259
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 1260
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1261
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;

    invoke-direct {v4, v2, v1}, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Z)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "TaskStackView"

    const-string v0, "removeAllTask, cleanByRecents=true"

    .line 1265
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performClearAllRecentTasks()V

    .line 1267
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    .line 1268
    new-instance p1, Lcom/miui/home/recents/views/TaskStackView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/TaskStackView$1;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 1280
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1249
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskViewDismissedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11002b

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v0, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1291
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 1179
    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 1183
    iget-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz p3, :cond_0

    .line 1186
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 1195
    :cond_1
    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/miui/home/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1196
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    .line 1197
    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    .line 1200
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    .line 1204
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1206
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    .line 1208
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1210
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    const/4 p2, 0x0

    .line 1211
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    .line 1212
    new-instance p2, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$AgN-HaQFVzvFCY14Ez3QMP-nu8I;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$AgN-HaQFVzvFCY14Ez3QMP-nu8I;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 82
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V

    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1356
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->setRecentsVisibleBound(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method onReload(Z)V
    .locals 4

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/views/TaskView;->onReload(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->reset()V

    .line 239
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    return-void
.end method

.method public onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 1148
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1151
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1155
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    .line 1156
    sget-object v0, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    .line 1160
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1161
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    .line 1165
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TaskStackView"

    const-string v2, "onReturnViewToPool error"

    .line 1167
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    .line 1170
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 1172
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1244
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onStackScrollChanged(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1238
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    const/4 p1, 0x1

    .line 1049
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1052
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_0

    .line 1053
    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_0

    .line 1054
    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 p2, 0xc8

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1052
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 1

    .line 1070
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v0, p2}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1076
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 1080
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1081
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1085
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-nez p0, :cond_2

    if-eqz p4, :cond_2

    .line 1086
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p2, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const p3, 0x7f1103f1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 5

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 1096
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1097
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1100
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 1101
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1105
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 1112
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const v1, 0x7f1103f1

    .line 1113
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    .line 1112
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4

    const/4 p1, 0x0

    .line 1119
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1120
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1124
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 1125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 1127
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 1128
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 800
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    .line 804
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 805
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-ge p2, p0, :cond_2

    const/16 p0, 0x1000

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 7

    .line 567
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 570
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 573
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 576
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 577
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 578
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 579
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 582
    :cond_0
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 584
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 588
    :cond_1
    invoke-virtual {p0, v3, v5, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 597
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStackView before requestLayout isParentLayoutRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "parent null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const-string p0, "TaskStackView after requestLayout"

    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public returnTaskViewsToPool()V
    .locals 4

    .line 1140
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 1141
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollToDefaultCenterTaskViewIndex()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDefaultCenterTaskViewIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->scrollTaskStackViewToPosition(I)F

    return-void
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->scrollToNearestMotionlessPosition()V

    return-void
.end method

.method public setAllThumbnailViewHardware(Z)V
    .locals 2

    .line 849
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 852
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    .line 853
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 854
    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$OzxwVfylgW65VieSjAQfR6nGv6o;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$OzxwVfylgW65VieSjAQfR6nGv6o;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setThumbnailViewProperty(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsShowingMenu(Z)V
    .locals 0

    .line 1348
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return-void
.end method

.method public setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStackView setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisualRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 866
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isAddToLauncher(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 868
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 869
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopScroll()V
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    return-void
.end method

.method public updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 880
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_0

    .line 724
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_0
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    .line 606
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->isAnimatingTo(Lcom/miui/home/recents/views/TaskViewTransform;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 610
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 291
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 292
    instance-of v3, v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 1041
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method
