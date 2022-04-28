.class public Lcom/mi/globallauncher/util/RoundTransform;
.super Ljava/lang/Object;
.source "RoundTransform.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# instance fields
.field radiusDp:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41e00000    # 28.0f

    .line 16
    iput v0, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41e00000    # 28.0f

    .line 16
    iput v0, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    .line 22
    iput p1, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    const-string v0, "RoundTransform"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/mi/globallauncher/util/RoundTransform;->radiusDp:F

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 36
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFlags(I)V

    sub-int/2addr v0, v3

    .line 38
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v3

    .line 39
    div-int/lit8 v1, v1, 0x2

    .line 40
    new-instance v7, Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v0, v2

    .line 43
    invoke-virtual {v5, v7, v0, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 46
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v5, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method
