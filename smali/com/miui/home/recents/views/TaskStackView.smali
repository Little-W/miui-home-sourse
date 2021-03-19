.class public Lcom/miui/home/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;
.implements Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;",
        "Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;",
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

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

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

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

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

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 109
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 113
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 115
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 123
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 126
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 133
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    .line 135
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    .line 137
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    .line 140
    new-instance v2, Lcom/miui/home/recents/views/TaskStackView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/TaskStackView$1;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1282
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    .line 154
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 155
    new-instance v2, Lcom/miui/home/recents/views/ViewPool;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 158
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 161
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/views/TaskStackView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/TaskStackView;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/views/TaskStackView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    return p1
.end method

.method private bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 1147
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/views/TaskView;->bindTask(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 1150
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

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

    .line 370
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 371
    invoke-static {p3, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 374
    :goto_0
    invoke-static {p2, p1}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 380
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 383
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 384
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 383
    invoke-virtual {v3, v2, p3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 385
    iget-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v5, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v4, v2, p4, v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    move-result-object v2

    .line 391
    iget-boolean v4, v2, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-eqz v4, :cond_1

    .line 392
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

    .line 1239
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 1241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1243
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v5, p1, :cond_0

    move v4, v6

    goto :goto_1

    .line 1246
    :cond_0
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v7, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_2

    if-eqz v4, :cond_1

    sub-int/2addr v3, v6

    return v3

    :cond_1
    return v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isSnappingChild()Z
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isSnappingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 420
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    .line 424
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

.method private layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V
    .locals 4

    .line 924
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 930
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 931
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 935
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 936
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 937
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    goto :goto_0

    .line 941
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/recents/views/TaskView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method private measureTaskView(Lcom/miui/home/recents/views/TaskView;)V
    .locals 5

    .line 863
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 864
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 868
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 869
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 870
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 872
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 869
    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->measure(II)V

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

    .line 399
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 401
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 404
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 406
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 410
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

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_2

    .line 411
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
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->resetIsSnappingChild()V

    :cond_0
    return-void
.end method

.method private scrollTaskStackViewToPosition(I)F
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return p1
.end method

.method private unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 1155
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private updateLayoutStyle()V
    .locals 3

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    .line 173
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->createTaskStackViewScroller(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/views/TaskStackViewScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 174
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    .line 175
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 176
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStableLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getScrollDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setScrollDirection(I)V

    .line 180
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getSwipeDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setSwipeDirection(I)V

    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindVisibleTaskViews(F)V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 443
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 442
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/miui/home/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FF)V

    .line 445
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->modifyTransformVisible(Ljava/util/ArrayList;)V

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->recalculateVisibleTaskView(Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_8

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 455
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

    .line 458
    :goto_1
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 463
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v5, :cond_3

    goto :goto_2

    .line 467
    :cond_3
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    if-nez v5, :cond_5

    .line 469
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v5, v3, v3}, Lcom/miui/home/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    .line 470
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    sget-object v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v4, v3}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    .line 473
    :cond_4
    new-instance v3, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    .line 474
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getOldStackScroll()F

    move-result v6

    invoke-virtual {v4, v1, v6, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    .line 475
    iput-boolean v2, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    .line 476
    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    .line 480
    :cond_5
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    .line 481
    invoke-direct {p0, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v3

    .line 482
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 483
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-ne v5, v4, :cond_6

    .line 484
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    .line 486
    :cond_6
    invoke-virtual {p0, v5}, Lcom/miui/home/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 487
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v5, v3, v4}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 488
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

    .line 648
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    return-void
.end method

.method public changeTaskStackViewScrollAndTaskViewTranslation(F)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 245
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->translationTaskViewsToScroll0(Lcom/miui/home/recents/views/TaskStackView;F)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 779
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    .line 781
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 788
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/StackScrollChangedEvent;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    .line 789
    invoke-virtual {v2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 790
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/miui/home/recents/messages/StackScrollChangedEvent;-><init>(I)V

    .line 788
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;
    .locals 2

    .line 1059
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 739
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 684
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 687
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 688
    invoke-static {v3}, Lcom/miui/home/recents/util/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 692
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 312
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    .line 614
    invoke-static {p1, p2}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 615
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 616
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 617
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 618
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 620
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewTransform;->fillIn(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_1

    .line 622
    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    .line 625
    :goto_1
    iput-boolean v1, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 294
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 295
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    .line 635
    invoke-static {p2, p3}, Lcom/miui/home/recents/util/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 636
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 637
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 638
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 639
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4, v2, p1, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;

    .line 640
    iput-boolean v1, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getScrollForTaskView(I)F
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskView(I)F

    move-result p1

    return p1
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method public getStackIndexFromTaskId(I)I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method

.method public getStackIndexFromTaskViewIndex(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getTaskIdFromStackIndex(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object v0
.end method

.method public getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 510
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 515
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 516
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v2, :cond_1

    .line 517
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
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getTaskViewIndex(Lcom/miui/home/recents/views/TaskView;)I
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;F)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
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

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    .line 1142
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 75
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->hasPreferredData(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method

.method public initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 5

    .line 598
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 600
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 1287
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return v0
.end method

.method public isTaskStackViewLayoutStyleVertical()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchPointInView(FFLcom/miui/home/recents/views/TaskView;)Z
    .locals 5

    .line 946
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

    .line 947
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getIgnoreTranslationWhenFindTouchView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 950
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 955
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onExitState()V
    .locals 1

    .line 888
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->resetSnappingChild()V

    .line 889
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 701
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 702
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 705
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    add-int/lit8 v1, v1, -0x1

    .line 706
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 707
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 708
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 709
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 713
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 715
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 721
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 722
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 727
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v2, 0x2000

    .line 729
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    if-ltz v0, :cond_1

    .line 731
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 732
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 895
    iget-boolean p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->isSnappingChild()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 900
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 901
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 902
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {p3}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 903
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    .line 905
    iget-object p5, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, p1, p5}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 908
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 909
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 913
    :cond_2
    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 915
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_3

    .line 916
    iput-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 830
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 831
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 833
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 835
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 838
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 839
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 841
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 844
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 847
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 848
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 849
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 850
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 852
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0, v3}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 856
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1189
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1191
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1194
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 1195
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1196
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

    .line 1200
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performClearAllRecentTasks(Landroid/view/View;)V

    .line 1202
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeleteAllTasksAnimating:Z

    .line 1203
    new-instance p1, Lcom/miui/home/recents/views/TaskStackView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/TaskStackView$2;-><init>(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 1215
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1184
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutStyle()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/TaskViewDismissedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 1226
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;

    iget-object p1, p1, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 1100
    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 1104
    iget-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz p3, :cond_0

    .line 1107
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 1116
    :cond_1
    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/miui/home/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1117
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->measureTaskView(Lcom/miui/home/recents/views/TaskView;)V

    .line 1118
    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/TaskStackView;->layoutTaskView(ZLcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/home/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->registerEventBus()V

    .line 1125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1127
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    .line 1129
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1132
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->setCallbacks(Lcom/miui/home/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1133
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1134
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    const/4 p2, 0x0

    .line 1135
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    .line 1136
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    iget-boolean p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    :cond_3
    const/4 p3, 0x0

    .line 1137
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 75
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 4

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/views/TaskView;->onReload(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 213
    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->reset()V

    .line 221
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 223
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    return-void
.end method

.method public onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 1071
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1074
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->unbindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1078
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->resetViewProperties()V

    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1080
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1082
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1083
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    .line 1087
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

    .line 1089
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->unregisterEventBus()V

    .line 1093
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewsList()V

    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->onReturnViewToPool(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1179
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    return-void
.end method

.method public onStackScrollChanged(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1173
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    const/4 p1, 0x1

    .line 968
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 971
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 p2, 0xc8

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V
    .locals 0

    .line 989
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 991
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-virtual {p3, p1}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 995
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    .line 999
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1000
    invoke-virtual {p0, p4}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1004
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p2

    if-nez p2, :cond_2

    if-eqz p6, :cond_2

    .line 1009
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const p4, 0x7f1001fb

    const/4 p5, 0x0

    invoke-direct {p3, p4, p1, p5}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 5

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1018
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

    .line 1019
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1023
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 1024
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1028
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1035
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;

    const v3, 0x7f1001fb

    .line 1036
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-direct {v1, v3, p1, v2}, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    .line 1035
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4

    const/4 p1, 0x0

    .line 1042
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1043
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1047
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 1048
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 1050
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 1051
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->bindTaskView(Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 1162
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1163
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1164
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 744
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    .line 748
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p2

    if-ltz p2, :cond_3

    .line 749
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-ge p2, v1, :cond_3

    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 7

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 545
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 551
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 552
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 553
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 554
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 559
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 563
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

    .line 571
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public returnTaskViewsToPool()V
    .locals 4

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 1064
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollToDefaultCenterTaskViewIndex()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDefaultCenterTaskViewIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->scrollTaskStackViewToPosition(I)F

    return-void
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->scrollToNearestMotionlessPosition()V

    return-void
.end method

.method public setAllThumbnailViewHardware(Z)V
    .locals 3

    .line 794
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 797
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    .line 798
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 799
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsHardwareLayerThumbnailView:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    .line 800
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setIsShowingMenu(Z)V
    .locals 0

    .line 1284
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mIsShowingMenu:Z

    return-void
.end method

.method public setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public setVisualRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 810
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 811
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->setVisualRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 812
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 813
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 814
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_0

    .line 672
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_0
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 1

    .line 581
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->isAnimatingTo(Lcom/miui/home/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    .line 585
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView;->mVisibleTaskViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 267
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 268
    instance-of v3, v2, Lcom/miui/home/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 269
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

    .line 960
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
