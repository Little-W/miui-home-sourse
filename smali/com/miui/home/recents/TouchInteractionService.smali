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

.field public static REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    .line 61
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "d13a661162ccf33e59f2d5aed8ad9c44"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "098ef03a15eaf14dfe66a596cf0eb510"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    .line 66
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGestureSecondaryLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 67
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 68
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGestureExecutor()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    const/4 v0, 0x0

    .line 174
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$1;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    .line 185
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$2;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/TouchInteractionService;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiFlagsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/TouchInteractionService;Landroid/content/res/Configuration;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService;->preloadOverview(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    return-void
.end method

.method private static getGestureExecutor()Lcom/miui/home/library/utils/LooperExecutor;
    .locals 2

    .line 95
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGesturePriorityLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static getGesturePriorityLooper()Landroid/os/Looper;
    .locals 3

    .line 104
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FsGesturePriorityThread"

    const/16 v2, -0x14

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    .line 107
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getGestureSecondaryLooper()Landroid/os/Looper;
    .locals 3

    .line 77
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FsGestureSecondaryThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    .line 80
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private initWhenUserUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 212
    invoke-static {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 213
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    .line 215
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper;

    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/OverviewCommandHelper;-><init>(Landroid/content/Context;Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/TouchInteractionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isUseGesturePriorityThread()Z
    .locals 4

    .line 86
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/utils/BoostHelper;->isSchedRTDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    if-nez v0, :cond_2

    .line 91
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method static synthetic lambda$preloadOverview$0(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "preloadOverview: startRecentsActivity"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, p0, v1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    return-void
.end method

.method private onSystemUiFlagsChanged()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method private preloadOverview(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "TouchInteractionService"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadOverview: mIsUserUnlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-eqz v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getHomePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadOverview: homePackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android"

    .line 272
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.provision"

    .line 273
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "TouchInteractionService"

    const-string v0, "stop preloadOverview: Launcher isStart."

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 285
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    .line 284
    invoke-virtual {v0, v2, p1}, Lcom/miui/home/recents/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "TouchInteractionService"

    const-string v0, "stop preloadOverview: canHandleConfigChanges."

    .line 286
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 292
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getMyHomeComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 293
    sget-object v0, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$bwZAYRD_p-Bh8HdFEjA-i_qaheA;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$bwZAYRD_p-Bh8HdFEjA-i_qaheA;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    .line 253
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "onConfigurationChanged"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService;->preloadOverview(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 197
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 203
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/TouchInteractionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 206
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 241
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/TouchInteractionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :catch_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method