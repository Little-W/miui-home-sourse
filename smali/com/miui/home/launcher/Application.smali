.class public Lcom/miui/home/launcher/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private volatile mClickAppWaitForCallback:Z

.field private mCurConfiguration:Landroid/content/res/Configuration;

.field private mCurrentVersion:I

.field private mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private volatile mIsInFoldLargeScreenMode:Z

.field private final mIsInitApplicationConfigWhenAttachContext:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOldVersion:I

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 77
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    return-void
.end method

.method private checkThemeChange(Landroid/content/res/Configuration;)V
    .locals 3

    .line 333
    :try_start_0
    const-class p0, Landroid/content/res/Configuration;

    const-string v0, "extraConfig"

    const-class v1, Landroid/content/res/MiuiConfiguration;

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 335
    const-class v0, Landroid/content/res/MiuiConfiguration;

    const-string v1, "themeChangedFlags"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 337
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 338
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 342
    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x8

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    .line 344
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " checkThemeChange = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.application"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private disablePerfectIcons()V
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_miui_mod_icon_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private firstInitInFoldDevice()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Application;->initCurrentScreenMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstInitInFoldDevice , mIsInFoldLargeScreenMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-direct {v0}, Lcom/miui/launcher/common/FoldDisplayChangeManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Application$0cuBt4dORLZJk3p4t5d38hMk14o;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Application$0cuBt4dORLZJk3p4t5d38hMk14o;-><init>(Lcom/miui/home/launcher/Application;)V

    invoke-virtual {v0, v1}, Lcom/miui/launcher/common/FoldDisplayChangeManager;->addAndStartMonitor(Lcom/miui/launcher/common/FoldDisplayChangeListener;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 280
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 285
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0, v0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 449
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 453
    sget-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private initApplicationConfig()V
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    return-void
.end method

.method private initBoomObject()V
    .locals 0

    .line 221
    sget-object p0, Lcom/miui/home/launcher/-$$Lambda$Application$kg-fWodQNSsslwKvPvw4jcnPzwc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$kg-fWodQNSsslwKvPvw4jcnPzwc;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initCurrentScreenMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne p0, v0, :cond_1

    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAppToHomeAnimRunning()Z
    .locals 2

    .line 489
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 491
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getAppToHomeAnim2()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$createApplication$1()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->enableHomeSchedBoost(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initBoomObject$2()V
    .locals 0

    .line 222
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method static synthetic lambda$loadFeedModules$3(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object p0

    const-string v0, "com.miui.newhome"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$startActivity$4(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$startActivity$5(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 407
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Application$NMHkq9H3INOR1OnHZtKcVB5q3kY;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$Application$NMHkq9H3INOR1OnHZtKcVB5q3kY;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadFeedModules()V
    .locals 1

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 249
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 252
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 268
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.amazon.dee.app.addicon"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.amazon.dee.app.cancelicon"

    .line 238
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetSoscEvent()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetSoscEvent()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p0

    if-nez p0, :cond_1

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->resetSoscEvent()V

    :cond_1
    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1a2cdcc6

    .line 259
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 260
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 261
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method private setMiuiSdkContext()V
    .locals 2

    :try_start_0
    const-string v0, "com.miui.internal.util.PackageConstants"

    .line 458
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sApplication"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 461
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.application"

    const-string v1, "setMiuiSdkContext"

    .line 463
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static updateClickAppWaitForCallbackValue(Z)V
    .locals 1

    .line 482
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->setClickAppWaitForCallback(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 95
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mi/globallauncher/manager/BranchImplement;->setApplication(Landroid/app/Application;Z)V

    .line 97
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setMiuiSdkContext()V

    const-string v0, "Launcher.application"

    const-string v2, "application attached"

    .line 98
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 100
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->firstInitInFoldDevice()V

    .line 102
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 103
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->disablePerfectIcons()V

    .line 106
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 107
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initApplicationConfig()V

    .line 111
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 112
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 113
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    :cond_1
    return-void
.end method

.method public createApplication()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initApplicationConfig()V

    .line 161
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->init()V

    .line 162
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchClientImplement;->internationalInitMethod(Lcom/miui/home/launcher/Application;)V

    .line 163
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 164
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 166
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 167
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 194
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher.application"

    const-string v1, "createApplication SupportRecentsAndFsGesture"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 199
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$Aua2t1OQKpTO1H8_JuGW2xq0DUw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$Aua2t1OQKpTO1H8_JuGW2xq0DUw;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 208
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->init(Landroid/content/Context;)V

    .line 209
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->init(Landroid/content/Context;)V

    .line 211
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 212
    invoke-static {p0}, Lcom/market/sdk/utils/AppGlobal;->setContext(Landroid/content/Context;)V

    .line 213
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V

    .line 214
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    :cond_2
    const/16 p0, -0x14

    .line 217
    invoke-static {p0}, Lmiuix/animation/Folme;->setThreadPriority(I)V

    return-void
.end method

.method public getCEBaseContex()Landroid/content/Context;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.miui.home.launcher.category"

    .line 432
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 431
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method public getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 395
    instance-of p1, p1, Lcom/miui/home/launcher/Application;

    if-eqz p1, :cond_0

    .line 396
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object p0
.end method

.method public getMiuiHomeSettingActivity()Lcom/miui/home/settings/MiuiHomeSettingActivity;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

    return-object p0
.end method

.method public getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object p0
.end method

.method public hasBroughtToForeground()Z
    .locals 3

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "activity"

    .line 291
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 292
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    .line 293
    const-class v2, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isClickAppWaitForCallback()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lcom/miui/home/launcher/Application;->mClickAppWaitForCallback:Z

    return p0
.end method

.method public isInFoldLargeScreen()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInFoldLargeScreenMode()Z
    .locals 0

    .line 478
    iget-boolean p0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    return p0
.end method

.method public synthetic lambda$firstInitInFoldDevice$0$Application(IZ)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayFoldChanged , displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  , folded  = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.application"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p2, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->resetSoscEvent()V

    .line 134
    sget-object p1, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    iget-boolean p2, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->screenModeUpdate(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 301
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged , sw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  , isInFoldDeviceLargeScreen= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  , isInFoldLargeScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    .line 302
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 306
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 309
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v1, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_2

    .line 316
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->isInMultiWindowMode(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Launcher;->setIsSystemInMultiWindowMode(Z)V

    .line 320
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->checkThemeChange(Landroid/content/res/Configuration;)V

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    .line 325
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->updatePreloadBounds(Z)V

    .line 328
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->createApplication()V

    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 439
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 440
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->unRegisterPredictionUpdates()V

    .line 441
    iput-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 442
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 445
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method public setClickAppWaitForCallback(Z)V
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClickAppWaitForCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean p1, p0, Lcom/miui/home/launcher/Application;->mClickAppWaitForCallback:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 360
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 364
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method

.method public setMiuiHomeSettingActivity(Lcom/miui/home/settings/MiuiHomeSettingActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 3

    .line 402
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 404
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mainAnimNoFinishClear()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 405
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;

    invoke-direct {v2, p0, p2, p3}, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public upgradeAppVersion()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v1, "app_version"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
