.class public Lcom/miui/home/launcher/animate/SpreadCircle;
.super Landroid/graphics/drawable/Drawable;
.source "SpreadCircle.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mDuration:J

.field private mMaxRadius:F

.field private mMinRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/animate/SpreadCircle$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/animate/SpreadCircle$1;-><init>(Lcom/miui/home/launcher/animate/SpreadCircle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/animate/SpreadCircle;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mRadius:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/animate/SpreadCircle;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMaxRadius:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/animate/SpreadCircle;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMinRadius:F

    return p0
.end method

.method private setCenterXAndCenterY(FF)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterX:F

    .line 63
    iput p2, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterX:F

    iget v1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterY:F

    iget v2, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mRadius:F

    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDuraton(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mDuration:J

    return-void
.end method

.method public setMaxRadius(F)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMaxRadius:F

    return-void
.end method

.method public setMinRadius(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMinRadius:F

    return-void
.end method

.method public startAnimation(FF)V
    .locals 2

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpreadCircle;->setCenterXAndCenterY(FF)V

    .line 80
    iget p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMaxRadius:F

    iget p2, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mMinRadius:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-wide p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mDuration:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpreadCircle;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterX:F

    float-to-int p2, p2

    iget v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mCenterY:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpreadCircle;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
