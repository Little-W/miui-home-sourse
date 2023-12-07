.class public Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;
.super Landroid/animation/ValueAnimator;
.source "ParasiticDrawingFireworks.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ParasiticDrawingObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SPARK_INIT_SIZE:F

.field private static final SPARK_MAX_SIZE:F

.field private static final SPARK_MIN_SIZE:F

.field private static final SPARK_START_POS_OFFSET:F


# instance fields
.field private mArea:Landroid/graphics/Rect;

.field private mHost:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mSparks:[Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_INIT_SIZE:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_MIN_SIZE:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 27
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_MAX_SIZE:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_START_POS_OFFSET:F

    .line 31
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 10

    .line 68
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xe1

    new-array v0, v0, [Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    .line 70
    iput-object v0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mSparks:[Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    .line 72
    new-instance p3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x11

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x11

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    .line 77
    iget-object v6, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mSparks:[Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    mul-int/lit8 v7, v3, 0xf

    add-int/2addr v7, v5

    add-int/lit8 v5, v5, 0x1

    mul-int v8, v5, v0

    add-int/lit8 v9, v3, 0x1

    mul-int/2addr v9, v1

    .line 78
    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 77
    invoke-direct {p0, v8, p3}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->generateSpark(ILjava/util/Random;)Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mHost:Landroid/view/View;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 83
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setFloatValues([F)V

    .line 84
    sget-object p1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method static synthetic access$000()F
    .locals 1

    .line 15
    sget v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_INIT_SIZE:F

    return v0
.end method

.method private generateSpark(ILjava/util/Random;)Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;
    .locals 5

    .line 94
    new-instance v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;-><init>(Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$1;)V

    .line 95
    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->color:I

    .line 96
    sget p1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_INIT_SIZE:F

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->r:F

    .line 97
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 99
    sget p1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_INIT_SIZE:F

    sget v2, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_MAX_SIZE:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->ri:F

    goto :goto_0

    .line 101
    :cond_0
    sget p1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_MIN_SIZE:F

    sget v2, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_INIT_SIZE:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->ri:F

    .line 103
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    .line 104
    iget-object v2, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e3851eb    # 0.17999999f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    mul-float/2addr v2, v4

    iput v2, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 105
    iget v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    iget v4, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    mul-float/2addr v4, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v4, v1

    add-float v1, v3, v4

    :goto_1
    iput v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    if-gez v2, :cond_2

    .line 107
    iget p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    goto :goto_3

    :cond_2
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    iget p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    const v1, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_3
    iget p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    const v1, 0x3e99999a    # 0.3f

    :goto_2
    mul-float/2addr p1, v1

    :goto_3
    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 108
    iget v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->v:F

    mul-float/2addr v1, p1

    iget p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    div-float/2addr v1, p1

    iput v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->b:F

    .line 109
    iget p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->b:F

    neg-float p1, p1

    iget v1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    div-float/2addr p1, v1

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->a:F

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_START_POS_OFFSET:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->xi:F

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->x:F

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    sget p1, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->SPARK_START_POS_OFFSET:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v4

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    iput p0, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->yi:F

    iput p0, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->y:F

    const p0, 0x3e0f5c29    # 0.14f

    .line 112
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->sdelay:F

    const p0, 0x3ecccccd    # 0.4f

    .line 113
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->edelay:F

    const/high16 p0, 0x3f800000    # 1.0f

    .line 114
    iput p0, v0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->alpha:F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mSparks:[Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->update(F)V

    .line 123
    iget v4, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->alpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v4, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget v4, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->x:F

    iget v5, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->y:F

    iget v3, v3, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->r:F

    iget-object v6, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public start()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mHost:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->mArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
