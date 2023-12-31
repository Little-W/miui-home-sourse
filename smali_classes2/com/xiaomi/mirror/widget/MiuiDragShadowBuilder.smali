.class public Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MiuiDragShadowBuilder"


# instance fields
.field private mAlpha:F

.field private mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

.field private mBound:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDest:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/xiaomi/mirror/opensdk/R$style;->MiuiDragShadowStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAlpha:F

    iput-object p1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    invoke-direct {p2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p3, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailShadowLayerRadius:I

    const/16 p4, 0x96

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerRadius:I

    iget-object p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p3, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailShadowLayerX:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerX:I

    iget-object p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p3, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailShadowLayerY:I

    const/16 p4, 0x12

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerY:I

    iget-object p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p3, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailShadowLayerColor:I

    const/high16 p4, 0x29000000

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerColor:I

    iget-object p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p3, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailCountOutColor:I

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailCountOutColor:I

    iget-object p0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    sget p2, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow_thumbnailCountInColor:I

    const p3, -0xf27b01

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailCountInColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private computeIfNeeded()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v4, v2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerRadius:I

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    iget v2, v2, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerX:I

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v4, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerY:I

    iget v4, v4, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerRadius:I

    sub-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v4, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerX:I

    add-int/2addr v6, v0

    iget v4, v4, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerRadius:I

    add-int/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerY:I

    add-int/2addr v4, v1

    iget p0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerRadius:I

    add-int/2addr v4, p0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v5, v2, v3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public build()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-direct {p0}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->computeIfNeeded()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v6, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailShadowLayerColor:I

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mThumb:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mCount:I

    if-le v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mCount:I

    const/16 v4, 0xa

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v3}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v7, v7, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v6}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, v6}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v4, v7, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42380000    # 46.0f

    invoke-virtual {p0, v4, v9}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v3}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v7, v7, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v10, 0x42300000    # 44.0f

    invoke-virtual {p0, v9, v10}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, v6}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v4, v7, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {p0, v0, v4}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v7, v7, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v8}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {p0, v7, v9}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v6}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v0, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v0, "99+"

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    neg-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v6, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailCountOutColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v5}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v5}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v2, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v6, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailCountInColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {p0, v6, v7}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v9, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v7}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v3, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAttrs:Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;

    iget v6, v6, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder$Attributes;->thumbnailCountOutColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v5}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->dp2px(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4, v0, v1, p0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p0, v1

    sub-float/2addr p0, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, p0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->computeIfNeeded()V

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mDest:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object p0, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mBound:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mAlpha:F

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mCount:I

    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/widget/MiuiDragShadowBuilder;->mThumb:Landroid/graphics/Bitmap;

    return-void
.end method
