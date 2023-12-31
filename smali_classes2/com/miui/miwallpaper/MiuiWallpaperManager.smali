.class public Lcom/miui/miwallpaper/MiuiWallpaperManager;
.super Ljava/lang/Object;
.source "MiuiWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

.field public static final IS_FOLD_DEVICE:Z

.field public static final MAML_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

.field public static final MI_WALLPAPER_WHICH_ALL:I

.field private static volatile sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.miwallpaper"

    const-string v2, "com.miui.miwallpaper.wallpaperservice.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->DEFAULT_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.miwallpaper.MiWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MAML_WALLPAPER_COMPONENT:Landroid/content/ComponentName;

    .line 53
    invoke-static {}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isFoldDevices()Z

    move-result v0

    sput-boolean v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    .line 59
    sget-boolean v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 61
    :goto_0
    sput v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 93
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Lcom/miui/miwallpaper/MiuiWallpaperManager$3;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$3;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mCallback:Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/miwallpaper/MiuiWallpaperManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/miwallpaper/MiuiWallpaperManager;Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mCallback:Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/miwallpaper/MiuiWallpaperManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method private bindService()V
    .locals 3

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.WallPaperControllerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.miwallpaper"

    .line 1033
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V
    .locals 3

    .line 144
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-nez v0, :cond_1

    .line 145
    const-class v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-nez v1, :cond_0

    const-string v1, "MiuiWallpaperManager"

    const-string v2, "init..."

    .line 147
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {v1, p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;-><init>(Landroid/content/Context;Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;)V

    sput-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 149
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerBroadcast()V

    .line 150
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->bindService()V

    goto :goto_0

    .line 152
    :cond_0
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-interface {p1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 154
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 156
    :cond_1
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-interface {p1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    :goto_1
    return-void
.end method

.method private static isFoldDevices()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 1059
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1060
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "persist.sys.muiltdisplay_type"

    aput-object v5, v4, v0

    .line 1061
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_0

    move v0, v6

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    const-string v2, "MiuiWallpaperManager"

    const-string v3, "isFoldDevices fail : "

    .line 1063
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isServiceReady()Z
    .locals 1

    .line 1048
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    if-nez p0, :cond_0

    const-string p0, "MiuiWallpaperManager"

    const-string v0, "mService is null."

    .line 1049
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSingleWhich(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 788
    :goto_1
    sget-boolean v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/16 v2, 0x8

    if-ne p0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is not single which: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiWallpaperManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public static isValidWhich(I)Z
    .locals 3

    if-lez p0, :cond_0

    .line 815
    sget v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidWhich: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiWallpaperManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private registerBroadcast()V
    .locals 2

    .line 1024
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 1025
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1026
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1027
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static staticDestroy()V
    .locals 3

    .line 195
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->unBindService()V

    .line 197
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "MiuiWallpaperManager"

    const-string v2, "staticDestroy, set sInstance null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 198
    sput-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    :cond_0
    return-void
.end method

.method private unBindService()V
    .locals 4

    .line 203
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "unBindService..."

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {v1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unLinkFailed"

    .line 208
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mCallback:Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 1

    .line 482
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "getMiuiWallpaperColors fail : "

    .line 486
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V
    .locals 1

    .line 760
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isValidWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string p2, "registerWallpaperChangeListener fail : "

    .line 764
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    invoke-interface {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;->unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "MiuiWallpaperManager"

    const-string v0, "unRegisterWallpaperChangeListener fail : "

    .line 777
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
