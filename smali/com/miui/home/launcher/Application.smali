.class public Lcom/miui/home/launcher/Application;
.super Lmiui/external/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mOldVersion:I

.field private mUpgradeInApplicationSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 161
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;
    .locals 1

    .line 157
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Application;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherApplication;

    return-object p0
.end method

.method private initBoomObject()V
    .locals 1

    .line 70
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$23AL0cGXfZhXzYLZs_hTpeIzq6k;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$23AL0cGXfZhXzYLZs_hTpeIzq6k;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$initBoomObject$489()V
    .locals 0

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method static synthetic lambda$loadFeedModules$490(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 102
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

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 101
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$DaaSdNBm4OPq5z0nrUipyLgRvhM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$DaaSdNBm4OPq5z0nrUipyLgRvhM;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 125
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 3

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dee.app.addicon"

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.amazon.dee.app.cancelicon"

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x192741b2

    .line 108
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 109
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 113
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    goto :goto_0

    .line 116
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    .line 120
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/external/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string v0, "Launcher.application"

    const-string v1, "application attached"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 51
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 53
    invoke-static {p1}, Lcom/miui/home/library/utils/ProcessUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/common/ILauncherMonitor;->init(Lcom/miui/home/launcher/Application;)V

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 63
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    :cond_0
    return-void
.end method

.method public getCEBaseContex()Landroid/content/Context;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public migrateData()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferenceForDirectBoot(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveAllSharedPreferenceToOneFile(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider;->moveDataBaseForDirectBoot(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->moveClockGadgetBackup(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method public needToMigrate()Z
    .locals 2

    .line 129
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

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .line 41
    new-instance v0, Lcom/miui/home/launcher/LauncherApplication;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherApplication;-><init>()V

    return-object v0
.end method

.method public upgradeAppVersion()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    const-string v1, "app_version"

    iget v2, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
