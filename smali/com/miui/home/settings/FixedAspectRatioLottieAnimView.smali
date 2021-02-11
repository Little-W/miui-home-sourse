.class public Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "FixedAspectRatioLottieAnimView.java"


# instance fields
.field private mAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v0, Lcom/miui/home/R$styleable;->AspectRatioLottieAnimView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setRepeatCount(I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->playAnimation()V

    return-void
.end method

.method private setAspectRatio(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->mAspectRatio:F

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 31
    iget v0, p0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->mAspectRatio:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setMeasuredDimension(II)V

    return-void
.end method
