.class public Lcom/miui/home/recents/SystemUiProxyWrapper;
.super Ljava/lang/Object;
.source "SystemUiProxyWrapper.java"


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/MainThreadInitializedObject<",
            "Lcom/miui/home/recents/SystemUiProxyWrapper;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private mPip:Lcom/android/wm/shell/pip/IPip;

.field private mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

.field private mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

.field private mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

.field private mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

.field private mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/miui/home/recents/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$JTaWkTkRT6U18upfHCVBROZfPLc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$JTaWkTkRT6U18upfHCVBROZfPLc;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSoscSplitScreen:Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    .line 115
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v3

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v4

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v5

    move-object v1, p1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZ)V

    .line 121
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->addSoscSplitScreenListener()V

    .line 122
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->addSoscSplitScreenListener()V

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addSoscSplitScreenListener()V

    return-void
.end method

.method static synthetic lambda$static$2(Landroid/os/Bundle;)Lcom/miui/home/recents/SystemUiProxyWrapper;
    .locals 2

    const-string v0, "extra_miui_sysui_proxy"

    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    new-instance p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    .line 63
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUiProxyWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private registerRecentTasksListener()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    new-instance v1, Lcom/miui/home/recents/SystemUiProxyWrapper$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper$1;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/recents/IRecentTasks;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 76
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 77
    iput-object p2, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mPip:Lcom/android/wm/shell/pip/IPip;

    .line 78
    iput-object p3, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 79
    iput-object p4, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    .line 80
    iput-object p5, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    .line 81
    iput-object p6, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 82
    invoke-direct {p0, p7}, Lcom/miui/home/recents/SystemUiProxyWrapper;->initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;)V

    .line 83
    iput-object p8, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    .line 84
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRecentTasksListener()V

    .line 85
    iget-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object p2, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 86
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setRecentTasks(Lcom/android/wm/shell/recents/IRecentTasks;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 2

    .line 182
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 186
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of exitSplitScreen"

    .line 188
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 3

    .line 245
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 249
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "SystemUiProxyWrapper"

    const-string v2, "getMiddleSplitScreenSecondaryBounds error"

    .line 251
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public isProxySurvive()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$SystemUiProxyWrapper()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    return-void
.end method

.method public synthetic lambda$new$1$SystemUiProxyWrapper()V
    .locals 2

    .line 55
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$myWAy2B17ydbLNl8OVKVQXrEMWA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$myWAy2B17ydbLNl8OVKVQXrEMWA;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SystemUiProxyWrapper"

    const-string p1, "Failed to link sysui proxy death recipient"

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 306
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUiProxyWrapper"

    const-string v0, "Failed to notify SysUI of notifyAccessibilityButtonClicked"

    .line 308
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 2

    .line 313
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of notifyAccessibilityButtonLongClicked"

    .line 319
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .locals 2

    .line 324
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 328
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to call notifySwipeToHomeFinished"

    .line 330
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantGestureCompletion()V
    .locals 2

    .line 226
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of onAssistantGestureCompletion"

    .line 232
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUiProxyWrapper"

    const-string v0, "Failed to notify SysUI of onAssistantProgress"

    .line 221
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onFocusNotifyAnimEnd()V
    .locals 0

    return-void
.end method

.method public onFocusNotifyAnimStart()V
    .locals 0

    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 197
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUiProxyWrapper"

    const-string v0, "Failed to notify SysUI of onGestureLineProgress"

    .line 199
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->onGoingToRecentsLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public onSplitScreenInvoked()Z
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 173
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->onStartingSplitLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 261
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUiProxyWrapper"

    const-string v0, "Failed to notify SysUI of onStatusBarMotionEvent"

    .line 263
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V
    .locals 1

    .line 391
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    return-void
.end method

.method public setPipAnimationTypeToAlpha()V
    .locals 2

    .line 143
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz p0, :cond_0

    .line 145
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationTypeToAlpha()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed call setPipAnimationTypeToAlpha"

    .line 147
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V
    .locals 10

    move-object v0, p1

    if-eqz v0, :cond_0

    const-string v1, "extra_sysui_proxy"

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 69
    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    :cond_0
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUiProxyWrapper"

    const-string v0, "Failed to notify SysUI of startAssistant"

    .line 210
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 9

    move-object v0, p0

    .line 365
    iget-object v0, v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p4

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startIntentAndTask(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    move-object v0, p0

    .line 358
    iget-object v0, v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startIntentAndTaskWithLegacyTransition(Lcom/android/wm/shell/splitscreen/ISplitScreenT;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    return-void
.end method

.method public startOneHandedMode()V
    .locals 2

    const-string v0, "SystemUiProxyWrapper"

    .line 279
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz p0, :cond_0

    .line 281
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackStartOneHandedMode()V

    const-string p0, "startOneHandedMode"

    .line 283
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed call startOneHandedMode"

    .line 285
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startRecentsActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Z
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-nez v0, :cond_0

    const-string p0, "SystemUiProxyWrapper"

    const-string p1, "startRecentsActivity: did not start recents because mRecentTasks is null"

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityAtLeastU(Lcom/android/wm/shell/recents/IRecentTasks;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/ContextWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Z

    move-result p0

    return p0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 8

    .line 351
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startTasks(Lcom/android/wm/shell/splitscreen/ISplitScreenU;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 8

    .line 340
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startTasksWithLegacyTransition(Lcom/android/wm/shell/splitscreen/ISplitScreenT;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    return-void
.end method

.method public stopOneHandedMode()V
    .locals 2

    const-string v0, "SystemUiProxyWrapper"

    .line 291
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz p0, :cond_0

    .line 293
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V

    const-string p0, "stopOneHandedMode"

    .line 294
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed call stopOneHandedMode"

    .line 296
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopScreenPinning()V
    .locals 2

    .line 268
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed call stopScreenPinning"

    .line 274
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 1

    .line 395
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->unregisterRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method
