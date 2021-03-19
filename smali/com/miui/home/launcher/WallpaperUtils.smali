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

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    .line 83
    sput v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    .line 86
    sput-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    const/4 v0, 0x4

    .line 88
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForInt:[B

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [B

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForShort:[B

    .line 92
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    .line 93
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

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    .line 95
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPickerIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sPresetWallpaperPicker:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.wallpaper.livepicker"

    const-string v3, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$000(Z)Z
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    return p0
.end method

.method private static autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 847
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

    .line 848
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

    .line 849
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int p2, v3

    .line 850
    new-instance v0, Lmiui/graphics/BitmapFactory$CropOption;

    invoke-direct {v0}, Lmiui/graphics/BitmapFactory$CropOption;-><init>()V

    .line 851
    new-instance v2, Landroid/graphics/Rect;

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v2, v1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 853
    iget-object p2, v0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, v0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 853
    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 855
    invoke-static {p1, p0, v0}, Lmiui/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 860
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 857
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

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw p0
.end method

.method public static backupLockScreenSrc(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 783
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "backup_lock_wallpaper"

    .line 784
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pref_key_lock_wallpaper_path"

    .line 786
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 787
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {v0, p0}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 1

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 443
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p4, p5

    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 444
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_1

    .line 446
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p5

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 447
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 449
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p5

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 450
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p3, p5

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 452
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr p3, p5

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 453
    iget p1, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr p4, p5

    add-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 456
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 457
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onWallpaperColorChanged()V

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->onWallpaperColorChanged()V

    return-void
.end method

.method public static clearWallpaperSrc()V
    .locals 2

    const-string v0, "pref_key_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    .line 433
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    .line 437
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private static convertIntToBytes(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForInt:[B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 639
    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 640
    aput-byte v1, v0, v2

    const/high16 v1, -0x1000000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    .line 641
    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static convertShortToBytes(S)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sBytesForShort:[B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    .line 654
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static correctHomeScreenPreview(ILandroid/graphics/Bitmap;ZZ)V
    .locals 3

    .line 250
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    sget v1, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    const/16 v2, 0x64

    if-eq v1, p0, :cond_1

    .line 255
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 256
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    .line 257
    invoke-static {p1, v2, p2, p3}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(Landroid/graphics/Bitmap;IZZ)V

    .line 258
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 259
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->changeDefaultScreenColor(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {p1, v2, p2, p3}, Lcom/miui/home/launcher/WallpaperUtils;->getDefaultHomeScreenTopLayer(Landroid/graphics/Bitmap;IZZ)V

    :goto_0
    return-void
.end method

.method public static decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10

    .line 404
    new-instance v0, Lmiui/util/InputStreamLoader;

    invoke-direct {v0, p0, p1}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 405
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 p1, 0x5a

    if-eq p5, p1, :cond_1

    const/16 p1, 0x10e

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p3

    .line 409
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

    .line 407
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

    .line 413
    :try_start_0
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 422
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->close()V

    return-object p1

    .line 416
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->close()V

    .line 424
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 426
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 427
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

    .line 419
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->close()V

    return-object p1

    :goto_2
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->close()V

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

    .line 463
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 464
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 466
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

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 471
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 468
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 475
    :goto_1
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eq v7, v5, :cond_3

    if-ne v7, v4, :cond_2

    goto :goto_2

    .line 476
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

    .line 477
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 478
    :goto_5
    div-int v14, v1, v9

    .line 479
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

    .line 482
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/WallpaperUtils;->calcTileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    move-object/from16 v1, p3

    .line 483
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 487
    monitor-enter p2

    .line 488
    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 490
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v7, :cond_6

    .line 492
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v7

    .line 493
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

    .line 495
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 496
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    .line 495
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 497
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_6
    move/from16 v3, v17

    mul-int/lit16 v6, v3, 0x200

    int-to-float v4, v6

    move/from16 v5, p4

    mul-int/lit16 v6, v5, 0x200

    int-to-float v6, v6

    .line 499
    invoke-virtual {v0, v2, v4, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :cond_7
    move/from16 v5, p4

    move/from16 v3, v17

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 489
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

.method public static getCurrentWallpaperColorMode()I
    .locals 1

    .line 160
    sget v0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return v0
.end method

.method private static getDefaultHomeScreenTopLayer(Landroid/graphics/Bitmap;IZZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 304
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 305
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 306
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 308
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 309
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 310
    invoke-virtual {v10, v3, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 313
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 314
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 315
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-static {v0, v2}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    .line 318
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    .line 321
    invoke-virtual {v0, v10}, Lcom/miui/home/launcher/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 323
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v12

    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->quickShowOrHideAllShortcutsCheckBox(Z)V

    .line 324
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    if-nez p2, :cond_6

    .line 326
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 327
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v2

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v3

    int-to-float v3, v3

    .line 329
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    const v4, 0x3dccccd0    # 0.100000024f

    goto :goto_0

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v3, v4

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v13

    int-to-float v4, v4

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    .line 331
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    invoke-virtual {v2, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 335
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 336
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v2

    if-eq v2, v13, :cond_6

    .line 337
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v2

    .line 338
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    if-eqz p3, :cond_4

    move/from16 v3, p1

    .line 340
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 342
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v15

    const/4 v4, 0x0

    .line 343
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeats;->getHeight()I

    move-result v5

    add-int/2addr v5, v15

    sub-int/2addr v3, v5

    int-to-float v5, v3

    .line 344
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v7, v3

    const/16 v9, 0x1f

    move-object v3, v10

    move-object v8, v14

    .line 343
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeats;->getHeight()I

    move-result v4

    add-int/2addr v4, v15

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v10, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/HotSeats;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 348
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v2

    .line 350
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    move v11, v3

    goto :goto_1

    .line 352
    :cond_5
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    move v11, v3

    :goto_1
    const/4 v4, 0x0

    .line 353
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result v5

    add-int/2addr v5, v11

    sub-int/2addr v3, v5

    int-to-float v5, v3

    .line 354
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v7, v3

    const/16 v9, 0x1f

    move-object v3, v10

    move-object v8, v14

    .line 353
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 355
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBar;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v13

    int-to-float v3, v3

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBar;->getHeight()I

    move-result v5

    add-int/2addr v5, v11

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 355
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 357
    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/SearchBar;->draw(Landroid/graphics/Canvas;)V

    .line 358
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 362
    :cond_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 363
    invoke-static {v0, v12}, Lcom/miui/home/launcher/WallpaperUtils;->setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public static getIconTitleShadowColor()I
    .locals 5

    .line 239
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

    .line 948
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 905
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

    .line 939
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 875
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 877
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 881
    :cond_1
    :try_start_0
    invoke-static {v0, p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 889
    new-instance v3, Lmiui/util/InputStreamLoader;

    invoke-direct {v3, v0, p0}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 890
    invoke-virtual {v3}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->getImageRotation(Ljava/io/InputStream;)I

    move-result v5

    .line 891
    invoke-virtual {v3}, Lmiui/util/InputStreamLoader;->close()V

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v5, v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_0

    .line 892
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

    .line 893
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

    .line 894
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/WallpaperUtils;->decodeRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 884
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static getSampleRatio(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 187
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

    .line 685
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 686
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 688
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

    .line 691
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    if-eqz v1, :cond_2

    .line 692
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/miui/home/launcher/WallpaperUtils;->mTmpPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_2
    iput p0, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_3

    .line 693
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

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 228
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 229
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 230
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 231
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 232
    invoke-static {p1, v2, v3, v0, p0}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 234
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getSampleRatio(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p0, p1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

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

    .line 148
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWallpaperSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p0, v0}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 140
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 144
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasAppliedLightWallpaper()Z
    .locals 2

    .line 156
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

    .line 164
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

    .line 931
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.miui.home.none_provider"

    .line 933
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 935
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

    .line 210
    sget-boolean v0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return v0
.end method

.method public static isDefaultLockStyle()Z
    .locals 2

    .line 965
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme//lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
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

    .line 899
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "keyguard_show_livewallpaper"

    .line 901
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isProviderClosedByUser(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_key_provider_closed"

    const/4 v1, 0x1

    .line 957
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSearchBarAreaLight()Z
    .locals 2

    .line 109
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

    .line 194
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

.method static synthetic lambda$sendLockWallpaperBroadcast$0(ZLandroid/content/Context;)V
    .locals 2

    .line 974
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    .line 975
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 180
    instance-of p0, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p0, :cond_0

    .line 181
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 118
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    return-void
.end method

.method private static onLockWallpaperChanged(Z)Z
    .locals 3

    .line 811
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "currentWallpaperInfo"

    .line 814
    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_wallpaper_provider_authority"

    const-string v2, "com.miui.home.none_provider"

    invoke-static {p0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 818
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockScreenShowLiveWallpaper(Z)V

    .line 820
    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static resetLockWallpaper(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 761
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "backup_lock_wallpaper"

    .line 762
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 763
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    const-string v2, "pref_key_backed_up_lock_wallpaper_path"

    .line 765
    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getWallpaperSourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string p0, "pref_key_backed_up_lock_wallpaper_path"

    const/4 v1, 0x0

    .line 768
    invoke-static {p0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 771
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_2

    const-string v1, "/data/system/theme/lock_wallpaper"

    .line 772
    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v1, "/data/system/theme/lock_wallpaper"

    .line 774
    invoke-static {v1}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    :goto_0
    const-string v1, ""

    .line 776
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    :goto_1
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

    .line 911
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 912
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    .line 913
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

    .line 914
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 915
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->isProviderClosedByUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-nez v3, :cond_5

    .line 916
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/theme/lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 919
    :cond_3
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideLockProvider(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 920
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 921
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_wallpaper_provider_authority"

    sget-object v3, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Launcher.WallpaperUtils"

    const-string v1, "reset Default Lock Wallpaper Provider"

    .line 923
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "currentWallpaperInfo"

    .line 926
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static saveToBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 524
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x4

    .line 531
    rem-int/lit8 v5, v4, 0x4

    const/4 v6, 0x1

    if-lez v5, :cond_2

    rsub-int/lit8 v3, v5, 0x4

    .line 534
    new-array v3, v3, [B

    move v5, v0

    .line 536
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_1

    const/4 v7, -0x1

    .line 537
    aput-byte v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    move v3, v6

    goto :goto_1

    :cond_2
    move-object v5, v3

    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 542
    array-length v7, v5

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/2addr v4, v7

    mul-int/2addr v4, v2

    const/16 v7, 0x36

    add-int/lit8 v8, v4, 0x36

    .line 549
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v10, 0x42

    .line 554
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v10, 0x4d

    .line 555
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 558
    invoke-static {v8}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 561
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertShortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 562
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertShortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 565
    invoke-static {v7}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v7, 0x28

    .line 573
    invoke-static {v7}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x3

    if-eqz v3, :cond_4

    .line 577
    array-length v8, v5

    if-ne v8, v7, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v0

    :goto_3
    add-int/2addr v8, v1

    invoke-static {v8}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 578
    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    invoke-static {v6}, Lcom/miui/home/launcher/WallpaperUtils;->convertShortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v8, 0x20

    .line 584
    invoke-static {v8}, Lcom/miui/home/launcher/WallpaperUtils;->convertShortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 587
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 590
    invoke-static {v4}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 593
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 596
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 598
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 600
    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->convertIntToBytes(I)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 604
    invoke-static {p0}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v1

    mul-int v4, v2, v1

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_4
    if-lez v2, :cond_7

    move v8, v4

    :goto_5
    if-ge v8, v0, :cond_5

    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v11, v10, 0x2

    .line 611
    aget-byte v11, p0, v11

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v10, 0x1

    .line 612
    aget-byte v11, p0, v11

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 613
    aget-byte v11, p0, v10

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v7

    .line 614
    aget-byte v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 617
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_6
    add-int/lit8 v2, v2, -0x1

    sub-int v0, v4, v1

    move v12, v4

    move v4, v0

    move v0, v12

    goto :goto_4

    .line 624
    :cond_7
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 626
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return v6
.end method

.method public static saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 663
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    :try_start_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz p1, :cond_0

    .line 665
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 667
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p0, 0x1

    .line 675
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 678
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

    .line 671
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 675
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 678
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0

    :goto_4
    if-eqz v1, :cond_2

    .line 675
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 678
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 679
    :cond_2
    :goto_5
    throw p0
.end method

.method public static sendLockWallpaperBroadcast(Landroid/content/Context;Z)V
    .locals 1

    .line 973
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$biy8lomOrk-6RA5TPfxtIj6b-Ks;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/-$$Lambda$WallpaperUtils$biy8lomOrk-6RA5TPfxtIj6b-Ks;-><init>(ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentSearchBarAreaColorMode(I)V
    .locals 0

    .line 105
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sSearchBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentStatusBarAreaColorMode(I)V
    .locals 0

    .line 198
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentStatusBarAreaColorMode:I

    return-void
.end method

.method public static setCurrentWallpaperColorMode(I)V
    .locals 0

    .line 202
    sput p0, Lcom/miui/home/launcher/WallpaperUtils;->sCurrentWallpaperColorMode:I

    return-void
.end method

.method private static setGadgetMode(Lcom/miui/home/launcher/CellLayout;Z)V
    .locals 6

    .line 368
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 371
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

    .line 372
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    .line 374
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setIsCurrentWallpaperScrollable(Z)V
    .locals 0

    .line 206
    sput-boolean p0, Lcom/miui/home/launcher/WallpaperUtils;->sIsCurrentWallpaperScrollable:Z

    return-void
.end method

.method public static setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "pref_key_last_request_lock_wallpaper_time"

    .line 952
    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setLockScreenShowLiveWallpaper(Z)V
    .locals 2

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard_show_livewallpaper"

    .line 277
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p0, :cond_1

    .line 279
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

    .line 793
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 797
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->saveToJPG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 798
    monitor-exit v0

    return v1

    .line 800
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 801
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 803
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/system/theme/lock_wallpaper"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 804
    invoke-static {p2}, Lcom/miui/home/launcher/WallpaperUtils;->onLockWallpaperChanged(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 806
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 807
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaper(Landroid/net/Uri;Z)Z
    .locals 7

    .line 825
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 827
    monitor-exit v0

    return v2

    .line 828
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 829
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/WallpaperUtils;->getScreenSize(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/Point;

    move-result-object v3

    .line 830
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getRotatedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 832
    monitor-exit v0

    return v2

    .line 834
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

    .line 835
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 837
    :cond_3
    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/WallpaperUtils;->autoCropWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 838
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, p0}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 839
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_update_minute"

    .line 943
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Landroid/net/Uri;Z)Z
    .locals 7

    .line 732
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_4

    .line 734
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUriFileExists(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 738
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "lockWallpaperBack"

    .line 739
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 741
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 743
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    .line 745
    new-array v4, v4, [B

    .line 747
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 748
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 751
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 752
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

    .line 754
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "pref_key_lock_wallpaper_path"

    .line 698
    invoke-static {v0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {p0, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
    .locals 2

    .line 703
    sget-object v0, Lcom/miui/home/launcher/WallpaperUtils;->sWallpaperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    new-instance v1, Lcom/miui/home/launcher/WallpaperUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/WallpaperUtils$1;-><init>(Ljava/lang/String;Z)V

    .line 726
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    .line 727
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setProviderClosedByUser(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_key_provider_closed"

    .line 961
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "wallpaper"

    .line 383
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 384
    new-instance v1, Lmiui/util/InputStreamLoader;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 386
    invoke-virtual {v1}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 391
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    invoke-virtual {v1}, Lmiui/util/InputStreamLoader;->close()V

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "current_live_wallpaper_packagename"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method

.method public static setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "wallpaper"

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static setWallpaperSourceUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWallpaperPreviewActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 299
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateGadgetColorByWallpaper(Lcom/miui/home/launcher/gadget/Gadget;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 214
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportCheckRegionalWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 219
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->updateGadgetColorByWallpaper(Lcom/miui/home/launcher/gadget/Gadget;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p0, "applied_light_wallpaper"

    .line 221
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p1, p2, p0, v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :goto_1
    return-void
.end method

.method public static varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 173
    instance-of v3, v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v3, :cond_0

    .line 174
    check-cast v2, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {v2}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
