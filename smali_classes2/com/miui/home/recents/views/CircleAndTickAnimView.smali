.class public Lcom/miui/home/recents/views/CircleAndTickAnimView;
.super Landroid/view/View;
.source "CircleAndTickAnimView.java"


# instance fields
.field private isNormalDrawableShow:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleRotateDegrees:F

.field private mDiameter:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTickDstPath:Landroid/graphics/Path;

.field private mTickEndPoint:F

.field private mTickEndPointAnimator:Landroid/animation/ValueAnimator;

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickPathLength:F

.field private mTickPathMeasure:Landroid/graphics/PathMeasure;

.field private mTickStartPoint:F

.field private mTickStartPointAnimator:Landroid/animation/ValueAnimator;

.field private mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 38
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    .line 40
    new-instance p2, Landroid/graphics/PathMeasure;

    invoke-direct {p2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 41
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 45
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    .line 57
    invoke-direct {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->initAnimator()V

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->initTickPaint(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->stopAnimator()V

    const p1, 0x7f080536

    const p2, 0x7f0800e1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setDrawables(II)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    return p1
.end method

.method static synthetic access$202(Lcom/miui/home/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    return p1
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getIntrinsicHeight()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getIntrinsicWidth()I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
.end method

.method private initAnimator()V
    .locals 4

    const/4 v0, 0x2

    .line 68
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 69
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 70
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/recents/views/CircleAndTickAnimView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView$1;-><init>(Lcom/miui/home/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    .line 80
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 82
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/recents/views/CircleAndTickAnimView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView$2;-><init>(Lcom/miui/home/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/views/CircleAndTickAnimView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView$3;-><init>(Lcom/miui/home/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e9eb852    # 0.31f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initRightMarkPath()V
    .locals 4

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 124
    iget v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v1

    const v3, 0x3e8a3d71    # 0.27f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v1

    const v3, 0x3eeb851f    # 0.46f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    const v3, 0x3f147ae1    # 0.58f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v1

    const v3, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    return-void
.end method

.method private initTickPaint(Landroid/content/Context;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 113
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const v1, 0x7f060374

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public animatorStart(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->stopAnimator()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iget-object p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 198
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/16 v2, 0x11

    .line 233
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    invoke-static {v2, v1, v3, v4, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 234
    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 235
    iget-boolean v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    iget v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 248
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 250
    iget v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    iget v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    mul-float/2addr v1, v0

    .line 251
    iget v2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    mul-float/2addr v0, v2

    .line 252
    iget-object v2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 224
    iget p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    invoke-virtual {p0, p1, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackDrawable(I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawables(II)V
    .locals 1

    .line 170
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setNormalDrawable(I)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setBackDrawable(I)V

    .line 172
    invoke-direct {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getIntrinsicWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getIntrinsicHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    .line 173
    iget-object p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mDiameter:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    invoke-direct {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->initRightMarkPath()V

    return-void
.end method

.method public setNormalDrawable(I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopAnimator()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->stopAnimator(Z)V

    return-void
.end method

.method public stopAnimator(Z)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    .line 187
    iput v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    .line 188
    iput v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/miui/home/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->invalidate()V

    :cond_1
    return-void
.end method
