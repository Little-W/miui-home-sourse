.class public Lcom/miui/home/library/utils/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/Graphics$CropOption;
    }
.end annotation


# direct methods
.method private static between(III)I
    .locals 0

    .line 105
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/miui/home/library/utils/Graphics$CropOption;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez p2, :cond_0

    .line 54
    new-instance v2, Lcom/miui/home/library/utils/Graphics$CropOption;

    invoke-direct {v2}, Lcom/miui/home/library/utils/Graphics$CropOption;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 57
    :goto_0
    iget-object v3, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 59
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v5

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v8

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v3}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v3

    sub-int v9, v7, v5

    sub-int v10, v3, v8

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    invoke-static {v4, v13, v14}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v13

    iput v13, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    .line 71
    div-int/lit8 v13, v11, 0x2

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->rx:I

    invoke-static {v4, v13, v14}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v13

    iput v13, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->rx:I

    .line 72
    div-int/lit8 v13, v12, 0x2

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->ry:I

    invoke-static {v4, v13, v14}, Lcom/miui/home/library/utils/Graphics;->between(III)I

    move-result v13

    iput v13, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->ry:I

    .line 73
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 74
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 77
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 79
    iget v4, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->rx:I

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_2

    iget v4, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->ry:I

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int/2addr v4, v14

    if-lez v4, :cond_2

    .line 80
    new-instance v4, Landroid/graphics/RectF;

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    int-to-float v14, v14

    iget v15, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    int-to-float v15, v15

    iget v1, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int v1, v11, v1

    int-to-float v1, v1

    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int v0, v12, v0

    int-to-float v0, v0

    invoke-direct {v4, v14, v15, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->rx:I

    iget v1, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->ry:I

    iget v14, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v6, v4, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    :cond_2
    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v11, v0

    .line 85
    iget v1, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v12, v1

    int-to-float v4, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v14, v4, v9

    int-to-float v0, v0

    div-float/2addr v14, v0

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v1, v1

    div-float/2addr v9, v1

    .line 86
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v0, v9

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    float-to-int v4, v4

    mul-float/2addr v1, v9

    sub-float/2addr v10, v1

    div-float/2addr v10, v0

    float-to-int v0, v10

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v8, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v0

    invoke-direct {v1, v5, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    iget v4, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    iget v5, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int v5, v11, v5

    iget v7, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    sub-int v7, v12, v7

    invoke-direct {v0, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v3, p0

    .line 91
    invoke-virtual {v6, v3, v1, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderWidth:I

    if-lez v0, :cond_3

    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_3

    .line 93
    iget v0, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->borderColor:I

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v11

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->rx:I

    int-to-float v1, v1

    iget v2, v2, Lcom/miui/home/library/utils/Graphics$CropOption;->ry:I

    int-to-float v2, v2

    invoke-virtual {v6, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    return-object p1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .locals 17

    move-object/from16 v0, p0

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int v1, v1, p1

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v2, v2, p1

    mul-int v3, v2, v1

    .line 112
    div-int/lit8 v3, v3, 0x5

    .line 113
    invoke-static {v0, v2, v1}, Lcom/miui/home/library/utils/Graphics;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v7, v5

    move v5, v6

    move v8, v5

    :goto_0
    if-ge v5, v2, :cond_3

    move v9, v7

    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_2

    .line 118
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    const/high16 v11, 0xff0000

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x10

    const v12, 0xff00

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v11, v11

    float-to-double v13, v11

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    int-to-float v11, v12

    float-to-double v11, v11

    const-wide v15, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v11, v15

    add-double/2addr v13, v11

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide v15, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v10, v15

    add-double/2addr v13, v10

    double-to-int v10, v13

    const/16 v11, 0xb4

    if-ge v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_0

    const/4 v9, 0x1

    :cond_0
    mul-int/lit8 v10, v3, 0x2

    if-le v8, v10, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v9

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v0, :cond_4

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return v7
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    :try_start_0
    new-instance v1, Lmiuix/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiuix/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-static {v1}, Lcom/miui/home/library/utils/Graphics;->getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v1}, Lmiuix/io/ResettableInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V

    .line 39
    :cond_0
    throw p0
.end method

.method public static getBitmapSize(Lmiuix/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 45
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 47
    check-cast v1, Landroid/graphics/Rect;

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 157
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Lcom/miui/home/library/utils/Graphics;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 174
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 176
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
