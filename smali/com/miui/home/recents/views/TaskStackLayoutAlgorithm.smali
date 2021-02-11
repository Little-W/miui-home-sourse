.class public abstract Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm$_lancet;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFirstTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mHorizontalGap:I

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

.field protected mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field mTaskStackViewPaddingRect:Landroid/graphics/Rect;

.field public mTaskStackViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mTaskViewRect:Landroid/graphics/Rect;
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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 100
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getDimensionForDevice(Landroid/content/Context;IIIIII)I
    .locals 2

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscape()Z

    move-result v0

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move p6, p7

    .line 352
    :cond_0
    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 355
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen()Z

    move-result p6

    if-eqz p6, :cond_3

    if-eqz v0, :cond_2

    move p4, p5

    .line 356
    :cond_2
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    move p2, p3

    .line 360
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private getRecentsContainerRotation()I
    .locals 1

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v0

    return v0
.end method

.method private getVisibleTasks(Ljava/util/ArrayList;Landroid/util/ArraySet;)Ljava/util/ArrayList;
    .locals 4
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

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 223
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 225
    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private reloadRecentsTaskViewHeaderHeight()V
    .locals 8

    .line 104
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    const v2, 0x7f0701c5

    const v3, 0x7f0701c5

    const v4, 0x7f0701c5

    const v5, 0x7f0701c6

    const v6, 0x7f0701c5

    const v7, 0x7f0701c6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

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

.method public abstract calculateTaskRadius(FF)F
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

.method protected abstract computeTaskStackViewPadding(I)V
.end method

.method public getBoundedScroll(F)F
    .locals 2

    .line 403
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public getDeltaPForX(FF)F
    .locals 0

    sub-float/2addr p2, p1

    .line 329
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    neg-float p1, p2

    return p1
.end method

.method public getDeltaPForY(FF)F
    .locals 0

    sub-float/2addr p2, p1

    .line 324
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    neg-float p1, p2

    return p1
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

    return v0
.end method

.method protected getPercentsValue(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method public getRecentsTaskViewHeaderHeight()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    return v0
.end method

.method public getScrollPGap()F
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPixGap()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getScrollPixGap()F
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getStackScrollForTaskView(ZII)F
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p1

    .line 262
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p2

    .line 263
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    .line 264
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateStackScroll([I[I)F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget p3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, p2, p3}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method protected abstract getTargetTaskViewIndex(ZII)I
.end method

.method public getTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    .line 315
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getTaskViewTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/miui/home/recents/views/TaskViewTransform;)Lcom/miui/home/recents/views/TaskViewTransform;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 283
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskViewTransform;->reset()V

    return-object p3

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    return-object p3
.end method

.method public abstract getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
.end method

.method public getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 305
    :cond_0
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    .line 306
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V

    .line 307
    iget-object p1, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 308
    iget-object p1, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;F)Landroid/graphics/RectF;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v0

    .line 298
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getXForDeltaP(FF)I
    .locals 0

    sub-float/2addr p2, p1

    .line 334
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    neg-int p1, p1

    return p1
.end method

.method public getYForDeltaP(FF)I
    .locals 0

    sub-float/2addr p2, p1

    .line 339
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    neg-int p1, p1

    return p1
.end method

.method public initTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 165
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 167
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->scaleTaskView(Landroid/graphics/RectF;)V

    .line 168
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mRecentsTaskViewHeaderHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 169
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 171
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 172
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateGap(II)V

    .line 174
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 4

    .line 130
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 137
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->reloadRecentsTaskViewHeaderHeight()V

    .line 151
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-string p1, "TaskStackLayoutAlgorithm"

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: windowRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskStackViewRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskViewRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isLandscape()Z
    .locals 2

    .line 214
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsContainerRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

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

.method protected isMultiWindowMode()Z
    .locals 1

    .line 391
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isScrollOutOfBounds(F)Z
    .locals 1

    .line 399
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected abstract scaleTaskView(Landroid/graphics/RectF;)V
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/TaskStack;",
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getVisibleTasks(Ljava/util/ArrayList;Landroid/util/ArraySet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 242
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 p2, 0x0

    .line 243
    iput p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 245
    iget p2, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 249
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-ge p2, v0, :cond_1

    .line 250
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    .line 251
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->computeTaskStackViewPadding(I)V

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateMinScrollP()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateMaxScrollP()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    return-void
.end method
