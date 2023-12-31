.class public Lcom/miui/maml/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML-BitmapUtils"

.field private static final sAlphaThreshold:I = 0x32

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sColorByteSize:I = 0x4

.field private static volatile sCutPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/maml/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 38
    sget-object v0, Lcom/miui/maml/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p1

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    div-int/lit8 v13, v2, 0x4

    .line 124
    new-array v14, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move v4, v13

    move v7, v11

    move v8, v12

    .line 125
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 130
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object v1, v10

    move/from16 v17, v12

    move-object v12, v10

    move-object/from16 v10, v16

    .line 133
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    .line 137
    sget-object v1, Lcom/miui/maml/util/BitmapUtils;->sCutPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 138
    const-class v1, Lcom/miui/maml/util/BitmapUtils;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v2, Lcom/miui/maml/util/BitmapUtils;->sCutPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 141
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    sput-object v2, Lcom/miui/maml/util/BitmapUtils;->sCutPaint:Landroid/graphics/Paint;

    .line 144
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_1
    :goto_0
    sget-object v1, Lcom/miui/maml/util/BitmapUtils;->sCutPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object v1, v14

    move v3, v13

    move v6, v11

    move/from16 v7, v17

    .line 147
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    .line 148
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, v14

    move v3, v13

    move v6, v11

    move/from16 v7, v17

    .line 152
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-object v15
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 45
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 47
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static drawableToBitmapWithoutBlank(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 54
    sget-object v0, Lcom/miui/maml/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 57
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 58
    instance-of v4, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_0

    .line 59
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 60
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 61
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 62
    :cond_0
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 64
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    .line 67
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_1

    .line 68
    iget v6, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v6, :cond_2

    .line 69
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 70
    invoke-static {p0}, Lcom/miui/maml/util/BitmapUtils;->getScaleRatio(Landroid/graphics/drawable/Drawable;)F

    move-result p1

    const-string v4, "MAML-BitmapUtils"

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapDensity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  setTargetDensity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    .line 75
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    const/4 p2, 0x0

    .line 83
    invoke-virtual {p0, p2, p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 87
    sget-object v3, Lcom/miui/maml/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 88
    invoke-virtual {v3, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v1

    mul-float v4, v1, p1

    sub-float/2addr v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    .line 90
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 92
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    const/4 p0, 0x0

    .line 95
    invoke-virtual {v3, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getBitmapFromDrawable(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 102
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 104
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    if-nez p1, :cond_1

    instance-of p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported drawable type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_1
    :goto_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 107
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private static getBuffer(Landroid/graphics/Bitmap;)[B
    .locals 13

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MAML-BitmapUtils"

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 217
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    div-int/lit8 v7, v5, 0x4

    .line 222
    :try_start_0
    new-array v12, v4, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v12

    move v10, v0

    move v11, v3

    .line 223
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    new-array v2, p0, [B

    const/4 p0, 0x0

    .line 226
    :goto_0
    array-length v4, v12

    if-ge p0, v4, :cond_1

    mul-int/lit8 v4, p0, 0x4

    add-int/lit8 v5, v4, 0x3

    .line 228
    aget v6, v12, p0

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 229
    aget v5, v12, p0

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v5, v4, 0x1

    .line 230
    aget v6, v12, p0

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x2

    .line 231
    aget v5, v12, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get buffer, baseWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", baseHeight = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 238
    :cond_0
    :try_start_1
    const-class v0, Landroid/graphics/Bitmap;

    const-string v3, "mBuffer"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p0

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "failed to get Bitmap.mBuffer"

    .line 244
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    const-string v0, "get Bitmap.mBuffer failed!"

    .line 242
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v2
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 17

    move-object/from16 v0, p0

    .line 176
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    return v2

    .line 180
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_1

    return v2

    .line 186
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 187
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    .line 189
    invoke-static {v1}, Lcom/miui/maml/util/BitmapUtils;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v12, "MAML-BitmapUtils"

    if-eqz v1, :cond_5

    .line 190
    array-length v5, v1

    const/4 v13, 0x1

    if-ge v5, v13, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    move v5, v3

    move v6, v4

    move v7, v11

    move-object v8, v1

    .line 194
    invoke-static/range {v5 .. v10}, Lcom/miui/maml/util/BitmapUtils;->getEdgePosition(III[BZZ)I

    move-result v14

    const/4 v10, 0x1

    .line 195
    invoke-static/range {v5 .. v10}, Lcom/miui/maml/util/BitmapUtils;->getEdgePosition(III[BZZ)I

    move-result v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 196
    invoke-static/range {v5 .. v10}, Lcom/miui/maml/util/BitmapUtils;->getEdgePosition(III[BZZ)I

    move-result v10

    const/16 v16, 0x1

    move v1, v10

    move/from16 v10, v16

    .line 197
    invoke-static/range {v5 .. v10}, Lcom/miui/maml/util/BitmapUtils;->getEdgePosition(III[BZZ)I

    move-result v3

    if-ltz v14, :cond_4

    if-ltz v15, :cond_4

    if-ltz v1, :cond_4

    if-gez v3, :cond_3

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v3, v1

    add-int/2addr v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v15, v14

    add-int/2addr v15, v13

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v1

    div-float/2addr v0, v2

    .line 209
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 199
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentRatio fail, edge invalid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_1
    const-string v0, "getContentRatio fail pixels invalid."

    .line 191
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static getEdgePosition(III[BZZ)I
    .locals 8

    const/4 v0, -0x1

    if-nez p5, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-nez p5, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    const/4 v3, 0x1

    if-eqz p5, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz p3, :cond_a

    const/4 p5, 0x0

    move v3, v2

    move v2, v1

    move v1, p5

    :cond_4
    if-nez v1, :cond_b

    const/16 v5, 0x32

    if-eqz p4, :cond_7

    add-int/2addr v3, v0

    if-ltz v3, :cond_b

    if-lt v3, p1, :cond_5

    goto :goto_6

    :cond_5
    move v2, p5

    :goto_4
    if-ge v2, p0, :cond_4

    mul-int v6, v3, p2

    shl-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    .line 264
    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    if-le v6, v5, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v2, v4

    if-ltz v2, :cond_b

    if-lt v2, p0, :cond_8

    goto :goto_6

    :cond_8
    move v3, p5

    :goto_5
    if-ge v3, p1, :cond_4

    mul-int v6, v3, p2

    shl-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    .line 272
    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    if-le v6, v5, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v2

    move v2, v1

    :cond_b
    :goto_6
    if-eqz p4, :cond_c

    move v2, v3

    :cond_c
    return v2
.end method

.method public static getScaleRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 3

    .line 158
    instance-of v0, p0, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v0, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {p0}, Lcom/miui/maml/util/BitmapUtils;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result p0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content Ratio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAML-BitmapUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    return p0

    :cond_2
    :goto_0
    return v1
.end method
