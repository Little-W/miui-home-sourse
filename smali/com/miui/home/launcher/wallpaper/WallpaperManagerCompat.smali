.class public abstract Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
.super Ljava/lang/Object;
.source "WallpaperManagerCompat.java"


# static fields
.field protected static TAG:Ljava/lang/String; = "Launcher.Wallpaper"

.field private static sInstance:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;
    .locals 2

    .line 25
    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstance:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    if-nez v1, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 28
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO_MR1:Z

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstance:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstance:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sInstance:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract getCurrentWallpaper()Landroid/graphics/Bitmap;
.end method

.method public abstract getDesktopWallpaperColorMode(Landroid/graphics/Rect;)I
.end method

.method public abstract getDesktopWallpaperInfo()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;
.end method

.method public abstract getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
.end method

.method public abstract sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V
.end method
