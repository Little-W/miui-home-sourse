.class abstract Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
.super Ljava/lang/Object;
.source "WallpaperCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWallpaper(Landroid/app/WallpaperInfo;)Lcom/miui/home/launcher/wallpaper/WallpaperCompat;
    .locals 2

    if-nez p0, :cond_0

    .line 11
    new-instance p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic;

    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatStatic;-><init>()V

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.wallpaper.Video24WallpaperService"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    new-instance p0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatVideo24;

    invoke-direct {p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatVideo24;-><init>()V

    return-object p0

    .line 15
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperCompatLive;-><init>(Landroid/app/WallpaperInfo;)V

    return-object v0
.end method


# virtual methods
.method abstract getWallpaperBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
.end method

.method abstract supportDarkenWallpaper()Z
.end method
