.class public Lcom/miui/home/launcher/common/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/HolographicOutlineHelper;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702e1

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 53
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/common/HolographicOutlineHelper;
    .locals 1

    .line 58
    sget-object v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->sInstance:Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->sInstance:Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    .line 61
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->sInstance:Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    return-object p0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_4

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v9, v2, [B

    .line 76
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 77
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 78
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v11, 0x0

    move v2, v11

    .line 80
    :goto_0
    array-length v3, v9

    const/4 v12, -0x1

    if-ge v2, v3, :cond_1

    .line 81
    aget-byte v3, v9, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_0

    .line 82
    aput-byte v11, v9, v2

    goto :goto_1

    .line 84
    :cond_0
    aput-byte v12, v9, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 92
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    .line 93
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    iget-object v2, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    .line 95
    new-array v13, v2, [I

    .line 96
    iget-object v2, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 99
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    aget v2, v13, v11

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v15, 0x1

    aget v3, v13, v15

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    aget v2, v13, v11

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    iget-object v7, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    aget v2, v13, v15

    neg-int v2, v2

    int-to-float v6, v2

    iget-object v7, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    aget v2, v13, v11

    int-to-float v2, v2

    aget v3, v13, v15

    int-to-float v3, v3

    iget-object v4, v0, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 110
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 111
    :goto_2
    array-length v2, v9

    if-ge v11, v2, :cond_3

    .line 112
    aget-byte v2, v9, v11

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_2

    .line 113
    aput-byte v12, v9, v11

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 118
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 121
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 70
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Outline blue is only supported on alpha bitmaps"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
