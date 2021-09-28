.class public Lcom/miui/home/launcher/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mHiddenAppListObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOldVersion:I

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

.field private mUpgradeInApplicationSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    .line 255
    new-instance v0, Lcom/miui/home/launcher/Application$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Application$1;-><init>(Lcom/miui/home/launcher/Application;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Application;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 240
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 245
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0, v0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 360
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 364
    sget-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private initBoomObject()V
    .locals 1

    .line 157
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$EtwWiD4tJ2TVYNFzyJL23toZks4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$EtwWiD4tJ2TVYNFzyJL23toZks4;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$createApplication$0()V
    .locals 1

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->enableHomeSchedBoost(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initBoomObject$1()V
    .locals 0

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method static synthetic lambda$loadFeedModules$2(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object p0

    const-string v0, "com.miui.newhome"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private loadFeedModules()V
    .locals 2

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 188
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 212
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dee.app.addicon"

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.amazon.dee.app.cancelicon"

    .line 174
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_hide_app_list"

    .line 251
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x19555864

    .line 195
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 196
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 200
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    goto :goto_0

    .line 203
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    .line 207
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setMiuiSdkContext()V
    .locals 3

    :try_start_0
    const-string v0, "com.miui.internal.util.PackageConstants"

    .line 369
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sApplication"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.application"

    const-string v2, "setMiuiSdkContext"

    .line 374
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setMiuiSdkContext()V

    const-string v0, "Launcher.application"

    const-string v1, "application attached"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 75
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 77
    invoke-static {p1}, Lcom/miui/home/library/utils/ProcessUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 80
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 83
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/common/ILauncherMonitor;->init(Lcom/miui/home/launcher/Application;)V

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 87
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    :cond_0
    return-void
.end method

.method public createApplication()V
    .locals 4

    .line 103
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 104
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-static {}, Lcom/miui/home/launcher/AppFilter;->newInstance()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 106
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 133
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.application"

    const-string v1, "createApplication SupportRecentsAndFsGesture"

    .line 136
    .line 137
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 138
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$g8U7XyhsQ0gv08uOMOp2L2K1-1U;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$g8U7XyhsQ0gv08uOMOp2L2K1-1U;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerContentObservers()V

    .line 148
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 149
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0, p0}, Lcom/miui/performance/PerformanceTools;->init(Landroid/app/Application;)V

    .line 151
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public getCEBaseContex()Landroid/content/Context;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.category"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 345
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 343
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method public getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 314
    instance-of p1, p1, Lcom/miui/home/launcher/Application;

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method public getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object v0
.end method

.method public hasBroughtToForeground()Z
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "activity"

    .line 265
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 266
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 267
    const-class v3, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public migrateData()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferenceForDirectBoot(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveAllSharedPreferenceToOneFile(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider;->moveDataBaseForDirectBoot(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->moveClockGadgetBackup(Landroid/content/Context;)V

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method public needToMigrate()Z
    .locals 2

    .line 216
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 284
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I

    move-result p1

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isInMultiWindowMode(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->setIsSystemInMultiWindowMode(Z)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->createApplication()V

    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 352
    iput-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 290
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 292
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 294
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p1
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 321
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public upgradeAppVersion()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    const-string v1, "app_version"

    iget v2, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
