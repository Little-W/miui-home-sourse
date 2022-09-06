.class public Lcom/miui/home/launcher/pageindicators/CaretDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CaretDrawable.java"


# instance fields
.field private mCaretPaint:Landroid/graphics/Paint;

.field private mCaretProgress:F

.field private final mCaretSizePx:I

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretProgress:F

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070059

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f06001b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const p1, 0x7f070058

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretSizePx:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float/2addr v1, v2

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    iget-object v5, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    mul-float/2addr v5, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v4

    :goto_0
    add-float/2addr v3, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v1, v5

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    .line 83
    iget-object v5, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 84
    iget-object v5, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    iget-object v5, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    div-float v4, v0, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v4, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v0

    sub-float/2addr v7, v0

    mul-float/2addr v1, v7

    add-float/2addr v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getCaretProgress()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretSizePx:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretSizePx:I

    return v0
.end method

.method public getNormalizedCaretProgress()F
    .locals 2

    .line 117
    iget v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCaretProgress(F)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretProgress:F

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->invalidateSelf()V

    return-void
.end method
