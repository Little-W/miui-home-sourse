.class public Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic;
.super Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.source "WallpaperCompatStatic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "Launcher_StaticWallpaper"

    const-string v1, "current wallpaper is static wallpaper"

    .line 15
    invoke-static {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getCurrentWallpaper(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method supportDarkenWallpaper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
