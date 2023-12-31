.class public Lcom/mi/globallauncher/view/CircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircleImageView.java"


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private installed:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    .line 38
    iget-object p0, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    const p1, -0x2c2923

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    .line 38
    iget-object p0, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    const p1, -0x2c2923

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    .line 38
    iget-object p0, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    const p1, -0x2c2923

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 82
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 83
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 88
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method


# virtual methods
.method public isInstalled(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/mi/globallauncher/view/CircleImageView;->installed:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, v0}, Lcom/mi/globallauncher/view/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 58
    iget v2, p0, Lcom/mi/globallauncher/view/CircleImageView;->mRadius:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/mi/globallauncher/view/CircleImageView;->mScale:F

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 60
    iget v2, p0, Lcom/mi/globallauncher/view/CircleImageView;->mScale:F

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 62
    iget-object v0, p0, Lcom/mi/globallauncher/view/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    iget-boolean v0, p0, Lcom/mi/globallauncher/view/CircleImageView;->installed:Z

    const/high16 v1, 0x3fc00000    # 1.5f

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/mi/globallauncher/view/CircleImageView;->mRadius:I

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-static {v1}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/mi/globallauncher/view/CircleImageView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/mi/globallauncher/view/CircleImageView;->mRadius:I

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-static {v1}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/mi/globallauncher/view/CircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/CircleImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/CircleImageView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 46
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/mi/globallauncher/view/CircleImageView;->mRadius:I

    .line 47
    invoke-virtual {p0, p1, p1}, Lcom/mi/globallauncher/view/CircleImageView;->setMeasuredDimension(II)V

    return-void
.end method
