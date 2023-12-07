.class public Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;
.super Landroid/view/View;


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mTextBoundRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDensity:F

    const v0, -0x919192

    iput v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColor:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mTextBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDensity:F

    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    new-instance v5, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mAlphaPattern:Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    iget-object v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mAlphaPattern:Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    iget-object v6, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v6, 0x41c80000    # 25.0f

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mAlphaPattern:Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mAlphaPattern:Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    invoke-virtual {v4, p1}, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "new"

    if-ne v4, v5, :cond_1

    const-string v0, "Apply"

    :goto_0
    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mTextBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mTextBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :cond_1
    const-string v0, "Cancel"

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->setUpColorRect()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {p0}, Landroidx/preference/MiuiColorPicker/ColorPickerPanelView;->invalidate()V

    return-void
.end method
