.class public abstract Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.super Landroid/widget/FrameLayout;
.source "RecentsTopWindowCrop.java"


# static fields
.field protected static TOP_WINDOW_CROP_STATUS_DRAG:I = 0x2

.field protected static TOP_WINDOW_CROP_STATUS_HOLD:I = 0x3

.field protected static TOP_WINDOW_CROP_STATUS_SHOW:I = 0x1

.field protected static TOP_WINDOW_CROP_STATUS_UNDEFINED:I = -0x1

.field protected static sIsSupportStartSmallWithPosition:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field protected mIsFirstAnim:Z

.field protected mIsInit:Z

.field protected mIsLandscape:Z

.field protected mIsSupportMiniSmallWindow:Z

.field protected mLastCropStatus:I

.field protected mOpenContent:I

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportStartSmallWithPosition()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RecentsTopWindowCrop_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RecentsTopWindowCrop_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RecentsTopWindowCrop_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RecentsTopWindowCrop_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    .line 25
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    .line 62
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract exitTopWindowCrop(Ljava/lang/Runnable;)V
.end method

.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutParams()Landroid/view/WindowManager$LayoutParams;
.end method

.method public getOpenContent()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    return v0
.end method

.method public abstract initTopWindowCrop(ZIIZ)V
.end method

.method public isInHoldState()Z
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return v0
.end method

.method public abstract resetTopWindowCrop()V
.end method

.method public setViewAlpha(Landroid/view/View;F)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public startSmallWindow(Landroid/graphics/RectF;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsLandscape:Z

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v4, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    :try_start_0
    const-string v4, "android.util.MiuiMultiWindowUtils"

    .line 116
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "startSmallFreeform"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    const-class v9, Landroid/graphics/Rect;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    new-array v7, v7, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, p1, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, p1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v1, v9, v10, v11, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    .line 115
    invoke-static {v4, v5, v6, v8, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 126
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "startSmallFreeform"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v2, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v1, v7, v8, v9, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    .line 125
    invoke-static {v0, v4, v5, v6, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public abstract startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract updateConfiguration()V
.end method

.method public abstract updateState(FFF)Z
.end method
