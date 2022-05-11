.class public Lcom/miui/home/settings/IconSizeSeekBar;
.super Lmiuix/androidbasewidget/widget/SeekBar;
.source "IconSizeSeekBar.java"


# instance fields
.field private mMiddle:Z

.field private mMiddlePoint:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointsRadius:F

.field private mSmallPointColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddle:Z

    .line 28
    invoke-direct {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/16 v0, 0x3e8

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/IconSizeSeekBar;->setMax(I)V

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    sub-float/2addr v0, v1

    const v1, 0x39d1b719    # 4.0000005E-4f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/IconSizeSeekBar;->setProgress(I)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mSmallPointColor:I

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointsRadius:F

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setMiddlePoint(FI)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddlePoint:I

    .line 71
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddle:Z

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getMax()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddlePoint:I

    .line 77
    iget p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddlePoint:I

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconSizeSeekBar;->setProgress(I)V

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddle:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentSetIconSizeValue()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x39d1b719    # 4.0000005E-4f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mSmallPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getMax()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/IconSizeSeekBar;->setMiddlePoint(FI)V

    .line 51
    iget-boolean v0, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mMiddle:Z

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointsRadius:F

    iget-object v3, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 61
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/settings/IconSizeSeekBar;->setMiddlePoint(FI)V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
