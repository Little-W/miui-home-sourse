.class public abstract Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.super Landroid/widget/FrameLayout;
.source "RecentsTopWindowCrop.java"

# interfaces
.implements Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;


# static fields
.field protected static sIsSupportStartSmallWithPosition:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field protected mHeight:I

.field protected mHoverBound:Landroid/graphics/RectF;

.field protected mIsInit:Z

.field protected mIsLandscape:Z

.field protected mLastCropStatus:I

.field protected mNearBound:Landroid/graphics/RectF;

.field mOnStateChangedListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportStartSmallWithPosition()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
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

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mNearBound:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHoverBound:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
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

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mNearBound:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHoverBound:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
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

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mNearBound:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHoverBound:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
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

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mNearBound:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHoverBound:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 71
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    return-void
.end method

.method private exit(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->exitNoAnim(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->exitWithAnim(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private exitNoAnim(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 167
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private exitWithAnim(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onShow(Z)V

    return-void
.end method

.method public static synthetic lambda$updateState$1(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onHover(FF)V

    return-void
.end method

.method public static synthetic lambda$updateState$2(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onNear(FF)V

    return-void
.end method

.method public static synthetic lambda$updateState$3(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onShow(Z)V

    return-void
.end method


# virtual methods
.method protected enterState(ILjava/lang/Runnable;)V
    .locals 3

    .line 128
    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    if-eq v0, p1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 131
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOnStateChangedListener:Ljava/util/function/BiConsumer;

    if-eqz p2, :cond_0

    .line 132
    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    :cond_1
    return-void
.end method

.method public final exitTopWindowCrop(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 140
    invoke-direct {p0, p0, p1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->exit(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLayoutParamForWindow()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 81
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHeight:I

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 v0, 0x10000000

    .line 90
    invoke-static {v6, v0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    const/16 v0, 0x31

    .line 91
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    .line 92
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "home_smallwindow_crop"

    .line 93
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public final initTopWindowCrop(ZIIZZ)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "initSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    .line 108
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsLandscape:Z

    .line 109
    iput p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mScreenWidth:I

    .line 110
    iput p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mScreenHeight:I

    .line 111
    invoke-virtual {p0, p4, p5}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->initDropTarget(ZZ)V

    return-void
.end method

.method public isInHoverState()Z
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    return v0
.end method

.method public isToHoverState(FFF)Z
    .locals 0

    .line 179
    iget-object p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mHoverBound:Landroid/graphics/RectF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public isToNearState(FFF)Z
    .locals 0

    .line 174
    iget-object p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mNearBound:Landroid/graphics/RectF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->updateTopWindowConfiguration()V

    return-void
.end method

.method public final resetTopWindowCrop()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsInit:Z

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->resetDropTarget()V

    return-void
.end method

.method public setOnStateChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mOnStateChangedListener:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 201
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

    .line 217
    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->sIsSupportStartSmallWithPosition:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mIsLandscape:Z

    if-nez v0, :cond_2

    .line 218
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

    .line 221
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

    .line 224
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

    .line 220
    invoke-static {v4, v5, v6, v8, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 231
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

    .line 234
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

    .line 230
    invoke-static {v0, v4, v5, v6, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public updateState(FFF)V
    .locals 3

    .line 115
    iget v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->mLastCropStatus:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 116
    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$U9qK1b-71It_GnSDPoiw2Z0M9LA;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$U9qK1b-71It_GnSDPoiw2Z0M9LA;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->enterState(ILjava/lang/Runnable;)V

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isToHoverState(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x3

    .line 119
    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$j6F4f1utw2vgoYMHwaxjlHFo8Zs;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V

    invoke-virtual {p0, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->enterState(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isToNearState(FFF)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x2

    .line 121
    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$jNmV3Ks7-WAPh18YliFqFkSeJ3o;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$jNmV3Ks7-WAPh18YliFqFkSeJ3o;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;FF)V

    invoke-virtual {p0, p3, v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->enterState(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 123
    :cond_2
    new-instance p1, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$vWm9_eP9Mgee1uWZX0cVE3zBm2I;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsTopWindowCrop$vWm9_eP9Mgee1uWZX0cVE3zBm2I;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;)V

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->enterState(ILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public updateTopWindowConfiguration()V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->updateDropTargetConfiguration()V

    return-void
.end method
