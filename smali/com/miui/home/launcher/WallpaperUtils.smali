.class public Lcom/miui/home/launcher/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

.field public static final SYSTEM_WALLPAPER_RUNTIME_PATH:Ljava/lang/String;

.field private static mTmpPoint:Landroid/graphics/Point;

.field private static sBytesForInt:[B

.field private static sBytesForShort:[B

.field private static sCurrentStatusBarAreaColorMode:I

.field private static sCurrentWallpaperColorMode:I

.field public static sDefaultLockWallpaperProvider:Ljava/lang/String;

.field private static sIsCurrentWallpaperScrollable:Z

.field private static final sPickerIntent:Landroid/content/Intent;

.field private static final sPresetWallpaperPicker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchBarAreaColorMode:I

.field private static sWallpaperLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 76
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    .line 85
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    .line 88
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForInt:[B

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForShort:[B

    .line 94
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->SYSTEM_WALLPAPER_RUNTIME_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    .line 97
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.wallpaper.livepicker"

    const-string v3, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$000(Z)Z
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    return p0
.end method

.method private static autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 888
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int p2, v3

    .line 891
    new-instance v0, Lcom/miui/home/library/utils/Graphics$CropOption;

    invoke-direct {v0}, Lcom/miui/home/library/utils/Graphics$CropOption;-><init>()V

    .line 892
    new-instance v2, Landroid/graphics/Rect;

    .line 893
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v2, v1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 894
    iget-object p2, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 894
    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 896
    invoke-static {p1, p0, v0}, Lcom/miui/home/library/utils/Graphics;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/miui/home/library/utils/Graphics$CropOption;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 901
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 898
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :goto_2
    if-eqz p1, :cond_2

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 903
    :cond_2
    throw p0
.end method

.method public static backupLockScreenSrc(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_lock_wallpaper"

    .line 825
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 826
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pref_key_lock_wallpaper_path"

    .line 827
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {v0, p0}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 1

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 489
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p4, p5

    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 490
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_1

    .line 492
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 493
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 495
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 496
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p3, p5

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 498
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p3, p5

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 499
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p4, p5

    add-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 502
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 503
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 297
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onScreenColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    .line 298
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static clearWallpaperSrc()V
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    .line 479
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 483
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    .line 484
    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static correctHomeScreenPreview(IZZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 256
    :cond_0
    sget v1, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    if-eq v1, p0, :cond_1

    .line 258
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 259
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    .line 260
    invoke-static {p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 261
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 262
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10

    .line 450
    new-instance v0, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 451
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 p1, 0x5a

    if-eq p5, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 455
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->computeSampleSizeLarger(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p3

    .line 453
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->computeSampleSizeLarger(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    const/4 p1, 0x0

    .line 459
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 468
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    .line 462
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 470
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 472
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    iget v9, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v4, p5

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v9}, Lcom/miui/home/launcher/WallpaperUtils;->drawInTiles(Landroid/graphics/Canvas;ILandroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;III)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 465
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    :goto_2
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 469
    throw p0
.end method

.method private static drawInTiles(Landroid/graphics/Canvas;ILandroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;III)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    mul-int/lit16 v9, v3, 0x200

    .line 509
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 510
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 511
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 512
    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v7, v5, :cond_1

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 517
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 514
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 521
    :goto_1
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eq v7, v5, :cond_3

    if-ne v7, v4, :cond_2

    goto :goto_2

    .line 522
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_3
    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_4

    goto :goto_4

    .line 523
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 524
    :goto_5
    div-int v14, v1, v9

    .line 525
    div-int v15, v2, v9

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_6
    if-gt v6, v14, :cond_a

    move/from16 v5, v16

    :goto_7
    if-gt v5, v15, :cond_9

    move-object v1, v10

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v6

    move/from16 p4, v5

    move/from16 v17, v6

    move v6, v9

    .line 528
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/WallpaperUtils;->calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    move-object/from16 v1, p3

    .line 529
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 533
    monitor-enter p2

    .line 534
    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 536
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v7, :cond_6

    .line 538
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v7

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 541
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 542
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    .line 541
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 543
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_6
    move/from16 v3, v17

    mul-int/lit16 v6, v3, 0x200

    int-to-float v4, v6

    move/from16 v5, p4

    mul-int/lit16 v6, v5, 0x200

    int-to-float v6, v6

    .line 545
    invoke-virtual {v0, v2, v4, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 546
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :cond_7
    move/from16 v5, p4

    move/from16 v3, v17

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 535
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move/from16 v5, p4

    move/from16 v3, v17

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    goto :goto_7

    :cond_9
    move-object/from16 v1, p3

    move v3, v6

    add-int/lit8 v6, v3, 0x1

    goto/16 :goto_6

    :cond_a
    return-void
.end method

.method private static drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    .line 340
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V

    .line 342
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getCurrentWallpaperColorMode()I
    .locals 1

    .line 162
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return v0
.end method

.method private static getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;
    .locals 13

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v6

    .line 352
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 354
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 356
    :cond_0
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object v8

    .line 358
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    move v0, v9

    .line 359
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v10

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v11

    new-instance v12, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$JMVodRuCvcVUxn9sSYj7nCo4MJE;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v6

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$JMVodRuCvcVUxn9sSYj7nCo4MJE;-><init>(Ljava/util/List;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;ZZ)V

    invoke-static {v10, v11, v7, v12}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 405
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 406
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-ge v9, p1, :cond_2

    .line 407
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    return-object v7
.end method

.method private static getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getAllIndexesOnScreen(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 274
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 275
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getIconTitleShadowColor()I
    .locals 5

    .line 241
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    const-wide v1, 0x3fd51eb851eb851fL    # 0.33

    const/16 v3, 0xff

    if-nez v0, :cond_0

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    shl-int/lit8 v0, v0, 0x18

    return v0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    shl-int/lit8 v0, v0, 0x18

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static getLastRequestLockWallpaperTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    const-wide/16 v1, 0x0

    .line 989
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_wallpaper_provider_authority"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLockWallpaperUpdateMinute(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    const/16 v1, 0xb4

    .line 980
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 916
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 918
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 922
    :cond_1
    :try_start_0
    invoke-static {v0, p0}, Lcom/miui/home/library/utils/Graphics;->getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 930
    new-instance v3, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v3, v0, p0}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 931
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->getImageRotation(Ljava/io/InputStream;)I

    move-result v5

    .line 932
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v5, v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_0

    .line 933
    :cond_2
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    if-eq v5, v4, :cond_5

    if-ne v5, v3, :cond_4

    goto :goto_2

    .line 934
    :cond_4
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_3

    :cond_5
    :goto_2
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_3
    move v4, v1

    move-object v1, p0

    move v3, v6

    .line 935
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/WallpaperUtils;->decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 925
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static getSampleRatio(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;
    .locals 3

    .line 731
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 732
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 734
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 737
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    if-eqz v1, :cond_2

    .line 738
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_2
    iput p0, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_3

    .line 739
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    :goto_3
    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public static getWallpaperColorModeInArea(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .locals 5

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 230
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 231
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 234
    invoke-static {p1, v2, v3, v0, p0}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getSampleRatio(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/Graphics;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 150
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 138
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 142
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 146
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    return-object p0
.end method

.method public static hasAppliedLightWallpaper()Z
    .locals 2

    .line 158
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasLightBgForStatusBar()Z
    .locals 2

    .line 166
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasValidProvider(Landroid/content/Context;)Z
    .locals 3

    .line 972
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.miui.home.none_provider"

    .line 974
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCurrentWallpaperScrollable()Z
    .locals 1

    .line 212
    sget-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return v0
.end method

.method public static isDefaultLockStyle()Z
    .locals 2

    .line 1006
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme//lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isKeyguardShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyguardShowLiveWallpaper()Z
    .locals 3

    .line 940
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "keyguard_show_livewallpaper"

    .line 942
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProviderClosedByUser(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_provider_closed"

    const/4 v1, 0x1

    .line 998
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSearchBarAreaLight()Z
    .locals 2

    .line 111
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStaticWallpaper(Landroid/app/WallpaperManager;)Z
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getDefaultHomeScreenTopLayer$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;ZZLandroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    .line 364
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 365
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v2

    iget v3, p2, Lcom/miui/home/launcher/Workspace;->mVisibleRange:I

    div-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-static {p5, v1, p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_3

    .line 369
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    .line 370
    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p0

    .line 371
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result p2

    int-to-float p2, p2

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    .line 372
    invoke-virtual {p5, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 375
    invoke-virtual {p0, p5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 376
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    .line 378
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    .line 379
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    if-eqz p4, :cond_1

    const/16 p3, 0x64

    .line 381
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 383
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result p3

    const/4 v1, 0x0

    .line 384
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sub-int/2addr p4, v0

    int-to-float v2, p4

    .line 385
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p4

    int-to-float v3, p4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p4

    int-to-float v4, p4

    const/16 v6, 0x1f

    move-object v0, p5

    move-object v5, p2

    .line 384
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    const/4 p4, 0x0

    .line 386
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHeight()I

    move-result v1

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    int-to-float p3, v0

    invoke-virtual {p5, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/hotseats/HotSeats;->draw(Landroid/graphics/Canvas;)V

    .line 388
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    .line 390
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 391
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 393
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0703f8

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0703f7

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_1
    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result p4

    add-int/2addr p4, p1

    sub-int/2addr p3, p4

    int-to-float v2, p3

    .line 396
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p3

    int-to-float v3, p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p3

    int-to-float v4, p3

    const/16 v6, 0x1f

    move-object v0, p5

    move-object v5, p2

    .line 395
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 397
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result p4

    add-int/2addr p4, p1

    sub-int/2addr p3, p4

    int-to-float p1, p3

    .line 397
    invoke-virtual {p5, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/SearchBar;->draw(Landroid/graphics/Canvas;)V

    .line 400
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method static synthetic lambda$sendLockWallpaperBroadcast$1(ZLandroid/content/Context;)V
    .locals 2

    .line 1015
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    .line 1016
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 182
    instance-of p0, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p0, :cond_0

    .line 183
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 120
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    return-void
.end method

.method private static onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->onWallpaperColorChanged()V

    return-void
.end method

.method private static onLockWallpaperChanged(Z)Z
    .locals 3

    .line 852
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "currentWallpaperInfo"

    .line 855
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_wallpaper_provider_authority"

    const-string v2, "com.miui.home.none_provider"

    invoke-static {p0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 859
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockScreenShowLiveWallpaper(Z)V

    .line 861
    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static onScreenColorModeChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 284
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 285
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onWallpaperColorChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resetLockWallpaper(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 804
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "backup_lock_wallpaper"

    .line 805
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 806
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    .line 808
    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string p0, "pref_key_backed_up_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 811
    invoke-static {p0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_2

    const-string v1, "/data/system/theme/lock_wallpaper"

    .line 815
    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    :cond_2
    const-string v1, ""

    .line 817
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V
    .locals 5

    .line 952
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 953
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 954
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.thememanager.lockscreen_magazine_provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "com.android.thememanager.theme_lockwallpaper"

    .line 955
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 956
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->isProviderClosedByUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-nez v3, :cond_5

    .line 957
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/theme/lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 960
    :cond_3
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideLockProvider(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 961
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 962
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_wallpaper_provider_authority"

    sget-object v3, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Launcher.WallpaperUtils"

    const-string v1, "reset Default Lock Wallpaper Provider"

    .line 964
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "currentWallpaperInfo"

    .line 967
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 709
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    :try_start_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz p1, :cond_0

    .line 711
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 713
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p0, 0x1

    .line 721
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 717
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 721
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 724
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    if-eqz v1, :cond_2

    .line 721
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 726
    :cond_2
    :goto_5
    throw p0
.end method

.method public static sendLockWallpaperBroadcast(Landroid/content/Context;Z)V
    .locals 1

    .line 1014
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$oPg2hz6q5VlHOcoH3_oAKFDp5hw;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$oPg2hz6q5VlHOcoH3_oAKFDp5hw;-><init>(ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentSearchBarAreaColorMode(I)V
    .locals 0

    .line 107
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentStatusBarAreaColorMode(I)V
    .locals 0

    .line 200
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentWallpaperColorMode(I)V
    .locals 0

    .line 204
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return-void
.end method

.method public static setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    .line 333
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 335
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    return-void
.end method

.method private static setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V
    .locals 6

    .line 414
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 418
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    .line 420
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setIsCurrentWallpaperScrollable(Z)V
    .locals 0

    .line 208
    sput-boolean p0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return-void
.end method

.method public static setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    .line 993
    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setLockScreenShowLiveWallpaper(Z)V
    .locals 2

    .line 302
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard_show_livewallpaper"

    .line 304
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 306
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_wallpaper_provider_authority"

    const-string v1, "com.miui.home.none_provider"

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z
    .locals 3

    .line 834
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 838
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 839
    monitor-exit v0

    return v1

    .line 841
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 842
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 844
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/system/theme/lock_wallpaper"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 845
    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 847
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 848
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaper(Landroid/net/Uri;Z)Z
    .locals 7

    .line 866
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 868
    monitor-exit v0

    return v2

    .line 869
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 870
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;

    move-result-object v3

    .line 871
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 873
    monitor-exit v0

    return v2

    .line 875
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 876
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 878
    :cond_3
    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/WallpaperUtils;->autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 879
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 880
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    .line 984
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z
    .locals 7

    .line 775
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_4

    .line 777
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 781
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "lockWallpaperBack"

    .line 782
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 786
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    .line 788
    new-array v4, v4, [B

    .line 790
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 791
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 793
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 794
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 795
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_path"

    .line 744
    invoke-static {v0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {p0, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
    .locals 2

    .line 749
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/WallpaperUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils$1;-><init>(Ljava/lang/String;Z)V

    .line 769
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    .line 770
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setProviderClosedByUser(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_key_provider_closed"

    .line 1002
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "wallpaper"

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 319
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 326
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 1

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    :goto_1
    return-void
.end method

.method public static varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V
    .locals 4

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 175
    instance-of v3, v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v3, :cond_0

    .line 176
    check-cast v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {v2}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
