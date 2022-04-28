.class abstract Lcom/miui/home/launcher/search/SearchEdgeEffect;
.super Ljava/lang/Object;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;,
        Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    }
.end annotation


# static fields
.field public static BOTTOM:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position; = null

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_REDUCE:I = 0x2

.field private static final STATE_REVEAL:I = 0x3

.field private static final TIME:I = 0xc8

.field public static TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position; = null

.field private static final VELOCITY:I = 0x640


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleScale:F

.field private mCurveAlpha:F

.field private mCurveBottom:F

.field private mCurveBottomOffset:F

.field private final mCurvePaint:Landroid/graphics/Paint;

.field private final mCurvePath:Landroid/graphics/Path;

.field private mCurveTop:F

.field private mCurveTopLimit:F

.field private mDistance:F

.field private mDistanceLimit:F

.field mHeight:I

.field private mIconAlpha:F

.field private mIconColor:I

.field private mIconColorReady:I

.field private mIconSize:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

.field private mScale:F

.field private mSearchDrawable:Landroid/graphics/drawable/Drawable;

.field private mState:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    .line 100
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->BOTTOM:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColor:I

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColorReady:I

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060396

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    const v1, 0x7f060360

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->getDrawableResource()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    .line 146
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setSize(II)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/search/SearchEdgeEffect;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/search/SearchEdgeEffect;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    return p1
.end method

.method private animCurve(ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 9

    .line 305
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "CurveTop"

    const/4 v2, 0x2

    .line 306
    new-array v3, v2, [F

    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mHeight:I

    int-to-float v6, v6

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "CurveBottom"

    .line 307
    new-array v6, v2, [F

    iget v8, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    aput v8, v6, v5

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mHeight:I

    int-to-float v4, p1

    :cond_1
    aput v4, v6, v7

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 308
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    aput-object p1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xc8

    .line 310
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 311
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private animReduce()V
    .locals 2

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->cancelAnimator()V

    .line 273
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$3;-><init>(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->animCurve(ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private animReveal()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->cancelAnimator()V

    .line 284
    new-instance v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$4;-><init>(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->animCurve(ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private onDraw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 160
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->update()V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mWidth:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    iget v5, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    sub-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    int-to-float v1, v1

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 170
    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconSize:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mScale:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 173
    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;->getDrawRotate()F

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 174
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->drawIcon(Landroid/graphics/Canvas;II)V

    .line 175
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 177
    iget p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private update()V
    .locals 6

    .line 195
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 209
    :pswitch_0
    iput v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    .line 210
    iput v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconAlpha:F

    .line 211
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mScale:F

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveAlpha:F

    goto :goto_1

    .line 205
    :pswitch_1
    iput v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    .line 206
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mScale:F

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveAlpha:F

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconAlpha:F

    goto :goto_1

    .line 197
    :pswitch_2
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistance:F

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistanceLimit:F

    div-float/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 198
    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 199
    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottomOffset:F

    mul-float v4, v3, v0

    iput v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    .line 200
    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    iget v5, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    .line 201
    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    cmpl-float v4, v0, v2

    if-ltz v4, :cond_0

    const v4, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v4, -0x41b33333    # -0.2f

    :goto_0
    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    .line 202
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mScale:F

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveAlpha:F

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconAlpha:F

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract canShowEffect()Z
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;->getDrawRotate()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 154
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDraw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 155
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 181
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x437f0000    # 255.0f

    if-lez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v0, p2

    int-to-float v2, p3

    .line 183
    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconSize:F

    iget v5, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 185
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 186
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconSize:F

    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 187
    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mSearchDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v0, v0, 0x2

    sub-int v4, p2, v0

    sub-int v5, p3, v0

    add-int/2addr p2, v0

    add-int/2addr p3, v0

    invoke-virtual {v2, v4, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mSearchDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCircleScale:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    iget p3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColorReady:I

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColor:I

    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 189
    iget-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mSearchDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconAlpha:F

    mul-float/2addr p3, v3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    iget-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mSearchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method finish()V
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->cancelAnimator()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistance:F

    .line 255
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    .line 256
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    return-void
.end method

.method abstract getDrawableResource()I
.end method

.method public getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    return-object v0
.end method

.method isFinish()Z
    .locals 1

    .line 261
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDarkModeChanged(Z)V
    .locals 2

    .line 348
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060397

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColor:I

    .line 349
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060398

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconColorReady:I

    .line 350
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurvePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f060360

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onPull(FI)V
    .locals 2

    .line 228
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->cancelAnimator()V

    const/4 v0, 0x1

    .line 232
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;->getDeltaDistance(F)F

    move-result p1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 234
    iget p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistanceLimit:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistance:F

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onRelease(I)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;->getVelocity(I)I

    move-result p1

    .line 239
    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    iget v1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    const/16 v0, 0x640

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 246
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->animReduce()V

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 241
    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mState:I

    .line 242
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->animReveal()V

    :cond_2
    :goto_1
    return-void
.end method

.method abstract open()V
.end method

.method public setCurveBottom(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 323
    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottom:F

    return-void
.end method

.method public setCurveTop(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 318
    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTop:F

    return-void
.end method

.method setSize(II)V
    .locals 2

    .line 217
    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mWidth:I

    .line 218
    iput p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mHeight:I

    int-to-float p1, p2

    const/high16 p2, 0x41a00000    # 20.0f

    div-float/2addr p1, p2

    .line 219
    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconSize:F

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mPosition:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    iget p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mIconSize:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;->getCurveLimitAndOffset(FF)Landroid/util/Pair;

    move-result-object p1

    .line 222
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveTopLimit:F

    .line 223
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mCurveBottomOffset:F

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->mDistanceLimit:F

    return-void
.end method
