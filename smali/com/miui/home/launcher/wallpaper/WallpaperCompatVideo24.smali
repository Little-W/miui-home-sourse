.class Lcom/miui/home/launcher/wallpaper/WallpaperCompatVideo24;
.super Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.source "WallpaperCompatVideo24.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompat;-><init>()V

    return-void
.end method


# virtual methods
.method getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getCurrentWallpaper(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method supportDarkenWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
