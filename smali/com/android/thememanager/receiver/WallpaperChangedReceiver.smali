.class public Lcom/android/thememanager/receiver/WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;,
        Lcom/android/thememanager/receiver/WallpaperChangedReceiver$_lancet;
    }
.end annotation


# static fields
.field private static sDisplayMode:I

.field private static sInstance:Lcom/android/thememanager/receiver/WallpaperChangedReceiver;

.field private static sScreen:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;

    invoke-direct {v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;-><init>()V

    sput-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sInstance:Lcom/android/thememanager/receiver/WallpaperChangedReceiver;

    const/4 v0, -0x2

    .line 28
    sput v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sDisplayMode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->getScreenRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$001(Lcom/android/thememanager/receiver/WallpaperChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static getScreenRealSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 7

    .line 93
    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    const-string/jumbo v0, "window"

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 99
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v1, "getRealSize"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 104
    :goto_0
    sget-object p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p0, v0, :cond_1

    .line 105
    sget-object p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 106
    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 107
    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 109
    :cond_1
    sget-object p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sScreen:Landroid/graphics/Point;

    return-object p0
.end method

.method public static isFold()Z
    .locals 2

    .line 113
    sget v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sDisplayMode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string v0, "persist.sys.muiltdisplay_type"

    const-string v1, "-1"

    .line 114
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sDisplayMode:I

    .line 117
    :cond_0
    sget v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sDisplayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "WallpaperChangedReceiver"

    const-string v0, "WallpaperChangedReceiver: onReceive"

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance p2, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->isFold()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "WallpaperChangedReceiver"

    const-string v0, "Register WallpaperChangedReceiver error!"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sInstance:Lcom/android/thememanager/receiver/WallpaperChangedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static unRegister(Landroid/content/Context;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->isFold()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "WallpaperChangedReceiver"

    const-string v0, "UnRegister WallpaperChangedReceiver error!"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->sInstance:Lcom/android/thememanager/receiver/WallpaperChangedReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/android/thememanager/receiver/WallpaperChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
