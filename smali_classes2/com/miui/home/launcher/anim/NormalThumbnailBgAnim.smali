.class public Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;
.super Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.source "NormalThumbnailBgAnim.java"


# instance fields
.field protected final mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field protected mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field protected mBackgroundDragInColor:I

.field protected mBackgroundNormalColor:I

.field private final mBorderLineAnimator:Landroid/animation/ValueAnimator;

.field private mBorderLinePadding:F

.field private final mBorderLinePaint:Landroid/graphics/Paint;

.field private mBorderLineWidth:F

.field private mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field private mBorderlineNormalColor:I

.field private mBorderlineSelectedColor:I

.field private mExternalBorderRadius:F

.field private mExternalThumbnailRadius:F

.field protected mPreType:Lcom/miui/home/launcher/anim/BackgroundType;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;-><init>(Landroid/view/View;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 25
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initColor()V

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initParam()V

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initAnimation()V

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initController()V

    return-void
.end method

.method private getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    .line 87
    sget-object v0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/BackgroundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 95
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0

    .line 91
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    return p0

    .line 89
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    return p0
.end method

.method private initAnimation()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/anim/-$$Lambda$NormalThumbnailBgAnim$azmSEcJONR8b6SRQupualCfWgZA;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$NormalThumbnailBgAnim$azmSEcJONR8b6SRQupualCfWgZA;-><init>(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/-$$Lambda$NormalThumbnailBgAnim$AjjzyLgn2cchpO28V0NYPCH3aDo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$NormalThumbnailBgAnim$AjjzyLgn2cchpO28V0NYPCH3aDo;-><init>(Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initController()V
    .locals 4

    .line 153
    new-instance v0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 154
    new-instance v0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalThumbnailRadius:F

    iget v2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgdPaint(Landroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalBorderRadius:F

    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method private initParam()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalBorderRadius:F

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mExternalThumbnailRadius:F

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePadding:F

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget v6, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLinePadding:F

    neg-float v3, v6

    neg-float v4, v6

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method protected getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    .line 75
    sget-object v0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/BackgroundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 83
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0

    .line 79
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    return p0

    .line 77
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    return p0
.end method

.method protected initColor()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    const v2, 0x7f0600cf

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600d2

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    const v1, 0x7f0600ce

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    const v1, 0x7f0600cc

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineNormalColor:I

    const v1, 0x7f0600d1

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineSelectedColor:I

    const v1, 0x7f0600cd

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundNormalColor:I

    const v1, 0x7f0600cb

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundDragInColor:I

    :goto_0
    return-void
.end method

.method public synthetic lambda$initAnimation$0$NormalThumbnailBgAnim(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateBackgroundColor(F)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateTargetScale(F)V

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic lambda$initAnimation$1$NormalThumbnailBgAnim(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)V

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 2

    .line 56
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p2, p1, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p2, v0, :cond_3

    .line 58
    :cond_1
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v0, 0x2

    if-ne p1, p2, :cond_2

    .line 59
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 60
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 63
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    :cond_3
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p2, v0, :cond_5

    .line 68
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderlineController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->getBorderlineTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 69
    iget-object p2, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    :cond_5
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected updateBackgroundColor(F)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)V

    return-void
.end method

.method public updateColor()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initColor()V

    return-void
.end method

.method public updateTargetScale(F)V
    .locals 1

    const v0, 0x3d6bee00    # 0.05760002f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
