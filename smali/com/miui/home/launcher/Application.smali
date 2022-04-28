.class public Lcom/miui/home/launcher/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private mCurConfiguration:Landroid/content/res/Configuration;

.field private mCurrentVersion:I

.field private mHiddenAppListObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mIsInFoldLargeScreen:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOldVersion:I

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

.field private mUpgradeInApplicationSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 62
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    .line 244
    new-instance v0, Lcom/miui/home/launcher/Application$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Application$1;-><init>(Lcom/miui/home/launcher/Application;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Application;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 229
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 234
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0, v0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 356
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 360
    sget-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private initBoomObject()V
    .locals 1

    .line 170
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$EtwWiD4tJ2TVYNFzyJL23toZks4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$EtwWiD4tJ2TVYNFzyJL23toZks4;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isInFoldLargeScreenMode()Z
    .locals 2

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$createApplication$0()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->enableHomeSchedBoost(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initBoomObject$1()V
    .locals 0

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method static synthetic lambda$loadFeedModules$2(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 202
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

    .line 192
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 198
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 201
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$FGRy5i8nJsB2BRK5Eass1gjrk6E;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 217
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 3

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 182
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dee.app.addicon"

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.amazon.dee.app.cancelicon"

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_hide_app_list"

    .line 240
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 239
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1973928b

    .line 208
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 209
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 210
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method private setMiuiSdkContext()V
    .locals 3

    :try_start_0
    const-string v0, "com.miui.internal.util.PackageConstants"

    .line 365
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sApplication"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.application"

    const-string v2, "setMiuiSdkContext"

    .line 370
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mi/globallauncher/manager/BranchImplement;->setApplication(Landroid/app/Application;Z)V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setMiuiSdkContext()V

    const-string v0, "Launcher.application"

    const-string v2, "application attached"

    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 84
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 86
    invoke-static {p1}, Lcom/miui/home/library/utils/ProcessUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 89
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    .line 94
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 95
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    :cond_0
    return-void
.end method

.method public createApplication()V
    .locals 4

    .line 111
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchClientImplement;->internationalInitMethod(Lcom/miui/home/launcher/Application;)V

    .line 112
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 113
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-static {}, Lcom/miui/home/launcher/AppFilter;->newInstance()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 115
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 116
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 143
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.application"

    const-string v1, "createApplication SupportRecentsAndFsGesture"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 148
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$g8U7XyhsQ0gv08uOMOp2L2K1-1U;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$g8U7XyhsQ0gv08uOMOp2L2K1-1U;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 157
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskInfo;->getInstance()Lcom/miui/home/recents/ForegroundTaskInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->init(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerContentObservers()V

    .line 160
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 161
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0, p0}, Lcom/miui/performance/PerformanceTools;->init(Landroid/app/Application;)V

    .line 163
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreen:Z

    return-void
.end method

.method public getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.category"

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 341
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 339
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

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method public getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 310
    instance-of p1, p1, Lcom/miui/home/launcher/Application;

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method public getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object v0
.end method

.method public hasBroughtToForeground()Z
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "activity"

    .line 254
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 255
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 256
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

.method public isInFoldLargeScreen()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreen:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 268
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 273
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 275
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreen:Z

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 280
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I

    move-result p1

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isInMultiWindowMode(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->setIsSystemInMultiWindowMode(Z)V

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->createApplication()V

    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 347
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 348
    iput-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 286
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 288
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 290
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p1
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 317
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public upgradeAppVersion()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    const-string v1, "app_version"

    iget v2, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
