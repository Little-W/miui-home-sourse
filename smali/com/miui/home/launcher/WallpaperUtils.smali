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

.field private static mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

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

    .line 83
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 84
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 92
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    .line 93
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    .line 96
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    const/4 v0, 0x4

    .line 100
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForInt:[B

    const/4 v0, 0x2

    .line 101
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForShort:[B

    .line 104
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    .line 105
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

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    .line 107
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.wallpaper.livepicker"

    const-string v3, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$000(Z)Z
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    return p0
.end method

.method private static autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 936
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

    .line 937
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

    .line 938
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int p2, v3

    .line 939
    new-instance v0, Lcom/miui/home/library/utils/Graphics$CropOption;

    invoke-direct {v0}, Lcom/miui/home/library/utils/Graphics$CropOption;-><init>()V

    .line 940
    new-instance v2, Landroid/graphics/Rect;

    .line 941
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v2, v1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 942
    iget-object p2, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, v0, Lcom/miui/home/library/utils/Graphics$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 943
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 942
    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 944
    invoke-static {p1, p0, v0}, Lcom/miui/home/library/utils/Graphics;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/miui/home/library/utils/Graphics$CropOption;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 949
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 946
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

    .line 949
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 951
    :cond_2
    throw p0
.end method

.method public static backupLockScreenSrc(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 872
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_lock_wallpaper"

    .line 873
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pref_key_lock_wallpaper_path"

    .line 875
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-static {v0, p0}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 1

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 537
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p4, p5

    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 538
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_1

    .line 540
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 541
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 543
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 544
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p3, p5

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 546
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p3, p5

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 547
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p4, p5

    add-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 550
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 551
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 315
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onScreenColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    .line 316
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static clearWallpaperSrc()V
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    .line 527
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 531
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    .line 532
    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static correctHomeScreenPreview(IZZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    sget v1, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    if-eq v1, p0, :cond_1

    .line 276
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 277
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    .line 278
    invoke-static {p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 279
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 280
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10

    .line 498
    new-instance v0, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 499
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 p1, 0x5a

    if-eq p5, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 503
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

    .line 501
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

    .line 507
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 516
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    .line 510
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

    .line 516
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 518
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 520
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 521
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

    .line 513
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    return-object p1

    :goto_2
    invoke-virtual {v0}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    .line 517
    throw p0
.end method

.method private static drawHotSeat(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Launcher;ZII)V
    .locals 9

    .line 375
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    .line 376
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    if-eqz p2, :cond_0

    const/16 p2, 0x64

    .line 378
    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result p2

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sub-int v1, p4, v1

    int-to-float v3, v1

    int-to-float v4, p3

    int-to-float v5, p4

    const/16 v7, 0x1f

    move-object v1, p0

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    const/4 p3, 0x0

    .line 383
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sub-int/2addr p4, v1

    int-to-float p2, p4

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->draw(Landroid/graphics/Canvas;)V

    .line 385
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 387
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 388
    invoke-static {p0, v8, p1}, Lcom/miui/home/launcher/WallpaperUtils;->drawSearchBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/miui/home/launcher/Launcher;)V

    :cond_1
    return-void
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

    .line 557
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 558
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 559
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 560
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

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 565
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 562
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 569
    :goto_1
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eq v7, v5, :cond_3

    if-ne v7, v4, :cond_2

    goto :goto_2

    .line 570
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

    .line 571
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 572
    :goto_5
    div-int v14, v1, v9

    .line 573
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

    .line 576
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/WallpaperUtils;->calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    move-object/from16 v1, p3

    .line 577
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 581
    monitor-enter p2

    .line 582
    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 583
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 584
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v7, :cond_6

    .line 586
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v7

    .line 587
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

    .line 589
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 590
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    .line 589
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 591
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_6
    move/from16 v3, v17

    mul-int/lit16 v6, v3, 0x200

    int-to-float v4, v6

    move/from16 v5, p4

    mul-int/lit16 v6, v5, 0x200

    int-to-float v6, v6

    .line 593
    invoke-virtual {v0, v2, v4, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 594
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :cond_7
    move/from16 v5, p4

    move/from16 v3, v17

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 583
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

.method private static drawIndicator(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Workspace;II)V
    .locals 2

    .line 364
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 365
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p1

    .line 366
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    int-to-float v0, v0

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    int-to-float p3, p3

    sub-float/2addr p3, v0

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 367
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V
    .locals 1

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawSearchBar(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/miui/home/launcher/Launcher;)V
    .locals 8

    .line 393
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0705cb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0705ca

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    const/4 v2, 0x0

    .line 397
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int/2addr v1, v3

    int-to-float v3, v1

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v7, 0x1f

    move-object v1, p0

    move-object v6, p1

    .line 397
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 400
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v1, v2

    int-to-float p2, v1

    .line 399
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SearchBar;->draw(Landroid/graphics/Canvas;)V

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getCurrentWallpaperColorMode()I
    .locals 1

    .line 180
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return v0
.end method

.method private static getDefaultHomeScreenTopLayer(ZZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 427
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v6

    .line 428
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 432
    :cond_0
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object v7

    .line 434
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    move v1, v8

    .line 435
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 436
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    sget-object v2, Lcom/miui/home/library/utils/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    .line 442
    sget-object v3, Lcom/miui/home/launcher/WallpaperUtils;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    sget-object v4, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    invoke-virtual {v4}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->getCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isLauncherReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    invoke-static {v7, p0, v6, v0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenPreview(Ljava/util/List;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 444
    invoke-static {v1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->saveBitmapInFile(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    goto :goto_1

    .line 446
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/Launcher;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->getFileName(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities$BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 449
    :goto_1
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 450
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    if-ge v8, p0, :cond_3

    .line 451
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
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

    .line 288
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    .line 291
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getAllIndexesOnScreen(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 292
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 293
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getDefaultScreenPreview(Ljava/util/List;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;Z)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;Z",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/Workspace;",
            "Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 406
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v8

    .line 407
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v9

    .line 408
    new-instance v10, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move v3, v8

    move-object v4, p3

    move v5, p1

    move v6, v9

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$jLjKUsg93R5wRz9DlYFuQbQM3Y4;-><init>(Ljava/util/List;Lcom/miui/home/launcher/Launcher;ILcom/miui/home/launcher/Workspace;ZIZ)V

    const/4 p0, 0x0

    invoke-static {v8, v9, p0, v10}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getFileName(ZZ)Ljava/lang/String;
    .locals 1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "preview_large"

    goto :goto_0

    :cond_0
    const-string p0, "preview_normal"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, "_only_shortcut"

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIconTitleShadowColor()I
    .locals 5

    .line 259
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

    .line 1037
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 994
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

    .line 1028
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 964
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 966
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 970
    :cond_1
    :try_start_0
    invoke-static {v0, p0}, Lcom/miui/home/library/utils/Graphics;->getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 978
    new-instance v3, Lcom/miui/home/library/utils/InputStreamLoader;

    invoke-direct {v3, v0, p0}, Lcom/miui/home/library/utils/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 979
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->getImageRotation(Ljava/io/InputStream;)I

    move-result v5

    .line 980
    invoke-virtual {v3}, Lcom/miui/home/library/utils/InputStreamLoader;->close()V

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v5, v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_0

    .line 981
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

    .line 982
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

    .line 983
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/WallpaperUtils;->decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 973
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static getSampleRatio(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 207
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

    .line 779
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 780
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 782
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

    .line 785
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    if-eqz v1, :cond_2

    .line 786
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_2
    iput p0, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_3

    .line 787
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

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 248
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 249
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 250
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 251
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 252
    invoke-static {p1, v2, v3, v0, p0}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 254
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

    .line 168
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 160
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 164
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getWorkSpace(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    return-object p0
.end method

.method public static hasAppliedLightWallpaper()Z
    .locals 2

    .line 176
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

    .line 184
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

    .line 1020
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.miui.home.none_provider"

    .line 1022
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1024
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

    .line 230
    sget-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return v0
.end method

.method public static isDefaultLockStyle()Z
    .locals 2

    .line 1054
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme//lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
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

    .line 988
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "keyguard_show_livewallpaper"

    .line 990
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProviderClosedByUser(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_provider_closed"

    const/4 v1, 0x1

    .line 1046
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSearchBarAreaLight()Z
    .locals 2

    .line 129
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

    .line 214
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

.method static synthetic lambda$getDefaultScreenPreview$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;ILcom/miui/home/launcher/Workspace;ZIZLandroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    iget v2, p3, Lcom/miui/home/launcher/Workspace;->mVisibleRange:I

    div-int v2, p2, v2

    mul-int/2addr v2, v0

    invoke-static {p7, v1, p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->drawScreenByCanvas(Landroid/graphics/Canvas;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 414
    invoke-static {p7, p3, p2, p5}, Lcom/miui/home/launcher/WallpaperUtils;->drawIndicator(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Workspace;II)V

    .line 415
    invoke-static {p7, p1, p6, p2, p5}, Lcom/miui/home/launcher/WallpaperUtils;->drawHotSeat(Landroid/graphics/Canvas;Lcom/miui/home/launcher/Launcher;ZII)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$sendLockWallpaperBroadcast$1(ZLandroid/content/Context;)V
    .locals 2

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    .line 1064
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object v0
.end method

.method public static onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 200
    instance-of p0, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p0, :cond_0

    .line 201
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 138
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    return-void
.end method

.method private static onHotSeatsColorModeChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->onWallpaperColorChanged()V

    return-void
.end method

.method private static onLockWallpaperChanged(Z)Z
    .locals 3

    .line 900
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "currentWallpaperInfo"

    .line 903
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_wallpaper_provider_authority"

    const-string v2, "com.miui.home.none_provider"

    invoke-static {p0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 907
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockScreenShowLiveWallpaper(Z)V

    .line 909
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

    .line 302
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultScreenList(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 304
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

    .line 852
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "backup_lock_wallpaper"

    .line 853
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 854
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    .line 856
    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 858
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string p0, "pref_key_backed_up_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 859
    invoke-static {p0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_2

    const-string v1, "/data/system/theme/lock_wallpaper"

    .line 863
    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    :cond_2
    const-string v1, ""

    .line 865
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 867
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

    .line 1000
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 1002
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

    .line 1003
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1004
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->isProviderClosedByUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-nez v3, :cond_5

    .line 1005
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/theme/lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 1008
    :cond_3
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideLockProvider(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1009
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 1010
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_wallpaper_provider_authority"

    sget-object v3, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Launcher.WallpaperUtils"

    const-string v1, "reset Default Lock Wallpaper Provider"

    .line 1012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "currentWallpaperInfo"

    .line 1015
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 757
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 758
    :try_start_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz p1, :cond_0

    .line 759
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 761
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p0, 0x1

    .line 769
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 772
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

    .line 765
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 769
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 772
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    if-eqz v1, :cond_2

    .line 769
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 772
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 774
    :cond_2
    :goto_5
    throw p0
.end method

.method public static sendLockWallpaperBroadcast(Landroid/content/Context;Z)V
    .locals 1

    .line 1062
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$oPg2hz6q5VlHOcoH3_oAKFDp5hw;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$oPg2hz6q5VlHOcoH3_oAKFDp5hw;-><init>(ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentSearchBarAreaColorMode(I)V
    .locals 0

    .line 125
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentStatusBarAreaColorMode(I)V
    .locals 0

    .line 218
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentWallpaperColorMode(I)V
    .locals 0

    .line 222
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return-void
.end method

.method public static setDefaultScreenStatus(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setEditModeOnWallpaperChanged(Z)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    .line 351
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 352
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->setEditModeOnWallpaperChanged(Z)V

    .line 353
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

    .line 462
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 465
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

    .line 466
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    .line 468
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setIsCurrentWallpaperScrollable(Z)V
    .locals 0

    .line 226
    sput-boolean p0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return-void
.end method

.method public static setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    .line 1041
    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setLockScreenShowLiveWallpaper(Z)V
    .locals 2

    .line 320
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard_show_livewallpaper"

    .line 322
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 324
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

    .line 882
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 886
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 887
    monitor-exit v0

    return v1

    .line 889
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 890
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 892
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/system/theme/lock_wallpaper"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 893
    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 895
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 896
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaper(Landroid/net/Uri;Z)Z
    .locals 7

    .line 914
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 916
    monitor-exit v0

    return v2

    .line 917
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 918
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;

    move-result-object v3

    .line 919
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 921
    monitor-exit v0

    return v2

    .line 923
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

    .line 924
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 926
    :cond_3
    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/WallpaperUtils;->autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 927
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 928
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    .line 1032
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z
    .locals 7

    .line 823
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_4

    .line 825
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 829
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "lockWallpaperBack"

    .line 830
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 832
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 834
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    .line 836
    new-array v4, v4, [B

    .line 838
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 839
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 841
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 842
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 843
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

    .line 845
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_path"

    .line 792
    invoke-static {v0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {p0, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
    .locals 2

    .line 797
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/WallpaperUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils$1;-><init>(Ljava/lang/String;Z)V

    .line 817
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    .line 818
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setProviderClosedByUser(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_key_provider_closed"

    .line 1050
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wallpaper"

    .line 330
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 337
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 344
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V
    .locals 1

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 239
    :cond_1
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    goto :goto_1

    .line 241
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

.method public static updateScreenMode()V
    .locals 1

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    return-void
.end method

.method public static varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V
    .locals 4

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    instance-of v3, v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v3, :cond_0

    .line 194
    check-cast v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {v2}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
