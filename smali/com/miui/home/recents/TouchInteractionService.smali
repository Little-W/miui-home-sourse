.class public Lcom/miui/home/recents/TouchInteractionService;
.super Landroid/app/Service;
.source "TouchInteractionService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field public static final GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field public static final MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

.field private static sConnected:Z

.field private static sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

.field private static sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mIsUserUnlocked:Z

.field private final mMyBinder:Landroid/os/IBinder;

.field private mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

.field private mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

.field private mSystemUiStateFlags:I

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    .line 46
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGestureSecondaryLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 47
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 48
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    .line 49
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGesturePriorityLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    const/4 v0, 0x0

    .line 136
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$1;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    .line 147
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$2;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/TouchInteractionService;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiFlagsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    return-void
.end method

.method public static getGesturePriorityLooper()Landroid/os/Looper;
    .locals 3

    .line 68
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FsGesturePriorityThread"

    const/16 v2, -0x14

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    .line 71
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getGestureSecondaryLooper()Landroid/os/Looper;
    .locals 3

    .line 58
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FsGestureSecondaryThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    .line 61
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private initWhenUserUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 173
    invoke-static {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    .line 176
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper;

    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/OverviewCommandHelper;-><init>(Landroid/content/Context;Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 179
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

    .line 186
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    .line 214
    .line 215
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 164
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/TouchInteractionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/TouchInteractionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
