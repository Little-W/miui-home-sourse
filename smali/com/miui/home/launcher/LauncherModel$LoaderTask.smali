.class Lcom/miui/home/launcher/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private isUserUnLocked:Z

.field private mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeepShortcutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunching:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private final mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private mStopped:Z

.field private mWaitingForCloudAppRestore:Z

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1131
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    .line 1135
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    const/4 p1, 0x1

    .line 1138
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1141
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1142
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1143
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 1144
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    .line 1145
    new-instance p1, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;

    invoke-direct {p1}, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 1146
    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;
    .locals 0

    .line 1127
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1127
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z
    .locals 0

    .line 1127
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1127
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    return p0
.end method

.method private bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 2145
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2146
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getInstallingApps()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 1712
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1715
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1716
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAppWidgetAvailable(I)Z
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1603
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1604
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1605
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPreinstalledApp(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "miui.os.MiuiInit"

    .line 1262
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isPreinstalledPackage"

    .line 1263
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "isPreinstalledPAIPackage"

    .line 1264
    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1265
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Launcher.Model"

    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preinstall check, no such method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_1
    const-string v3, "Launcher.Model"

    const-string v4, "app %s is preinstalled app %s"

    const/4 v5, 0x2

    .line 1270
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static synthetic lambda$loadAndBindMissingIcons$90(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 1226
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "Finally updating for missing icons"

    .line 1227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-interface {p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadAppWidget$91(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 1587
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    return-void
.end method

.method public static synthetic lambda$loadAppWidget$92(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)Ljava/lang/Void;
    .locals 0

    .line 1593
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$loadAppWidget$93(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->finishPending()V

    :cond_0
    return-void
.end method

.method private loadAllApps()V
    .locals 9

    .line 1275
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1284
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 1285
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$1300(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V

    .line 1286
    invoke-virtual {v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->run()V

    .line 1288
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1290
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v2

    .line 1292
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1293
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 1294
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1296
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 1297
    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    if-eqz v5, :cond_4

    .line 1299
    invoke-static {v5}, Lcom/miui/launcher/utils/LauncherUtils;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/AppInfo;->setAppLaunchCount(I)V

    .line 1300
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/AppInfo;->setLastTimeUsed(J)V

    goto :goto_2

    .line 1304
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAndBindMissingIcons(Z)V
    .locals 10

    .line 1154
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string p1, "Launcher.Model"

    const-string v0, "No callback to call back"

    .line 1160
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1165
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Launcher.Model"

    const-string v0, "No main activity found, the system is so clean"

    .line 1166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1170
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1171
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/ComponentKey;

    .line 1172
    iget-boolean v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    return-void

    .line 1176
    :cond_4
    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1177
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 1181
    :cond_5
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v5, v5, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 1184
    :cond_6
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isPreinstalledApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1185
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 1190
    :cond_7
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez p1, :cond_8

    iget-object v3, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1191
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 1195
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1198
    :cond_9
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->clearAll()V

    .line 1200
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    .line 1201
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$800(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1202
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 1203
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onAppInProgressInstalled(Ljava/lang/String;)V

    .line 1204
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1207
    :cond_a
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez p1, :cond_e

    .line 1208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1212
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1213
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1215
    :cond_b
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 1216
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1217
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1219
    :cond_c
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1220
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1221
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1224
    :cond_d
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v3

    .line 1225
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$GYuV5mNQaWgXqf4OCCfDSFpr8W8;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$GYuV5mNQaWgXqf4OCCfDSFpr8W8;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1231
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1232
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1, v7}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1234
    :cond_e
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1249
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAndBindScreens()V
    .locals 4

    .line 1962
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllScreens(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1963
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v1, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "load screens running with no launcher"

    .line 1966
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1969
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAndBindWorkspace(Z)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1986
    monitor-enter p0

    .line 1987
    :try_start_0
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$2100(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result v2

    .line 1988
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/home/launcher/LauncherModel;->access$2102(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 1989
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "Launcher.Model"

    .line 1994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAndBindWorkspace loaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1997
    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v5

    .line 1999
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2000
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2001
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 2002
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2003
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2005
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v6}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v6, :cond_0

    const-string v0, "Launcher.Model"

    const-string v2, "LoaderThread running with no launcher"

    .line 2008
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2011
    :cond_0
    invoke-interface {v6}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->prepareBeforeBindItems()V

    .line 2012
    invoke-direct {v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 2014
    iget-boolean v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v7, :cond_1

    return-void

    .line 2015
    :cond_1
    new-instance v7, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v11, "itemType=?"

    new-array v12, v4, [Ljava/lang/String;

    const/4 v14, 0x2

    .line 2018
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const-string v13, "cellY ASC, cellX ASC, itemType ASC"

    .line 2015
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2020
    invoke-interface {v10}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2022
    iget-boolean v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v8, :cond_2

    return-void

    .line 2023
    :cond_2
    invoke-direct {v1, v7, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2025
    iget-boolean v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v8, :cond_3

    return-void

    .line 2026
    :cond_3
    new-instance v8, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, " JOIN screens ON favorites.screen=screens._id"

    invoke-static {v10}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getJoinContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 2029
    invoke-static {}, Lcom/miui/home/launcher/ItemInfo;->getColumnsWithScreenType()[Ljava/lang/String;

    move-result-object v18

    const-string v19, "container=? AND itemType!=?"

    new-array v10, v14, [Ljava/lang/String;

    const/16 v11, -0x64

    .line 2031
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v4

    const-string v21, "screens.screenOrder ASC, cellY ASC, cellX ASC, itemType ASC"

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    .line 2026
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2034
    invoke-interface {v12}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v8, v9, v10, v12}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2036
    iget-boolean v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v9, :cond_4

    return-void

    .line 2037
    :cond_4
    invoke-direct {v1, v8, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2039
    iget-boolean v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v9, :cond_5

    return-void

    .line 2040
    :cond_5
    new-instance v9, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v17, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v19, "container!=? AND itemType!=?"

    new-array v12, v14, [Ljava/lang/String;

    .line 2042
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v4

    const-string v21, "cellX ASC"

    move-object/from16 v16, v10

    move-object/from16 v20, v12

    .line 2040
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2044
    invoke-interface {v11}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v9, v4, v10, v11}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2046
    iget-boolean v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_6

    return-void

    .line 2047
    :cond_6
    invoke-direct {v1, v9, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2049
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 2050
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AllAppsList;->setRemovedInfoList(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    .line 2051
    invoke-virtual {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2052
    invoke-virtual {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V

    .line 2055
    :cond_7
    invoke-virtual {v7}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2056
    invoke-virtual {v8}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2057
    invoke-virtual {v9}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2059
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    invoke-virtual {v8}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2061
    invoke-virtual {v9}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2062
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2063
    new-instance v5, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "_id"

    .line 2065
    invoke-static {v7, v4}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2063
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v7, v8}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2068
    invoke-direct {v1, v5, v8, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2071
    :cond_8
    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 2072
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2074
    :try_start_1
    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;

    invoke-direct {v6, v1, v0, v2, v3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;J)V

    invoke-virtual {v5, v6}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2085
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2086
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 2085
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1989
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1614
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isAppWidgetAvailable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1615
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1616
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1617
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    .line 1618
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1619
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v0, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1621
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "appWidgetId"

    .line 1622
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-static {v1, v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    const-string v0, "Launcher.Model"

    const-string v1, "rebind app widget success"

    .line 1624
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Launcher.Model"

    const-string v1, "rebind app widget failed"

    .line 1626
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_2
    :goto_0
    iget v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isAppWidgetAvailable(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Launcher.Model"

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " appWidgetId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1633
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1635
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$U3ZXAF8z2UAZnRxAVonT_8y_szs;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$U3ZXAF8z2UAZnRxAVonT_8y_szs;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1641
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1642
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1643
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 1644
    iput-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    .line 1645
    iget-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v1, -0x64

    cmp-long p2, p2, v1

    if-eqz p2, :cond_5

    const-string p1, "Launcher.Model"

    const-string p2, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 1646
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1650
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needRecalculateWidgetSpan()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1651
    new-instance p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1652
    iget-object p3, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->reCalculateSpan(Lcom/miui/home/launcher/ItemInfo;II)V

    .line 1654
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :goto_1
    return-void
.end method

.method private loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 7

    const/16 v0, 0x9

    .line 1572
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    .line 1573
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1574
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 v2, 0x0

    .line 1575
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    move-result-wide v3

    const/16 v5, 0x13

    .line 1576
    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    .line 1578
    invoke-direct {p0, v3, v4, v0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadRestoreAppWidget(JILandroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "load restore app widget failed"

    .line 1579
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1584
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1585
    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    goto :goto_0

    .line 1587
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$zhBmkbk8nN7y6IRAIEj7leLBZP0;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$zhBmkbk8nN7y6IRAIEj7leLBZP0;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1588
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1590
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1592
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$NDvtk1qURSGcYCf-UTDtFzKe2Ac;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->waitForUserUnlockAndRunOnNonUiThread(Ljava/util/function/Supplier;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private loadDBComplete()Z
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v1, "database_ready_pref_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadFolder(Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    .line 1559
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1560
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Launcher.Model"

    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t loadFolder, because duplicate id("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1564
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1565
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/FolderInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1566
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadGadget(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 4

    const/16 v0, 0x9

    .line 1721
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1722
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    const/16 v2, 0xf

    .line 1724
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1725
    invoke-static {v0, v2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgeInfo(ILjava/lang/String;)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1727
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1728
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v0, :cond_2

    .line 1735
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "remove gadget"

    .line 1737
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_1

    .line 1740
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1743
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_4
    return-void
.end method

.method private loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2094
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 2096
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadGadget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2112
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2108
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadFolder(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2104
    :cond_1
    :pswitch_3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadShortcut(Lcom/miui/home/launcher/model/LoaderCursor;ILcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.Model"

    const-string v2, "Desktop items loading interrupted:"

    .line 2120
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2124
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->close()V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadRestoreAppWidget(JILandroid/database/Cursor;)Z
    .locals 5

    const/16 v0, 0x17

    .line 1672
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1675
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1678
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1680
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1683
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 1686
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v3

    .line 1687
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1688
    new-instance v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v4, p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1689
    iput-wide p1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    .line 1690
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1, p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1691
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 1692
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 1693
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz p1, :cond_4

    .line 1695
    iget-object p2, p1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1696
    iget p1, p1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 1698
    :cond_4
    iget-wide p1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 p3, -0x64

    cmp-long p1, p1, p3

    if-eqz p1, :cond_5

    const-string p1, "Launcher.Model"

    const-string p2, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 1699
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1702
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v2
.end method

.method private loadShortcut(Lcom/miui/home/launcher/model/LoaderCursor;ILcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    const/4 v3, 0x1

    .line 1760
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 1763
    :try_start_0
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1769
    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    move-result-wide v14

    .line 1770
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v13

    const-string v8, "Launcher.Model"

    .line 1772
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadShortcut, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", userHandle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_9

    .line 1778
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1780
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackInvalidateApplication(Ljava/lang/String;)V

    .line 1782
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, v8, v13}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 1783
    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v9}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v13, :cond_3

    if-nez v9, :cond_1

    goto :goto_0

    .line 1812
    :cond_1
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v4, :cond_2

    .line 1814
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    :cond_2
    const-string v0, "Remove: TwelveKeyDialer"

    .line 1816
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    if-nez v13, :cond_4

    move v10, v3

    goto :goto_1

    .line 1789
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_1

    .line 1796
    :cond_5
    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v10

    .line 1797
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6, v13}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-nez v10, :cond_6

    move v10, v3

    goto :goto_1

    :cond_6
    move v10, v6

    :goto_1
    if-eqz v10, :cond_8

    if-eqz v4, :cond_7

    .line 1801
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 1803
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove: id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ". user is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->checkPackageNameChange(Lcom/miui/home/launcher/util/ComponentKey;)V

    .line 1806
    :cond_8
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1807
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/miui/launcher/utils/LauncherUtils;->getBackupProcessingItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Launcher.Model"

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned because user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const/16 v0, 0x11

    if-ne v1, v0, :cond_a

    .line 1822
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1823
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1824
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1825
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "pkgName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInLinkList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1827
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(not in db) Remove russia_pre_install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1832
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_a
    if-nez v1, :cond_d

    .line 1838
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v12, 0x4

    const/4 v0, 0x2

    const/16 v1, 0x16

    const/16 v16, 0x14

    move-object v9, v5

    move-object/from16 v11, p1

    move-object v6, v13

    move v13, v0

    move-wide/from16 v20, v14

    move v14, v1

    move/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/miui/home/launcher/LauncherModel;->getAppShortcutInfo(Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIII)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    const-string v1, "Launcher.Model"

    .line 1841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadShortcut, after getShortcutInfoFromApplication, info="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    const-string v9, "null"

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_c

    .line 1843
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v8, v8, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    move/from16 v9, p4

    invoke-virtual {v1, v8, v0, v9}, Lcom/miui/home/launcher/allapps/LauncherMode;->canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Launcher.Model"

    .line 1844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadShortcut, after getShortcutInfoFromApplication, mLoadedApps contains info, set null, info="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "Launcher.Model"

    const-string v6, "loadShortcut, after getShortcutInfoFromApplication, mLoadedApps contains info, set null"

    .line 1846
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1848
    :cond_c
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    new-instance v8, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher.Model"

    const-string v6, "loadShortcut, after getShortcutInfoFromApplication, put into mLoadedApps"

    .line 1849
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    move-wide/from16 v20, v14

    .line 1852
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "com.miui.securitycore"

    .line 1853
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.miui.securityspace.ui.activity.SwitchUserActivity"

    .line 1854
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1855
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v6

    if-ne v0, v6, :cond_e

    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 1856
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "reomve second space icon"

    .line 1857
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 1860
    :cond_e
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v11, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x6

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x16

    const/16 v19, 0x14

    move-object v9, v5

    move-object/from16 v10, p1

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v19}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIIIIII)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 1863
    instance-of v1, v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    if-eqz v1, :cond_10

    .line 1864
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v1

    .line 1865
    iget-object v6, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove dup deepShortcut, info="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 1869
    :cond_f
    iget-object v6, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "Launcher.Model"

    .line 1872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadShortcut, not application shortcutInfo, info="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    const-string v8, "null"

    goto :goto_3

    :cond_11
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v0, :cond_12

    .line 1876
    iput-object v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 1877
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_12
    if-eqz v0, :cond_14

    .line 1882
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1884
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v6, v0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v1, v6}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v6, 0x8

    goto :goto_5

    :cond_13
    const/4 v6, 0x0

    .line 1885
    :goto_5
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    move v6, v3

    goto :goto_6

    :cond_14
    const/4 v6, 0x0

    :goto_6
    if-nez v0, :cond_15

    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading shortcut "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v20

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " component:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1897
    :cond_15
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_1d

    .line 1898
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressInfoList;->waitingForReady()V

    const-string v1, "Launcher.Model"

    .line 1899
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load progress shortcut "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1901
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1902
    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    move-object v8, v0

    check-cast v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v1, v8, v3}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 1903
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "invalidClassName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "com.android.vending"

    .line 1905
    iget-object v3, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1906
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v1

    .line 1907
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1908
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz v1, :cond_17

    .line 1910
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1911
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 1913
    :cond_16
    iget v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    iput v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 1914
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    .line 1915
    iget-object v1, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1918
    :cond_17
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 1919
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->addActiveSession(Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v4, p3

    const/4 v8, 0x0

    .line 1921
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    move v6, v8

    goto :goto_8

    .line 1925
    :cond_19
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    goto :goto_8

    :cond_1a
    const/4 v8, 0x0

    goto :goto_7

    :cond_1b
    const/4 v8, 0x0

    goto :goto_7

    :cond_1c
    const/4 v8, 0x0

    .line 1928
    :goto_7
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    move v6, v8

    :cond_1d
    :goto_8
    if-eqz v0, :cond_1e

    .line 1933
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->sync(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1e
    if-eqz v6, :cond_1f

    const-string v1, "Launcher.Model"

    .line 1936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadShortcut, bind item to launcher, item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v7, v1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1f
    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v0, "Launcher.Model"

    const-string v2, "loadShortcut, parseUri error"

    .line 1765
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1661
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 1665
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1668
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    return-object v1
.end method

.method private reCalculateSpan(Lcom/miui/home/launcher/ItemInfo;II)V
    .locals 1

    .line 1748
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p2

    .line 1749
    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p3

    .line 1750
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, p3, :cond_1

    .line 1751
    :cond_0
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 1752
    iput p3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1753
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method private removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 1946
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/model/LoaderCursor;->onRemoveProgressShortcutInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 1948
    :cond_1
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p4

    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    .line 1949
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p4, p4, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 1951
    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 1954
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "remove progress package:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 1955
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide p3, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p1, :cond_3

    .line 1957
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_3
    return-void
.end method

.method private startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 3

    .line 2129
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2130
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2134
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    const-string v0, "Launcher.Model"

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z
    .locals 2

    .line 1553
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isLaunching()Z
    .locals 1

    .line 1150
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 21

    move-object/from16 v9, p0

    .line 1319
    :try_start_0
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, v9}, Lcom/miui/home/launcher/LauncherModel;->beginLoader(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;

    move-result-object v10
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x0

    .line 1327
    :try_start_1
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1329
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    const-wide/16 v12, 0x32

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-nez v4, :cond_0

    .line 1330
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->hasBroughtToForeground()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-nez v4, :cond_0

    goto/16 :goto_b

    .line 1339
    :cond_0
    :try_start_3
    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v2, :cond_2

    if-eqz v10, :cond_1

    .line 1512
    :try_start_4
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    return-void

    .line 1341
    :cond_2
    :try_start_5
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1343
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-nez v2, :cond_3

    .line 1344
    :try_start_6
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    iget-object v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 1347
    :cond_3
    :try_start_7
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_last_label_locale"

    invoke-static {v2, v3, v11}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1348
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    iget-object v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v3, v1}, Lcom/miui/home/launcher/LauncherModel;->access$1402(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 1351
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->loadApps()V

    .line 1353
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadDBComplete()Z

    move-result v1

    .line 1355
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v14

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    .line 1356
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->init(Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-eqz v2, :cond_6

    .line 1358
    :try_start_8
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v6, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/LauncherProvider;->loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 1360
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    .line 1361
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v4

    const-string v5, "app_state_db_need_init"

    invoke-static {v4, v5, v14}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    move v15, v3

    goto :goto_3

    :cond_6
    move v15, v14

    :goto_3
    :try_start_9
    const-string v4, "Launcher.Model"

    .line 1363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoaderTask, loadDBComplete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedLoadDefaultWorkspace="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->initDataSource()V

    .line 1366
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v1, :cond_9

    .line 1367
    :try_start_a
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    .line 1368
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.miui.home:string/all_app_category_work"

    .line 1369
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    const-string v2, "com.miui.home:string/all_app_category_work"

    .line 1370
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->addFolder(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Launcher.Model"

    .line 1371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add work folder result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v1, "Launcher.Model"

    const-string v2, "work folder already exist"

    .line 1373
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v1, "Launcher.Model"

    const-string v2, "not have work user"

    .line 1376
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 1380
    :cond_9
    :goto_4
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1381
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 1382
    :try_start_c
    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_a

    move v2, v14

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1384
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 1386
    :try_start_d
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 1387
    :try_start_e
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_6

    :cond_b
    move-object v2, v11

    :goto_6
    if-nez v2, :cond_d

    .line 1389
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v10, :cond_c

    .line 1512
    :try_start_f
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_2

    :cond_c
    return-void

    .line 1392
    :cond_d
    :try_start_10
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 1394
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 1395
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$1600(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/IconCache;->clear()V

    .line 1396
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;

    invoke-direct {v6, v9, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1403
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1405
    :try_start_11
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItems()V

    .line 1406
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIconPositionForMiui11Upgrade()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v1, :cond_e

    :try_start_12
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1407
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    const-string v2, "com.android.fileexplorer"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V

    .line 1408
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    const-string v2, "com.xiaomi.vipaccount"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :cond_e
    :try_start_13
    const-string v1, "Launcher.Model"

    .line 1410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step 0: loading screens:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 1412
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindScreens()V

    .line 1413
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    const-string v1, "Launcher.Model"

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step 1: loading workspace:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1416
    :try_start_16
    invoke-direct {v9, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace(Z)V

    .line 1417
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1419
    :try_start_17
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_f

    goto/16 :goto_a

    .line 1425
    :cond_f
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1426
    :try_start_18
    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v2, :cond_10

    const-string v2, "Launcher.Model"

    .line 1427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting thread priority to BACKGROUND:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1430
    :cond_10
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 1432
    :try_start_19
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1433
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "extra_micloudapp_provisioned"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Launcher.Model"

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step 2: loading restoring items from cloudAppBackup:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v4, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;

    invoke-direct {v4, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    .line 1442
    iput-boolean v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1443
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1444
    :try_start_1a
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_11

    .line 1445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1448
    invoke-virtual {v1, v2, v4, v5, v8}, Lcom/miui/home/launcher/progress/ProgressManager;->loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 1450
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 1451
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1452
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    const/4 v1, -0x1

    .line 1453
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1455
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object v11, v2

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[ILjava/util/List;)V

    invoke-virtual {v11, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1468
    :cond_11
    monitor-exit v18

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v18
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    throw v1

    :cond_12
    :goto_7
    move v1, v14

    .line 1471
    :goto_8
    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    if-eqz v2, :cond_13

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_13

    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_13

    .line 1472
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x32

    goto :goto_8

    :cond_13
    const-string v1, "Launcher.Model"

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step 3: loading missing icons:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 1478
    :try_start_1c
    invoke-direct {v9, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons(Z)V

    .line 1479
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    const-string v1, "Launcher.Model"

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step 4: loading all apps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1483
    :try_start_1e
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAllApps()V

    .line 1484
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 1485
    :try_start_1f
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const-string v1, "Launcher.Model"

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish loading using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms , isUserUnLocked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1491
    :try_start_20
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_9

    :cond_15
    const/4 v11, 0x0

    :goto_9
    if-nez v11, :cond_17

    .line 1493
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    if-eqz v10, :cond_16

    .line 1512
    :try_start_21
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_21 .. :try_end_21} :catch_2

    :cond_16
    return-void

    .line 1496
    :cond_17
    :try_start_22
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;

    invoke-direct {v3, v9, v11, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Z)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1503
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 1507
    :goto_a
    :try_start_23
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 1508
    :try_start_24
    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1509
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 1510
    :try_start_25
    iput-boolean v14, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 1511
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->commit()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v10, :cond_1c

    .line 1512
    :try_start_26
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_26} :catch_2

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 1509
    :try_start_27
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :try_start_28
    throw v2
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 1503
    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :try_start_2a
    throw v2
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 1484
    :try_start_2b
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    :try_start_2c
    throw v2
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1479
    :try_start_2d
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    :try_start_2e
    throw v2
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1430
    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    :try_start_30
    throw v2
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 1417
    :try_start_31
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    :try_start_32
    throw v2
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 1413
    :try_start_33
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    :try_start_34
    throw v2
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_0
    .catchall {:try_start_34 .. :try_end_34} :catchall_a

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 1403
    :try_start_35
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_8

    :try_start_36
    throw v2
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_0
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 1384
    :try_start_37
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    :try_start_38
    throw v2

    :cond_18
    :goto_b
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_19

    .line 1333
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    if-nez v4, :cond_19

    .line 1334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    :cond_19
    add-long/2addr v2, v12

    .line 1337
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_0
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 1319
    :try_start_39
    throw v11
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    :goto_c
    if-eqz v10, :cond_1b

    if-eqz v11, :cond_1a

    .line 1512
    :try_start_3a
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3a .. :try_end_3a} :catch_2

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_3b
    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_1a
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V

    :cond_1b
    :goto_d
    throw v1
    :try_end_3b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3b .. :try_end_3b} :catch_2

    :catch_2
    const-string v1, "Launcher.Model"

    const-string v2, "Loader stopped, ignore"

    .line 1513
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_e
    return-void
.end method

.method public stopLocked()V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string v1, "stop LoaderTask"

    .line 1518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1519
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return-void
.end method

.method tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 3

    .line 1530
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1531
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1532
    monitor-exit v0

    return-object v2

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1536
    monitor-exit v0

    return-object v2

    .line 1539
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eq v1, p1, :cond_2

    .line 1541
    monitor-exit v0

    return-object v2

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "Launcher.Model"

    const-string v1, "no mCallbacks"

    .line 1544
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    monitor-exit v0

    return-object v2

    .line 1548
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
