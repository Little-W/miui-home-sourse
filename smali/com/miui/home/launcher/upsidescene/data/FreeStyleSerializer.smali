.class public Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;
.super Ljava/lang/Object;
.source "FreeStyleSerializer.java"

# interfaces
.implements Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$_lancet;
    }
.end annotation


# static fields
.field public static final DATA_PATH:Ljava/lang/String; = "/data/system/theme/com.miui.home.freestyle"

.field private static final sSpriteIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/home/launcher/upsidescene/data/Sprite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeStyleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->sSpriteIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static calcSize(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static decodeBitmapFromFile(Ljava/util/HashMap;FLmiui/util/FileAccessable;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lmiui/util/FileAccessable;",
            "Landroid/graphics/Bitmap;",
            ">;F",
            "Lmiui/util/FileAccessable;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 544
    :cond_0
    new-instance v0, Lmiui/util/InputStreamLoader;

    invoke-direct {v0, p2}, Lmiui/util/InputStreamLoader;-><init>(Lmiui/util/FileAccessable;)V

    .line 545
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 546
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 547
    invoke-interface {p2}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    .line 548
    invoke-static {v3, v4, v1}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 549
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 550
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result v3

    .line 551
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result p1

    const/4 v1, 0x0

    .line 553
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v4

    const v5, 0x3f2aaaab

    if-eqz v4, :cond_1

    mul-int v4, v3, p1

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    if-le v4, v6, :cond_1

    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v3, v1

    int-to-float p1, p1

    mul-float/2addr p1, v5

    float-to-int p1, p1

    move v1, v2

    .line 559
    :cond_1
    invoke-static {v0, v3, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2
    if-eqz p0, :cond_3

    .line 563
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method private static getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .locals 9

    mul-int v0, p1, p2

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 572
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 573
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 574
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 576
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 577
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 583
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v5, v2

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v7, v2

    mul-double/2addr v5, v7

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 581
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw p1

    .line 587
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    if-lez v0, :cond_5

    .line 592
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eq p0, p2, :cond_5

    .line 593
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ge p0, p2, :cond_4

    .line 594
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    .line 595
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1

    .line 598
    :cond_4
    invoke-static {v1, p1, p2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 599
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_5
    :goto_1
    move-object p0, v1

    :goto_2
    return-object p0

    :catchall_1
    move-exception p1

    .line 589
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw p1
.end method

.method private getEditPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 497
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "freestyle_edit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getFile(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 1

    .line 151
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/util/FileAccessable$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getNewPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 509
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "freestyle_new"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadAllFreeButtons(F)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "skins/"

    .line 245
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getFile(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    .line 248
    :try_start_0
    invoke-interface {v1}, Lmiui/util/FileAccessable;->list()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/FileAccessable;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skins/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lmiui/util/FileAccessable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    new-instance v9, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    invoke-interface {v2}, Lmiui/util/FileAccessable;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    move-object v3, v9

    move-object v4, v2

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;-><init>(Lmiui/util/FileAccessable;Ljava/lang/String;FLandroid/content/Context;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v9}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->isMamlGadget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadMtzGadgetInfo(Lmiui/util/FileAccessable;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    move-result-object v2

    .line 259
    invoke-virtual {v9, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->setMtzGadgetInfo(Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;)V

    .line 261
    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private loadAllMtzGadgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tools/"

    .line 269
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getFile(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    .line 270
    invoke-interface {v1}, Lmiui/util/FileAccessable;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/FileAccessable;

    .line 273
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadMtzGadgetInfo(Lmiui/util/FileAccessable;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadCurrentSceneDescription(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "scene"

    .line 462
    invoke-static {p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 466
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mHeight:I

    .line 467
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mWidth:I

    const/4 v0, 0x0

    const-string v1, "width"

    .line 468
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mRawWidth:I

    .line 469
    iget p2, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mWidth:I

    int-to-float p2, p2

    iget v0, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mRawWidth:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mSceneScale:F

    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "root tag name must be:scene"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadFreeStyle(Ljava/io/InputStream;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 377
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 378
    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v1, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadFreeStyle(Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw p2
.end method

.method private loadFreeStyle(Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-direct {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;-><init>()V

    .line 389
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadCurrentSceneDescription(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    :goto_0
    const-string v1, "scene"

    .line 392
    invoke-static {p1, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "screen"

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadScreen(Lorg/xmlpull/v1/XmlPullParser;ZLcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v2, v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mScreens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "FreeStyleSerializer"

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private loadFreeStyleName()Ljava/lang/String;
    .locals 5

    const-string v0, "description.xml"

    .line 158
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getFile(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Lmiui/util/FileAccessable;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 165
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 166
    invoke-interface {v0}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v3, "scene"

    .line 168
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "name"

    .line 171
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-object v1

    .line 169
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "root tag name must be:scene"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v2

    .line 173
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method private loadMtzGadgetInfo(Lmiui/util/FileAccessable;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    .line 283
    invoke-interface {p1}, Lmiui/util/FileAccessable;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    instance-of v2, p1, Lmiui/util/FileAccessable$DeskFile;

    if-eqz v2, :cond_0

    .line 288
    new-instance v2, Ljava/util/zip/ZipFile;

    check-cast p1, Lmiui/util/FileAccessable$DeskFile;

    invoke-virtual {p1}, Lmiui/util/FileAccessable$DeskFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 289
    new-instance p1, Lmiui/util/FileAccessable$ZipInnerFile;

    const-string v3, "/"

    invoke-direct {p1, v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "mtz gadget parse failed:not support zip into zip"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v2, "preview/preview_cover_0.png"

    .line 292
    invoke-interface {p1, v2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v2

    .line 293
    invoke-interface {v2}, Lmiui/util/FileAccessable;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "preview/preview_cover_0.jpg"

    .line 294
    invoke-interface {p1, v2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v2

    .line 295
    invoke-interface {v2}, Lmiui/util/FileAccessable;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "preview/0.png"

    .line 296
    invoke-interface {p1, v2}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 299
    invoke-static {v0, v3, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->decodeBitmapFromFile(Ljava/util/HashMap;FLmiui/util/FileAccessable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 300
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v4, "description.xml"

    .line 301
    invoke-interface {p1, v4}, Lmiui/util/FileAccessable;->createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v4

    invoke-interface {v4}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 305
    :cond_3
    invoke-static {v3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "title"

    .line 306
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :cond_4
    :try_start_2
    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 315
    new-instance v3, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;-><init>()V

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tools/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lmiui/util/FileAccessable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->path:Ljava/lang/String;

    .line 317
    iput-object v1, v3, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->title:Ljava/lang/String;

    .line 318
    iput-object v2, v3, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->preview:Landroid/graphics/Bitmap;

    return-object v3

    :catchall_0
    move-exception p1

    .line 312
    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private loadNew()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getNewPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadFreeStyle(Ljava/io/InputStream;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    return-object v0
.end method

.method private loadOriginalOrEdit()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getEditPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 357
    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    const-string v3, "description.xml"

    invoke-static {v1, v3}, Lmiui/util/FileAccessable$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    .line 358
    invoke-interface {v1}, Lmiui/util/FileAccessable;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "FreeStyleSerializer"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not exists. file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    invoke-interface {v1}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadFreeStyle(Ljava/io/InputStream;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    return-object v0

    .line 364
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadFreeStyle(Ljava/io/InputStream;Z)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    return-object v0
.end method

.method private loadScreen(Lorg/xmlpull/v1/XmlPullParser;ZLcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-direct {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x0

    .line 406
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "drift"

    .line 407
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    .line 408
    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mType:I

    goto :goto_0

    :cond_0
    const-string v3, "background"

    .line 409
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 410
    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mType:I

    goto :goto_0

    :cond_1
    const-string v3, "foreground"

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    .line 412
    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mType:I

    goto :goto_0

    :cond_2
    const-string v3, "dock"

    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x4

    .line 414
    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mType:I

    :goto_0
    const-string v1, "width"

    .line 420
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mRawWidth:I

    .line 421
    iget v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mRawWidth:I

    invoke-virtual {p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mWidth:I

    const-string v1, "home"

    .line 422
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mHome:I

    :cond_3
    :goto_1
    const-string v1, "screen"

    .line 425
    invoke-static {p1, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "sprite"

    .line 426
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadSprite(Lorg/xmlpull/v1/XmlPullParser;ZLcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 428
    iget-object v2, v0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v2, "FreeStyleSerializer"

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    const-string p1, "FreeStyleSerializer"

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown screen type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private loadSprite(Lorg/xmlpull/v1/XmlPullParser;ZLcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Sprite;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/upsidescene/data/Sprite;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 440
    iput-boolean p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIsUserCreated:Z

    const-string p2, "left"

    const/4 v1, 0x0

    .line 441
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawLeft:I

    .line 442
    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawLeft:I

    invoke-virtual {p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mLeft:I

    const-string p2, "top"

    .line 443
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawTop:I

    .line 444
    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawTop:I

    invoke-virtual {p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mTop:I

    const-string p2, "rotation"

    .line 445
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseFloatValue(Ljava/lang/String;F)F

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRotation:F

    const-string p2, "scale_x"

    .line 446
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseFloatValue(Ljava/lang/String;F)F

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mScaleX:F

    const-string p2, "scale_y"

    .line 447
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseFloatValue(Ljava/lang/String;F)F

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mScaleY:F

    const-string p2, "width"

    .line 448
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawWidth:I

    const-string p2, "height"

    .line 449
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawHeight:I

    .line 450
    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawWidth:I

    if-lez p2, :cond_0

    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawHeight:I

    if-lez p2, :cond_0

    .line 451
    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawWidth:I

    invoke-virtual {p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mWidth:I

    .line 452
    iget p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawHeight:I

    invoke-virtual {p3}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->calcSize(IF)I

    move-result p2

    iput p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mHeight:I

    :cond_0
    const-string p2, "appearance"

    .line 454
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->load(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object p2

    iput-object p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

    const-string p2, "function"

    .line 455
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/upsidescene/data/Function;->parse(Ljava/lang/String;)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    iput-object p2, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

    const-string p2, "index"

    .line 456
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->parseIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIndex:I

    return-object v0
.end method

.method private mergeAdditionSprites(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mergeAdditionSpritesInScreen(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDockScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDockScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mergeAdditionSpritesInScreen(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-void
.end method

.method private mergeAdditionSpritesInScreen(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 344
    :cond_0
    iget-object p2, p2, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 345
    iget-object v1, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    sget-object v2, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->sSpriteIndexComparator:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_1

    rsub-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 348
    :goto_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 349
    iput-object p3, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    .line 350
    iget-object v2, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public static moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 522
    invoke-static {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static moveToNextStartTagOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 531
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 535
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private parseFloatValue(Ljava/lang/String;F)F
    .locals 1

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 474
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private parseIntValue(Ljava/lang/String;)I
    .locals 1

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "match_parent"

    .line 480
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 483
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private saveFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Ljava/lang/String;Z)V
    .locals 8

    const/4 v0, 0x0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    new-instance p2, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;

    invoke-direct {p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;-><init>()V

    const-string v2, "utf-8"

    .line 185
    invoke-virtual {p2, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 186
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "scene"

    .line 187
    invoke-virtual {p2, v0, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "width"

    .line 188
    iget v3, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mRawWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mScreens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/upsidescene/data/Screen;

    const-string v3, "screen"

    .line 190
    invoke-virtual {p2, v0, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 207
    new-instance p1, Ljava/lang/RuntimeException;

    goto/16 :goto_4

    :pswitch_0
    const-string v3, "dock"

    goto :goto_1

    :pswitch_1
    const-string v3, "foreground"

    goto :goto_1

    :pswitch_2
    const-string v3, "drift"

    goto :goto_1

    :pswitch_3
    const-string v3, "background"

    :goto_1
    const-string v4, "type"

    .line 209
    invoke-virtual {p2, v0, v4, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "width"

    .line 210
    iget v4, v2, Lcom/miui/home/launcher/upsidescene/data/Screen;->mRawWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v3, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "home"

    .line 211
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getHome()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v3, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getSprites()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    .line 215
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getSprites()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 216
    iget-boolean v6, v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIsUserCreated:Z

    if-eq p3, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v6, "sprite"

    .line 218
    invoke-virtual {p2, v0, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "index"

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "left"

    .line 220
    iget v7, v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawLeft:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "top"

    .line 221
    iget v7, v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawTop:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "rotation"

    .line 222
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getRotation()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "scale_x"

    .line 223
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "scale_y"

    .line 224
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "width"

    .line 225
    iget v7, v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "height"

    .line 226
    iget v7, v5, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "appearance"

    .line 227
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "function"

    .line 228
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/data/Function;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v6, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "sprite"

    .line 229
    invoke-virtual {p2, v0, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_1
    const-string v2, "screen"

    .line 232
    invoke-virtual {p2, v0, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 207
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown screen type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "scene"

    .line 234
    invoke-virtual {p2, v0, p1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-virtual {p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_1
    move-exception p1

    .line 237
    :goto_5
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "save FreeStyle failed."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :goto_6
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear(Z)V
    .locals 2

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getEditPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getNewPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public exists()Z
    .locals 2

    .line 97
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getPersistDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "free_style"

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public load()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 5

    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadFreeStyleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FreeStyleSerializer"

    const-string v2, "not found \'name\' in scene."

    .line 108
    invoke-static {v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadOriginalOrEdit()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mName:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadNew()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v2

    .line 114
    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mergeAdditionSprites(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 116
    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadAllFreeButtons(F)Ljava/util/List;

    move-result-object v2

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->loadAllMtzGadgets()Ljava/util/List;

    move-result-object v3

    .line 118
    iget-object v4, v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mFreeButtonInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v2, v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mMtzGadgets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v0
.end method

.method public save(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mFreeStyleName:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getEditPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->saveFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Ljava/lang/String;Z)V

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->getNewPersistSettingsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->saveFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;Ljava/lang/String;Z)V

    return-void
.end method
