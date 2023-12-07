.class public Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;
.super Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.source "WallpaperCompatLive.java"


# static fields
.field private static final GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;


# instance fields
.field private mInfo:Landroid/app/WallpaperInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.mfashiongallery.emag.file/dkmgs/wallpaper"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/app/WallpaperInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    return-void
.end method

.method private getDefaultLiveWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 80
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    .line 81
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isImageFileExist(Ljava/lang/String;)Z
    .locals 0

    .line 88
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 94
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    .line 96
    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->decodeSampledBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_LiveWallpaper"

    const-string v1, "loadBitmap, decode image error"

    .line 98
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 4

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    const-string v0, "Launcher_LiveWallpaper"

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.miui.miwallpaper.MiWallpaper"

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/data/system/theme/miwallpaper_preview"

    .line 52
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->isImageFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "mi wallpaper"

    goto :goto_0

    :cond_0
    const-string v2, "com.miui.miwallpaper.superwallpaper.MamlSuperWallpaper"

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/data/system/theme_magic/super_wallpaper_preview"

    .line 56
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->isImageFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "mi super wallpaper"

    goto :goto_0

    :cond_1
    const-string v2, "com.android.thememanager.service.VideoWallpaperService"

    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/data/system/theme_magic/video/video_wallpaper_desktop_thumbnail.jpg"

    .line 60
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->isImageFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "video wallpaper"

    goto :goto_0

    :cond_2
    const-string v2, "com.mfashiongallery.emag.wallpaper.DesktopWallpaperService"

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    sget-object v1, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "gallery wallpaper"

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_4

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current wallpaper is:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceName="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const-string p1, "current wallpaper is default live wallpaper"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->getDefaultLiveWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
