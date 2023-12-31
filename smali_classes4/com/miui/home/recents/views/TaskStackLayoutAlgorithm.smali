.class public abstract Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFirstTaskRectF:Landroid/graphics/RectF;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mHorizontalGap:F

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mIsRtlLayout:Z

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mRecentsTaskViewHeaderHeight:I

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field mTaskStackViewPaddingRect:Landroid/graphics/Rect;

.field public mTaskStackViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mTaskViewRectF:Landroid/graphics/RectF;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mVisualRotationSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRectF:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    .line 100
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->updateLayoutDirection()V

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initRecentLayoutConfig()V

    return-void
.end method

.method private getRecentsContainerRotation()I
    .locals 0

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    return p0
.end method

.method private getVisibleTasks(Ljava/util/ArrayList;Landroid/util/ArraySet;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 273
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 274
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private reloadRecentsTaskViewHeaderHeight()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    return-void
.end method


# virtual methods
.method protected abstract afterFrictionValue(FF)F
.end method

.method protected abstract calculateGap(II)V
.end method

.method protected abstract calculateMaxScrollP()F
.end method

.method protected abstract calculateMinScrollP()F
.end method

.method public abstract calculatePer(FF)F
.end method

.method protected abstract calculateStackScroll([I[I)F
.end method

.method public abstract calculateTaskRatio(FFFZ)F
.end method

.method protected abstract calculateTaskViewOffsetXAndY(I)[I
.end method

.method public abstract calculateTaskWidthNew(FF)F
.end method

.method public abstract calculateTaskX(FFFF)F
.end method

.method public abstract calculateTaskY(FFFFF)F
.end method

.method public computePaddingForFloatingIfNeed(Landroid/graphics/Rect;)V
    .locals 1

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 203
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 204
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 206
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract computeTaskStackViewPadding(I)V
.end method

.method public getBoundedScroll(F)F
    .locals 1

    .line 433
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public abstract getDefaultCenterTaskViewIndex()I
.end method

.method public getDeltaPForX(FF)F
    .locals 0

    sub-float/2addr p2, p1

    .line 382
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p2, p0

    neg-float p0, p2

    return p0
.end method

.method public getDeltaPForY(FF)F
    .locals 0

    sub-float/2addr p2, p1

    .line 377
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p2, p0

    neg-float p0, p2

    return p0
.end method

.method public getFirstTaskViewYWhenNoScroll()I
    .locals 2

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    aget v0, v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getInsetBottom()I
    .locals 2

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowGestureLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsContainerRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    return p0

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getRecentsTaskViewHeaderHeight()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    return p0
.end method

.method public getScrollPGap()F
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPixGap()F

    move-result v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getScrollPixGap()F
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public getStackScrollForTaskView(I)F
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    .line 314
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    .line 315
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateStackScroll([I[I)F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public abstract getTargetTaskViewIndex(ZII)I
.end method

.method public getTaskViewBounds()Landroid/graphics/Rect;
    .locals 1

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 367
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 334
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskViewTransform;->reset()V

    return-object p3

    .line 337
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    return-object p3
.end method

.method public abstract getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
.end method

.method public getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 356
    :cond_0
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    .line 357
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    .line 358
    iget-object p1, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 359
    iget-object p0, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;F)Landroid/graphics/RectF;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v0

    .line 349
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getTransXForCenterTask()I
    .locals 0

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 214
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 215
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 217
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getXForDeltaP(FF)I
    .locals 0

    sub-float/2addr p2, p1

    .line 387
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    neg-int p0, p0

    return p0
.end method

.method public getYForDeltaP(FF)I
    .locals 0

    sub-float/2addr p2, p1

    .line 392
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    neg-int p0, p0

    return p0
.end method

.method public abstract initRecentLayoutConfig()V
.end method

.method public initTaskViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 172
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 176
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getInsetBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->scaleTaskView(Landroid/graphics/RectF;)V

    .line 179
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 180
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 182
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 183
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateGap(II)V

    .line 185
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 4

    .line 139
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isConfigurationPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 145
    sget-object v1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 151
    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    move-object p1, v1

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initRecentLayoutConfig()V

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->reloadRecentsTaskViewHeaderHeight()V

    .line 161
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialize: windowRect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mVisualRotationSystemInsets="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mTaskStackViewRect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mTaskViewRect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskStackLayoutAlgorithm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isConfigurationPortrait()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 128
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isInitialized()Z
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isLandscapeVisually()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsContainerRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    return p0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

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

.method protected isMultiWindowMode()Z
    .locals 0

    .line 421
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    return p0
.end method

.method public isScrollOutOfBounds(F)Z
    .locals 1

    .line 429
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

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

.method protected isUseDistanceForTaskX()Z
    .locals 1

    .line 267
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscapeVisually()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isMultiWindowInLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract scaleTaskView(Landroid/graphics/RectF;)V
.end method

.method public setVisualRotationSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mVisualRotationSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "systemInsets="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskStackLayoutAlgorithm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/TaskStack;",
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getVisibleTasks(Ljava/util/ArrayList;Landroid/util/ArraySet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 291
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    monitor-enter p2

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 295
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-gtz v0, :cond_0

    .line 296
    monitor-exit p2

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-ge v0, v1, :cond_1

    .line 300
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 301
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->computeTaskStackViewPadding(I)V

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateMinScrollP()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateMaxScrollP()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    return-void

    :catchall_0
    move-exception p0

    .line 303
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateLayoutDirection()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    return-void
.end method
