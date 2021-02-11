.class public Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;
.super Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.source "WallpaperCompatLive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive$_lancet;
    }
.end annotation


# static fields
.field private static final GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;


# instance fields
.field private mInfo:Landroid/app/WallpaperInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.mfashiongallery.emag.file/dkmgs/wallpaper"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/app/WallpaperInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private getDefaultLiveWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 74
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isImageFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private static loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 88
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    .line 90
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

    .line 92
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 5

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p1, :cond_3

    const-string v0, ""

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.miui.miwallpaper.MiWallpaper"

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/data/system/theme/miwallpaper_preview"

    .line 50
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->isImageFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/miwallpaper_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v0, "mi wallpaper"

    goto :goto_0

    :cond_0
    const-string v2, "com.android.thememanager.service.VideoWallpaperService"

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/data/system/theme_magic/video/video_wallpaper_desktop_thumbnail.jpg"

    .line 54
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->isImageFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_magic/video/video_wallpaper_desktop_thumbnail.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v0, "video wallpaper"

    goto :goto_0

    :cond_1
    const-string v2, "com.mfashiongallery.emag.wallpaper.DesktopWallpaperService"

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->GALLERY_WALLPAPER_PREVIEW_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v0, "gallery wallpaper"

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "Launcher_LiveWallpaper"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current wallpaper is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const-string p1, "Launcher_LiveWallpaper"

    const-string v0, "current wallpaper is default live wallpaper"

    .line 67
    invoke-static {p1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->getDefaultLiveWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method supportDarkenWallpaper()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mfashiongallery.emag.wallpaper.DesktopWallpaperService"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
