.class public Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;
.super Ljava/lang/Object;
.source "WidgetTypeFloatingIconAnimHelper.java"


# instance fields
.field private mForegroundDrawPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V
    .locals 8

    sub-int v6, p3, p2

    sub-int v7, p5, p4

    mul-int p3, v6, v7

    .line 78
    new-array v1, p3, [I

    .line 79
    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([II)V

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v6

    move v4, p2

    move v5, p4

    .line 80
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method


# virtual methods
.method public drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->mForegroundDrawPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 32
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->mForegroundDrawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->mForegroundDrawPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->mForegroundDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->mForegroundDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void
.end method
