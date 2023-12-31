.class public abstract Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.super Landroid/widget/LinearLayout;
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

.field protected mIsSupportWorldcirculate:Z

.field protected mLastCropStatus:I

.field protected mOpenContent:I

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportStartSmallWithPosition()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
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

    .line 27
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
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

    .line 27
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
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

    .line 27
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
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

    .line 27
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    sget p1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsFirstAnim:Z

    .line 66
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    return-void
.end method

.method private startSmallWindowAtLeastUAndOnShellFeature(ILandroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    :try_start_0
    const-string p0, "android.util.MiuiMultiWindowUtils"

    .line 132
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "startSmallFreeformForRecent"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/graphics/Rect;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v7

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    new-instance p1, Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget v4, p2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p1, p3, v4, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p1, v2, v7

    .line 131
    invoke-static {p0, v0, v1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private startSmallWindowBeforeUOrNotOnShellFeature(ILandroid/graphics/RectF;)V
    .locals 10

    const-string v0, "startSmallFreeform"

    const-string v1, "android.util.MiuiMultiWindowUtils"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    new-array v6, v6, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v6, v3

    new-instance p0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v8, p2, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, p2, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p0, v3, v8, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p0, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    .line 144
    invoke-static {v1, v5, v0, v7, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 155
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v4, v3

    new-instance p0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v6, p2, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {p0, v3, v6, v7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p0, v4, v2

    .line 154
    invoke-static {p1, v1, v0, v5, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract exitTopWindowCrop(Ljava/lang/Runnable;)V
.end method

.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public abstract getLayoutParams()Landroid/view/WindowManager$LayoutParams;
.end method

.method public getOpenContent()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    return p0
.end method

.method public abstract initTopWindowCrop(ZIIZZ)V
.end method

.method public isInHoldState()Z
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOpenContent:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInit()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return p0
.end method

.method public abstract resetTopWindowCrop()V
.end method

.method public setViewAlpha(Landroid/view/View;F)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public startSmallWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsLandscape:Z

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->hasShellFeature()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startSmallWindowAtLeastUAndOnShellFeature(ILandroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    .line 125
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startSmallWindowBeforeUOrNotOnShellFeature(ILandroid/graphics/RectF;)V

    :goto_1
    return-void
.end method

.method public abstract startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract updateConfiguration()V
.end method

.method public abstract updateState(FFF)Z
.end method
