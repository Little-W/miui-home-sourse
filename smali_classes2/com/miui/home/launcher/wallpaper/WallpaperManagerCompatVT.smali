.class public Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;
.super Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;
.source "WallpaperManagerCompatVT.java"


# instance fields
.field private mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

.field private mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object p0

    .line 36
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    .line 42
    new-instance v1, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0
.end method

.method public initMiuiWallpaperManager(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->staticDestroy()V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;-><init>(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    invoke-static {v0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->init(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V

    return-void
.end method

.method public synthetic lambda$initMiuiWallpaperManager$0$WallpaperManagerCompatVT(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 49
    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->mMiuiWallpaperCallback:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->staticDestroy()V

    return-void
.end method
