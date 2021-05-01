.class public Lcom/miui/home/launcher/ThumbnailContainerBorder;
.super Lcom/miui/home/launcher/AutoLayoutThumbnailItem;
.source "ThumbnailContainerBorder.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field protected argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDragColor:I

.field private mBackgroundNormalColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderLineAnimator:Landroid/animation/ValueAnimator;

.field private mBorderLinePaint:Landroid/graphics/Paint;

.field private mBorderLineWidth:F

.field private mBorderlineNormalColor:I

.field private mBorderlineSelectedColor:I

.field private mExternalBorderRadius:F

.field private mExternalThumbnailRadius:F

.field private mIsCurrentScreen:Z

.field private mIsDragingOver:Z

.field mRect:Landroid/graphics/Rect;

.field mRectFBackground:Landroid/graphics/RectF;

.field mRectFBorderLine:Landroid/graphics/RectF;

.field mRectTemp:Landroid/graphics/Rect;

.field private mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalBorderRadius:F

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalThumbnailRadius:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mIsDragingOver:Z

    .line 27
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 28
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    .line 106
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectTemp:Landroid/graphics/Rect;

    .line 107
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBackground:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBorderLine:Landroid/graphics/RectF;

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateColor()V

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->initPaint()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->initAnimation()V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalBorderRadius:F

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalThumbnailRadius:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ThumbnailContainerBorder;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundNormalColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ThumbnailContainerBorder;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundDragColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ThumbnailContainerBorder;)Landroid/graphics/Paint;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private initAnimation()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;-><init>(Lcom/miui/home/launcher/ThumbnailContainerBorder;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ThumbnailContainerBorder$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder$2;-><init>(Lcom/miui/home/launcher/ThumbnailContainerBorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundNormalColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 117
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 118
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    .line 119
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 116
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBackground:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    sub-float/2addr v4, v0

    .line 122
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 123
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    div-float/2addr v7, v2

    sub-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 124
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 121
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBorderLine:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBackground:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalThumbnailRadius:F

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    sub-float v4, v1, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mRectFBorderLine:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mExternalBorderRadius:F

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    div-float v4, v3, v2

    sub-float v4, v1, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getBorderLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected getBorderlineSelectedColor()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineSelectedColor:I

    return v0
.end method

.method public getThumbnailContainer()Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->onFinishInflate()V

    const v0, 0x7f0a01d2

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateColor()V

    return-void
.end method

.method protected setBorderlineSelectedColor(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineSelectedColor:I

    return-void
.end method

.method public setIsCurrentScreen(ZZ)V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mIsCurrentScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mIsCurrentScreen:Z

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-nez p2, :cond_3

    .line 143
    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineSelectedColor:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineNormalColor:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->invalidate()V

    goto :goto_3

    :cond_3
    const/4 p2, 0x2

    if-eqz p1, :cond_4

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 151
    :goto_2
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
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

.method public setOnDragOverScreen(Z)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mIsDragingOver:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mIsDragingOver:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

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

.method protected updateBorderLineColor(F)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineNormalColor:I

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineSelectedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 89
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected updateColor()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineNormalColor:I

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->setBorderlineSelectedColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundNormalColor:I

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundDragColor:I

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBorderlineNormalColor:I

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->setBorderlineSelectedColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundNormalColor:I

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundDragColor:I

    :goto_0
    return-void
.end method
