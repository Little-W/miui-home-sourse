.class public Lcom/miui/home/launcher/widget/NoSpaceToast;
.super Landroid/widget/TextView;
.source "NoSpaceToast.java"


# instance fields
.field private AUTO_FADE_OUT_DELAY:J

.field private FADE_IN_DURATION:J

.field private FADE_OUT_DURATION:J

.field private mAutoFadeOutRunnable:Ljava/lang/Runnable;

.field private mFadingIn:Z

.field private mMarginBottom:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p1, 0x1f4

    .line 20
    iput-wide p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->AUTO_FADE_OUT_DELAY:J

    const-wide/16 p1, 0x12c

    .line 21
    iput-wide p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->FADE_IN_DURATION:J

    const-wide/16 p1, 0x96

    .line 22
    iput-wide p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->FADE_OUT_DURATION:J

    .line 52
    new-instance p1, Lcom/miui/home/launcher/widget/NoSpaceToast$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/widget/NoSpaceToast$3;-><init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mAutoFadeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/NoSpaceToast;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mAutoFadeOutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/NoSpaceToast;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mFadingIn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/widget/NoSpaceToast;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->AUTO_FADE_OUT_DELAY:J

    return-wide v0
.end method


# virtual methods
.method public move(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setTranslationX(F)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mMarginBottom:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setTranslationY(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 30
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070321

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mMarginBottom:F

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/widget/NoSpaceToast$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/NoSpaceToast$1;-><init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/widget/NoSpaceToast$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/NoSpaceToast$2;-><init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public show(Z)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mAutoFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->FADE_IN_DURATION:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    iput-boolean v1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mFadingIn:Z

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->FADE_OUT_DURATION:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iput-boolean v2, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mFadingIn:Z

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
