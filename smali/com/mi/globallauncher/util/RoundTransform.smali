.class public Lcom/mi/globallauncher/util/RoundTransform;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# instance fields
.field radiusDp:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    iput p1, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 0

    const-string p0, "RoundTransform"

    return-object p0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFlags(I)V

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-instance v6, Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p0, p0

    invoke-virtual {v4, v6, p0, p0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method
