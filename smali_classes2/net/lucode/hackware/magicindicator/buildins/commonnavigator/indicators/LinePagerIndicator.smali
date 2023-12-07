.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;
.super Landroid/view/View;

# interfaces
.implements Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;


# instance fields
.field private mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEndInterpolator:Landroid/view/animation/Interpolator;

.field private mLineHeight:F

.field private mLineRect:Landroid/graphics/RectF;

.field private mLineWidth:F

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field private mRoundRadius:F

.field private mStartInterpolator:Landroid/view/animation/Interpolator;

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineHeight:F

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p1, v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    return-void
.end method


# virtual methods
.method public getColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    return-object p0
.end method

.method public getEndInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getLineHeight()F
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineHeight:F

    return p0
.end method

.method public getLineWidth()F
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mMode:I

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getRoundRadius()F
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mRoundRadius:F

    return p0
.end method

.method public getStartInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getXOffset()F
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    return p0
.end method

.method public getYOffset()F
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mYOffset:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mRoundRadius:F

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPositionDataList:Ljava/util/List;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, p3, v0}, Lnet/lucode/hackware/magicindicator/buildins/ArgbEvaluatorHolder;->eval(FII)I

    move-result p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPositionDataList:Ljava/util/List;

    invoke-static {p3, p1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->getImitativePositionData(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    move-result-object p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPositionDataList:Ljava/util/List;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->getImitativePositionData(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    move-result-object p1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mMode:I

    if-nez v0, :cond_2

    iget v0, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    add-float/2addr v0, v1

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    add-float/2addr v1, v2

    iget p3, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    int-to-float p3, p3

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    sub-float/2addr p3, v2

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    int-to-float p1, p1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    :goto_0
    sub-float/2addr p1, v2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    iget v0, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    add-float/2addr v0, v1

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    int-to-float v1, v1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    add-float/2addr v1, v2

    iget p3, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    int-to-float p3, p3

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    sub-float/2addr p3, v2

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    int-to-float p1, p1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    goto :goto_0

    :cond_3
    iget v0, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v3, v3

    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result p3

    int-to-float p3, p3

    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    add-float/2addr p3, v4

    div-float/2addr p3, v2

    add-float/2addr p3, v3

    iget v3, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    add-float/2addr p1, v4

    div-float/2addr p1, v2

    add-float/2addr p1, v3

    :goto_1
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    sub-float/2addr v1, v0

    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    iput p3, v0, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineHeight:F

    sub-float/2addr p2, p3

    iget p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mYOffset:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mYOffset:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->invalidate()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onPositionDataProvide(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mPositionDataList:Ljava/util/List;

    return-void
.end method

.method public varargs setColors([Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mColors:Ljava/util/List;

    return-void
.end method

.method public setEndInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mEndInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setLineHeight(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineHeight:F

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mLineWidth:F

    return-void
.end method

.method public setMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mMode:I

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mRoundRadius:F

    return-void
.end method

.method public setStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setXOffset(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mXOffset:F

    return-void
.end method

.method public setYOffset(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->mYOffset:F

    return-void
.end method
