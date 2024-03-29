.class public Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;
.super Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;
.source "WallpaperManagerCompatVOMR1.java"


# instance fields
.field private mWCColorHintsMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 26
    :try_start_0
    const-class p1, Landroid/app/WallpaperColors;

    const-string v0, "getColorHints"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->TAG:Ljava/lang/String;

    const-string v0, "getColorHints not available"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    .line 63
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->TAG:Ljava/lang/String;

    const-string v4, "error calling color hints"

    invoke-static {p1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_4
    :goto_3
    new-instance p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperColors(ILandroid/graphics/Rect;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
    .locals 8

    if-eqz p2, :cond_2

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    const-class v4, Landroid/app/WallpaperColors;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-class v3, Landroid/graphics/Rect;

    const/4 v7, 0x1

    aput-object v3, v5, v7

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    aput-object p2, v0, v7

    const-string v3, "getWallpaperColors"

    move-object v6, v0

    .line 42
    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    check-cast p1, Landroid/app/WallpaperColors;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVOMR1;->convertColorsObject(Landroid/app/WallpaperColors;)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object p0

    return-object p0
.end method
