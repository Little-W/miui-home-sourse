.class public Lcom/miui/home/recents/TouchInteractionService;
.super Landroid/app/Service;
.source "TouchInteractionService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/TouchInteractionService$_lancet;
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

.field public static final MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

.field private static sConnected:Z

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mIsUserUnlocked:Z

.field private final mMyBinder:Landroid/os/IBinder;

.field private mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

.field private mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

.field private mRecentsModel:Lcom/miui/home/recents/RecentsModel;

.field private mSystemUiStateFlags:I

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/miui/home/launcher/util/LooperExecutor;

    .line 53
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    const/4 v0, 0x0

    .line 127
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$1;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    .line 140
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$2;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/TouchInteractionService;Lcom/android/systemui/shared/recents/ISystemUiProxy;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/TouchInteractionService;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiFlagsChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiProxySet()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    return-void
.end method

.method public static getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 60
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FullScreenGestureThread"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->sHandlerThread:Landroid/os/HandlerThread;

    .line 63
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private initWhenUserUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 166
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mRecentsModel:Lcom/miui/home/recents/RecentsModel;

    .line 167
    invoke-static {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 169
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper;

    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/OverviewCommandHelper;-><init>(Landroid/content/Context;Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 171
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiProxySet()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/TouchInteractionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onSystemUiFlagsChanged()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method private onSystemUiProxySet()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mRecentsModel:Lcom/miui/home/recents/RecentsModel;

    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mISystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    .line 215
    invoke-static {p1, v0}, Lcom/miui/home/recents/TouchInteractionService$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 151
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/TouchInteractionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 160
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 203
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/TouchInteractionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
