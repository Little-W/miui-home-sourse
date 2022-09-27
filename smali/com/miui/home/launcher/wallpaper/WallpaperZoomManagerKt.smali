.class public final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"


# static fields
.field private static final UPDATE_ZOOM_METHOD:Ljava/lang/reflect/Method;

.field private static final ZOOM_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->ZOOM_ENABLED:Z

    .line 21
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
    .locals 8

    .line 24
    const-class v0, Landroid/app/WallpaperManager;

    const-string v1, "setWallpaperZoomOut"

    .line 25
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
