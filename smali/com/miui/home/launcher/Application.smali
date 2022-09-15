.class public Lcom/miui/home/launcher/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private mCurConfiguration:Landroid/content/res/Configuration;

.field private mCurrentVersion:I

.field private mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

.field private final mHiddenAppListObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mIsInFoldLargeScreenMode:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOldVersion:I

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 64
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 261
    new-instance v0, Lcom/miui/home/launcher/Application$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Application$1;-><init>(Lcom/miui/home/launcher/Application;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Application;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method private firstInitInFoldDevice()V
    .locals 2

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Application;->initCurrentScreenMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 109
    new-instance v0, Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-direct {v0}, Lcom/miui/launcher/common/FoldDisplayChangeManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Application$0cuBt4dORLZJk3p4t5d38hMk14o;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Application$0cuBt4dORLZJk3p4t5d38hMk14o;-><init>(Lcom/miui/home/launcher/Application;)V

    invoke-virtual {v0, v1}, Lcom/miui/launcher/common/FoldDisplayChangeManager;->addAndStartMonitor(Lcom/miui/launcher/common/FoldDisplayChangeListener;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 246
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 251
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0, v0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 376
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 380
    sget-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private initBoomObject()V
    .locals 1

    .line 187
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$kg-fWodQNSsslwKvPvw4jcnPzwc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$kg-fWodQNSsslwKvPvw4jcnPzwc;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initCurrentScreenMode(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$createApplication$1()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->enableHomeSchedBoost(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$firstInitInFoldDevice$0(Lcom/miui/home/launcher/Application;IZ)V
    .locals 3

    const-string v0, "Launcher.application"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayFoldChanged , displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  , folded  = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p2, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 113
    sget-object p1, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    iget-boolean p2, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->screenModeUpdate(Z)V

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAllowRotate()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setRotatable(Z)V

    return-void
.end method

.method static synthetic lambda$initBoomObject$2()V
    .locals 0

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method static synthetic lambda$loadFeedModules$3(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 219
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

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 218
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 234
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 3

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dee.app.addicon"

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.amazon.dee.app.cancelicon"

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_hide_app_list"

    .line 257
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1a2ab048

    .line 225
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 226
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 227
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method private setMiuiSdkContext()V
    .locals 3

    :try_start_0
    const-string v0, "com.miui.internal.util.PackageConstants"

    .line 385
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sApplication"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.application"

    const-string v2, "setMiuiSdkContext"

    .line 390
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mi/globallauncher/manager/BranchImplement;->setApplication(Landroid/app/Application;Z)V

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setMiuiSdkContext()V

    const-string v0, "Launcher.application"

    const-string v2, "application attached"

    .line 83
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 85
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 87
    invoke-static {p1}, Lcom/miui/home/library/utils/ProcessUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->firstInitInFoldDevice()V

    .line 89
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 92
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 93
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 95
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    .line 97
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 98
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    :cond_0
    return-void
.end method

.method public createApplication()V
    .locals 4

    .line 128
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchClientImplement;->internationalInitMethod(Lcom/miui/home/launcher/Application;)V

    .line 129
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 130
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 132
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 133
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 160
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.application"

    const-string v1, "createApplication SupportRecentsAndFsGesture"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 165
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$Aua2t1OQKpTO1H8_JuGW2xq0DUw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$Aua2t1OQKpTO1H8_JuGW2xq0DUw;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 174
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->init(Landroid/content/Context;)V

    .line 175
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->init(Landroid/content/Context;)V

    .line 177
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerContentObservers()V

    .line 178
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 179
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0, p0}, Lcom/miui/performance/PerformanceTools;->init(Landroid/app/Application;)V

    .line 181
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.category"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 361
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 359
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

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method public getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 330
    instance-of p1, p1, Lcom/miui/home/launcher/Application;

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method public getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object v0
.end method

.method public hasBroughtToForeground()Z
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "activity"

    .line 271
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 272
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 273
    const-class v3, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isInFoldLargeScreen()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInFoldLargeScreenMode()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 281
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Launcher.application"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged , sw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_1
    and-int/lit16 v0, v0, 0x480

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_2

    const-string v0, "Launcher.application"

    const-string v1, "onConfigurationChanged, orientation or screen size update !"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_4

    .line 300
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I

    move-result p1

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isInMultiWindowMode(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->setIsSystemInMultiWindowMode(Z)V

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->createApplication()V

    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 367
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 368
    iput-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 310
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p1
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 337
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public upgradeAppVersion()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    const-string v1, "app_version"

    iget v2, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
