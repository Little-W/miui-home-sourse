.class public final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"


# static fields
.field private static final UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

.field private static final ZOOM_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "wall_zoom"

    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->ZOOM_ENABLED:Z

    .line 26
    sget-boolean v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->ZOOM_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->findUpdateZoomMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$getUPDATE_ZOOM_METHOD$p()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getZOOM_ENABLED$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->ZOOM_ENABLED:Z

    return v0
.end method

.method private static final findUpdateZoomMethod()Ljava/lang/reflect/Method;
    .locals 7

    .line 29
    const-class v0, Landroid/app/WallpaperManager;

    .line 30
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-string v3, "setWallpaperZoomOut"

    .line 29
    invoke-static {v0, v3, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
