.class public Lcom/miui/home/launcher/LauncherApplication;
.super Lmiui/external/ApplicationDelegate;
.source "LauncherApplication.java"


# instance fields
.field private mHiddenAppListObserver:Landroid/database/ContentObserver;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 226
    new-instance v0, Lcom/miui/home/launcher/LauncherApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherApplication$1;-><init>(Lcom/miui/home/launcher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 3

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.category"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 213
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    :goto_1
    throw v2
.end method

.method public static getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    instance-of v0, v0, Lcom/miui/home/launcher/Application;

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method public static getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method private registerContentObservers()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_hide_app_list"

    .line 222
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherApplication;->mHiddenAppListObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 191
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 198
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object v0
.end method

.method public hasBroughtToForeground()Z
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "activity"

    .line 129
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 131
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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 58
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 60
    invoke-static {p0}, Lcom/miui/home/library/utils/ProcessUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherApplication;->setTheme(I)V

    .line 63
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 64
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-static {}, Lcom/miui/home/launcher/AppFilter;->newInstance()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/LauncherApplication;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 66
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 93
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherApplication;->registerContentObservers()V

    .line 102
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 103
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 159
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 114
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 118
    invoke-static {p0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->onStop()V

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->release()V

    .line 121
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->unregister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p1
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method
