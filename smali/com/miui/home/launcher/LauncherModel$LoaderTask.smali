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

.field private volatile mStopped:Z

.field private mWaitingForCloudAppRestore:Z

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1151
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1154
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    .line 1155
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    const/4 p1, 0x1

    .line 1158
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1161
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1162
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1163
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 1164
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    .line 1165
    new-instance p1, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;

    invoke-direct {p1}, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 1166
    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1147
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z
    .locals 0

    .line 1147
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1147
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    return p0
.end method

.method private bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 2262
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2263
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

    .line 1801
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 1802
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1805
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1806
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPreinstalledApp(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "miui.os.MiuiInit"

    .line 1297
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isPreinstalledPackage"

    .line 1298
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "isPreinstalledPAIPackage"

    .line 1299
    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1300
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

    .line 1303
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

    .line 1305
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

.method public static synthetic lambda$loadAndBindMissingIcons$0(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 1260
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "Finally updating for missing icons"

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-interface {p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadAppWidget$1(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 1669
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    return-void
.end method

.method public static synthetic lambda$loadAppWidget$2(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x1

    .line 1676
    iput-boolean v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    .line 1677
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$loadAppWidget$3(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 1727
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->finishPending()V

    :cond_0
    return-void
.end method

.method private loadAllApps()V
    .locals 9

    .line 1310
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

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

    .line 1319
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 1320
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$1400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$1500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V

    .line 1321
    invoke-virtual {v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->run()V

    .line 1323
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1326
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1327
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v2

    .line 1329
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1330
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 1331
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1333
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

    .line 1334
    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    if-eqz v5, :cond_4

    .line 1336
    invoke-static {v5}, Lcom/miui/launcher/utils/LauncherUtils;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/AppInfo;->setAppLaunchCount(I)V

    .line 1337
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/AppInfo;->setLastTimeUsed(J)V

    goto :goto_2

    .line 1342
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
    .locals 8

    .line 1174
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

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

    .line 1180
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1185
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Launcher.Model"

    const-string v0, "No main activity found, the system is so clean"

    .line 1186
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1191
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1192
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/ComponentKey;

    .line 1193
    iget-boolean v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_5

    return-void

    .line 1198
    :cond_5
    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1199
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 1204
    :cond_6
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v5, v5, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 1213
    :cond_7
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p1, :cond_9

    .line 1215
    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isPreinstalledApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v3, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1216
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1217
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1220
    :cond_9
    iget-object v3, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1221
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1225
    :cond_a
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1230
    :cond_b
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1231
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->clearAll()V

    .line 1233
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    .line 1234
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1235
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 1236
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onAppInProgressInstalled(Ljava/lang/String;)V

    .line 1237
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1240
    :cond_c
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez p1, :cond_10

    .line 1241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 1245
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1246
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1248
    :cond_d
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 1249
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1250
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1252
    :cond_e
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 1253
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1254
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1256
    :cond_f
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1, v4}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1257
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1, v5}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1258
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v3

    .line 1259
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v7, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v7}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1269
    :cond_10
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1284
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

    .line 2076
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllScreens(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2077
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v1, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "load screens running with no launcher"

    .line 2080
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2083
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

    .line 2100
    monitor-enter p0

    .line 2101
    :try_start_0
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$2300(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result v2

    .line 2102
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/home/launcher/LauncherModel;->access$2302(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 2103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "Launcher.Model"

    .line 2108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAndBindWorkspace loaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2111
    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v5

    .line 2113
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2114
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2115
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 2116
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2117
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2119
    iget-object v6, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v6}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v6, :cond_0

    const-string v0, "Launcher.Model"

    const-string v2, "LoaderThread running with no launcher"

    .line 2122
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2125
    :cond_0
    invoke-interface {v6}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->prepareBeforeBindItems()V

    .line 2126
    invoke-direct {v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 2128
    iget-boolean v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v7, :cond_1

    return-void

    .line 2129
    :cond_1
    new-instance v7, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v11, "itemType=?"

    new-array v12, v4, [Ljava/lang/String;

    const/4 v14, 0x2

    .line 2132
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const-string v13, "cellY ASC, cellX ASC, itemType ASC"

    .line 2129
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2134
    invoke-interface {v10}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2136
    iget-boolean v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v8, :cond_2

    return-void

    .line 2137
    :cond_2
    invoke-direct {v1, v7, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2139
    iget-boolean v8, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v8, :cond_3

    return-void

    .line 2140
    :cond_3
    new-instance v8, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, " JOIN screens ON favorites.screen=screens._id"

    invoke-static {v10}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getJoinContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 2143
    invoke-static {}, Lcom/miui/home/launcher/ItemInfo;->getColumnsWithScreenType()[Ljava/lang/String;

    move-result-object v18

    const-string v19, "container=? AND itemType!=?"

    new-array v10, v14, [Ljava/lang/String;

    const/16 v11, -0x64

    .line 2145
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v4

    const-string v21, "screens.screenOrder ASC, cellY ASC, cellX ASC, itemType ASC"

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    .line 2140
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2148
    invoke-interface {v12}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v8, v9, v10, v12}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2150
    iget-boolean v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v9, :cond_4

    return-void

    .line 2151
    :cond_4
    invoke-direct {v1, v8, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2153
    iget-boolean v9, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v9, :cond_5

    return-void

    .line 2154
    :cond_5
    new-instance v9, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v17, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v19, "container!=? AND itemType!=?"

    new-array v12, v14, [Ljava/lang/String;

    .line 2156
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v4

    const-string v21, "cellX ASC"

    move-object/from16 v16, v10

    move-object/from16 v20, v12

    .line 2154
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v10, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 2158
    invoke-interface {v11}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v9, v4, v10, v11}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2160
    iget-boolean v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_6

    return-void

    .line 2161
    :cond_6
    invoke-direct {v1, v9, v5, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2163
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 2164
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AllAppsList;->setRemovedInfoList(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    .line 2165
    invoke-virtual {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2166
    invoke-virtual {v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V

    .line 2169
    :cond_7
    invoke-virtual {v7}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2170
    invoke-virtual {v8}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2171
    invoke-virtual {v9}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    invoke-virtual {v8}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2175
    invoke-virtual {v9}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2176
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2177
    new-instance v5, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "_id"

    .line 2179
    invoke-static {v7, v4}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2177
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v7, v8}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2182
    invoke-direct {v1, v5, v8, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2185
    :cond_8
    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 2186
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2188
    :try_start_1
    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;

    invoke-direct {v6, v1, v0, v2, v3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;J)V

    invoke-virtual {v5, v6}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2199
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 2199
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2103
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

    .line 1697
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 1699
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1700
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1701
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1702
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    .line 1703
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1705
    invoke-static {p1}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v2

    .line 1706
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v2

    .line 1709
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1710
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 1709
    invoke-static {v3, v1, v4, v0, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "appWidgetId"

    .line 1713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-static {v1, v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    const-string v0, "Launcher.Model"

    const-string v1, "rebind app widget success"

    .line 1715
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Launcher.Model"

    const-string v1, "rebind app widget failed"

    .line 1717
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Launcher.Model"

    .line 1721
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

    .line 1723
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1724
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1726
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$ou0eRNFXm_glgCzii4Tv_ToyEFE;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$ou0eRNFXm_glgCzii4Tv_ToyEFE;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1732
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1733
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1734
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 1735
    iput-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    .line 1736
    iget-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v1, -0x64

    cmp-long p2, p2, v1

    if-eqz p2, :cond_5

    const-string p1, "Launcher.Model"

    const-string p2, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 1737
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1741
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needRecalculateWidgetSpan()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1742
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1743
    invoke-static {p2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p2

    .line 1744
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->reCalculateSpan(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 1746
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :goto_1
    return-void
.end method

.method private loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 10

    const/16 v0, 0x9

    .line 1646
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    .line 1647
    new-instance v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1648
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 1649
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    move-result-wide v8

    const-string v1, "Launcher.Model"

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppWidget, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", widgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1651
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    .line 1655
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_4

    .line 1656
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1657
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->canInstallFromRemote()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1666
    :cond_1
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1667
    invoke-direct {p0, v7, v8, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    goto :goto_0

    .line 1669
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$vH_weXJIp-jtDoFz6ViSCAKpJq0;

    invoke-direct {v1, v7}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$vH_weXJIp-jtDoFz6ViSCAKpJq0;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1670
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-wide v3, v8

    move-object v5, p1

    .line 1671
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z

    if-eqz v0, :cond_3

    .line 1673
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1675
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$I7JAvztTd_qAndGdfO9e4yhXXr8;

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$I7JAvztTd_qAndGdfO9e4yhXXr8;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->waitForUserUnlockAndRunOnNonUiThread(Ljava/util/function/Supplier;)V

    :cond_3
    :goto_0
    return-void

    .line 1659
    :cond_4
    :goto_1
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setRestore()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    move-wide v3, v8

    move-object v5, p1

    .line 1660
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "load restore app widget failed"

    .line 1661
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private loadDBComplete()Z
    .locals 3

    .line 1377
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

    .line 1633
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1634
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Launcher.Model"

    .line 1635
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

    .line 1638
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1639
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/FolderInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1640
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

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

    .line 1811
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1812
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    const/16 v2, 0xf

    .line 1814
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1815
    invoke-static {v0, v2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgeInfo(ILjava/lang/String;)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1817
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1818
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

    .line 1825
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "remove gadget"

    .line 1827
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_1

    .line 1830
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1833
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

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

    .line 2208
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 2210
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2230
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadGadget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2226
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2222
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadFolder(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2233
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadMaMl(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2218
    :cond_2
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

    .line 2237
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2241
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->close()V

    .line 2242
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

.method private loadMaMl(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 5

    .line 1838
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 1839
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const-string v1, "Launcher.Model"

    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMaMl, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", productId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", widgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", title ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1841
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1847
    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 1851
    :cond_0
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t restore, skip loading the maml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 1856
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z
    .locals 4

    const-string v0, "Launcher.Model"

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRestoreAppWidget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " needPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1768
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    const/4 p4, 0x0

    if-eqz v0, :cond_7

    .line 1770
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1773
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1774
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->canInstallFromRemote()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p5, :cond_2

    return p4

    .line 1777
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v2

    .line 1778
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    return p4

    .line 1779
    :cond_4
    :goto_0
    iput-boolean p5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    .line 1780
    iput-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    .line 1781
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 1782
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 1783
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz p2, :cond_5

    .line 1785
    iget-object p3, p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1786
    iget p2, p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 1788
    :cond_5
    iget-wide p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long p2, p2, v2

    if-eqz p2, :cond_6

    const-string p1, "Launcher.Model"

    const-string p2, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 1789
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1792
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return v1

    :cond_7
    :goto_1
    return p4
.end method

.method private loadShortcut(Lcom/miui/home/launcher/model/LoaderCursor;ILcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    const/4 v3, 0x1

    .line 1871
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 1874
    :try_start_0
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1880
    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    move-result-wide v14

    .line 1881
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v13

    const-string v8, "Launcher.Model"

    .line 1883
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

    if-nez v1, :cond_a

    .line 1889
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1891
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackInvalidateApplication(Ljava/lang/String;)V

    .line 1893
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, v8, v13}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 1894
    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v9}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v13, :cond_3

    if-nez v9, :cond_1

    goto :goto_0

    .line 1926
    :cond_1
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v4, :cond_2

    .line 1928
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    :cond_2
    const-string v0, "Remove: TwelveKeyDialer"

    .line 1930
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    if-nez v13, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    .line 1900
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v6

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_7

    .line 1912
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v10

    invoke-static {v1, v5, v10}, Lcom/miui/launcher/utils/LauncherUtils;->isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v6

    :cond_7
    :goto_1
    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    .line 1916
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 1918
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove: id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", component: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". user is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->checkPackageNameChange(Lcom/miui/home/launcher/util/ComponentKey;)V

    .line 1920
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->checkActivityNameChange(Lcom/miui/home/launcher/util/ComponentKey;)V

    :cond_9
    const-string v0, "Launcher.Model"

    .line 1923
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

    :cond_a
    const/16 v0, 0x11

    if-ne v1, v0, :cond_b

    .line 1936
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1937
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1938
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1939
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "pkgName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInLinkList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1941
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

    .line 1946
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_b
    if-nez v1, :cond_e

    .line 1952
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

    .line 1955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadShortcut, after getShortcutInfoFromApplication, info="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    const-string v9, "null"

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    .line 1957
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v8, v8, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    move/from16 v9, p4

    invoke-virtual {v1, v8, v0, v9}, Lcom/miui/home/launcher/allapps/LauncherMode;->canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Launcher.Model"

    .line 1958
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

    .line 1960
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1962
    :cond_d
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

    .line 1963
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    move-wide/from16 v20, v14

    .line 1966
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "com.miui.securitycore"

    .line 1967
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "com.miui.securityspace.ui.activity.SwitchUserActivity"

    .line 1968
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1969
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v6

    if-ne v0, v6, :cond_f

    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 1970
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "reomve second space icon"

    .line 1971
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 1974
    :cond_f
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

    .line 1977
    instance-of v1, v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    if-eqz v1, :cond_11

    .line 1978
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v1

    .line 1979
    iget-object v6, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1980
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

    .line 1983
    :cond_10
    iget-object v6, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v1, "Launcher.Model"

    .line 1986
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadShortcut, not application shortcutInfo, info="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_12

    const-string v8, "null"

    goto :goto_3

    :cond_12
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v0, :cond_13

    .line 1990
    iput-object v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 1991
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_13
    if-eqz v0, :cond_15

    .line 1996
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->access$2200(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1998
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v6, v0, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v1, v6}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v6, 0x8

    goto :goto_5

    :cond_14
    const/4 v6, 0x0

    .line 1999
    :goto_5
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->runtimeStatusFlags:I

    move v6, v3

    goto :goto_6

    :cond_15
    const/4 v6, 0x0

    :goto_6
    if-nez v0, :cond_16

    .line 2010
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

    .line 2011
    :cond_16
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v1, :cond_1e

    .line 2012
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressInfoList;->waitingForReady()V

    const-string v1, "Launcher.Model"

    .line 2013
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

    .line 2014
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2015
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2016
    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    move-object v8, v0

    check-cast v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v1, v8, v3}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 2017
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "invalidClassName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "com.android.vending"

    .line 2019
    iget-object v3, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2020
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v1

    .line 2021
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2022
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz v1, :cond_18

    .line 2024
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2025
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 2027
    :cond_17
    iget v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    iput v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 2028
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    .line 2029
    iget-object v1, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2032
    :cond_18
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 2033
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->addActiveSession(Ljava/lang/String;)V

    goto :goto_8

    :cond_19
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v4, p3

    const/4 v8, 0x0

    .line 2035
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    move v6, v8

    goto :goto_8

    .line 2039
    :cond_1a
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    goto :goto_8

    :cond_1b
    const/4 v8, 0x0

    goto :goto_7

    :cond_1c
    const/4 v8, 0x0

    goto :goto_7

    :cond_1d
    const/4 v8, 0x0

    .line 2042
    :goto_7
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    move v6, v8

    :cond_1e
    :goto_8
    if-eqz v0, :cond_1f

    .line 2047
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->sync(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1f
    if-eqz v6, :cond_20

    const-string v1, "Launcher.Model"

    .line 2050
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

    .line 2051
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v7, v1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_20
    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v0, "Launcher.Model"

    const-string v2, "loadShortcut, parseUri error"

    .line 1876
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1753
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 1757
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1760
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

.method private reCalculateSpan(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 2

    .line 1861
    iget v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    iget v1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    if-eq v0, v1, :cond_1

    .line 1862
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 1863
    iget p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 1864
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

    .line 2060
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/model/LoaderCursor;->onRemoveProgressShortcutInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 2062
    :cond_1
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p4

    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    .line 2063
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p4, p4, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 2065
    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 2068
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

    .line 2069
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide p3, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p1, :cond_3

    .line 2071
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_3
    return-void
.end method

.method private startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 3

    .line 2246
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2247
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2251
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2258
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

    .line 2273
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

    .line 2274
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

    .line 2275
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

.method public insertEmptyScreen()V
    .locals 7

    .line 1353
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1354
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "screenOrder DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1365
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "screenOrder"

    .line 1366
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1367
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "screenOrder"

    add-int/lit8 v2, v2, 0x1

    .line 1371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screenType"

    const/4 v2, 0x0

    .line 1372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1373
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v0

    .line 1369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1370
    throw v0
.end method

.method isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z
    .locals 2

    .line 1627
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isLaunching()Z
    .locals 1

    .line 1170
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 19

    move-object/from16 v9, p0

    .line 1381
    :try_start_0
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/LauncherModel;->beginLoader(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;

    move-result-object v10
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1389
    :try_start_1
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1391
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v3

    const-wide/16 v11, 0x32

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->hasBroughtToForeground()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    goto/16 :goto_d

    .line 1401
    :cond_0
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    if-eqz v10, :cond_1

    .line 1586
    :try_start_2
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-void

    .line 1403
    :cond_2
    :try_start_3
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1405
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1406
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    .line 1409
    :cond_3
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v2, "pref_key_last_label_locale"

    const/4 v13, 0x0

    invoke-static {v1, v2, v13}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1411
    iget-object v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v3, v1}, Lcom/miui/home/launcher/LauncherModel;->access$1602(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 1413
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->loadApps()V

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadDBComplete()Z

    move-result v1

    .line 1417
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

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

    .line 1418
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->init(Z)V

    if-eqz v2, :cond_6

    .line 1420
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v6, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/LauncherProvider;->loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 1422
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    .line 1423
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v4

    const-string v5, "app_state_db_need_init"

    invoke-static {v4, v5, v14}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v15, v3

    goto :goto_3

    :cond_6
    move v15, v14

    :goto_3
    const-string v4, "Launcher.Model"

    .line 1425
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

    .line 1427
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->initDataSource()V

    .line 1428
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    .line 1429
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v2

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_9

    .line 1430
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.miui.home:string/all_app_category_work"

    .line 1431
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_7

    const-string v2, "com.miui.home:string/all_app_category_work"

    .line 1432
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->addFolder(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "Launcher.Model"

    .line 1433
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add work folder result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v2, "Launcher.Model"

    const-string v6, "work folder already exist"

    .line 1435
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v2, "Launcher.Model"

    const-string v6, "not have work user"

    .line 1438
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_9
    :goto_4
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getAddRecommendFolderIfNeed()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "com.miui.home:string/default_folder_title_recommend"

    .line 1443
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_a

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->insertEmptyScreen()V

    const-string v2, "com.miui.home:string/default_folder_title_recommend"

    .line 1445
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->addFolder(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Launcher.Model"

    .line 1446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add recommend folder result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    const-string v1, "Launcher.Model"

    const-string v2, "recommend folder already exist"

    .line 1448
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAddRecommendFolderIfNeed(Z)V

    goto :goto_6

    :cond_b
    const-string v1, "Launcher.Model"

    const-string v2, "not is backup restore"

    .line 1452
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1456
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1457
    :try_start_4
    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_c

    move v2, v14

    goto :goto_7

    :cond_c
    move v2, v4

    :goto_7
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1459
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 1461
    :try_start_5
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1462
    :try_start_6
    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_8

    :cond_d
    move-object v2, v13

    :goto_8
    if-nez v2, :cond_f

    .line 1464
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-eqz v10, :cond_e

    .line 1586
    :try_start_7
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_e
    return-void

    .line 1466
    :cond_f
    :try_start_8
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 1468
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 1469
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$1800(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/IconCache;->clear()V

    .line 1470
    iget-object v5, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;

    invoke-direct {v6, v9, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1477
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1479
    :try_start_9
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItems()V

    .line 1480
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIconPositionForMiui11Upgrade()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1481
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    const-string v2, "com.android.fileexplorer"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.xiaomi.vipaccount"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V

    :cond_10
    const-string v0, "Launcher.Model"

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 0: loading screens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1486
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindScreens()V

    .line 1487
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    const-string v0, "Launcher.Model"

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 1: loading workspace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_2

    .line 1490
    :try_start_c
    invoke-direct {v9, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace(Z)V

    .line 1491
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1493
    :try_start_d
    iget-boolean v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_11

    goto/16 :goto_c

    .line 1499
    :cond_11
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_2

    .line 1500
    :try_start_e
    iget-boolean v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v0, :cond_12

    const-string v0, "Launcher.Model"

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thread priority to BACKGROUND:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1504
    :cond_12
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1506
    :try_start_f
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1507
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_micloudapp_provisioned"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Launcher.Model"

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 2: loading restoring items from cloudAppBackup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;

    invoke-direct {v0, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    .line 1516
    iput-boolean v3, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1517
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_2

    .line 1518
    :try_start_10
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_13

    .line 1519
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1522
    invoke-virtual {v1, v2, v0, v5, v8}, Lcom/miui/home/launcher/progress/ProgressManager;->loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 1524
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 1525
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1526
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [I

    const/4 v1, -0x1

    .line 1527
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1529
    iget-object v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v3

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;

    move-object v1, v2

    move-object v13, v2

    move-object/from16 v2, p0

    move-object v14, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[ILjava/util/List;)V

    invoke-virtual {v14, v13}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1542
    :cond_13
    monitor-exit v18

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v0

    :cond_14
    :goto_9
    const/4 v0, 0x0

    .line 1545
    :goto_a
    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_15

    iget-boolean v1, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_15

    .line 1546
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x32

    goto :goto_a

    :cond_15
    const-string v0, "Launcher.Model"

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 3: loading missing icons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_11} :catch_2

    .line 1552
    :try_start_12
    invoke-direct {v9, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons(Z)V

    .line 1553
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    const-string v0, "Launcher.Model"

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 4: loading all apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_2

    .line 1557
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAllApps()V

    .line 1558
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1559
    :try_start_15
    iget-boolean v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    const-string v0, "Launcher.Model"

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish loading using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms , isUserUnLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_2

    .line 1565
    :try_start_16
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_b

    :cond_17
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_19

    .line 1567
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v10, :cond_18

    .line 1586
    :try_start_17
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_17
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_17} :catch_2

    :cond_18
    return-void

    .line 1570
    :cond_19
    :try_start_18
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;

    invoke-direct {v2, v9, v13, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Z)V

    invoke-virtual {v0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1577
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1581
    :goto_c
    :try_start_19
    iget-object v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_19 .. :try_end_19} :catch_2

    const/4 v0, 0x0

    .line 1582
    :try_start_1a
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1583
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1584
    :try_start_1b
    iput-boolean v0, v9, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 1585
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->commit()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b .. :try_end_1b} :catch_2

    if-eqz v10, :cond_1d

    .line 1586
    :try_start_1c
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_1c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_1c} :catch_2

    goto :goto_f

    :catchall_1
    move-exception v0

    .line 1583
    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1e .. :try_end_1e} :catch_2

    :catchall_2
    move-exception v0

    .line 1577
    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_20 .. :try_end_20} :catch_2

    :catchall_3
    move-exception v0

    .line 1558
    :try_start_21
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    :try_start_22
    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_22 .. :try_end_22} :catch_2

    :catchall_4
    move-exception v0

    .line 1553
    :try_start_23
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :try_start_24
    throw v0
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_24 .. :try_end_24} :catch_2

    :catchall_5
    move-exception v0

    .line 1504
    :try_start_25
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :try_start_26
    throw v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_26} :catch_2

    :catchall_6
    move-exception v0

    .line 1491
    :try_start_27
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    :try_start_28
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_28 .. :try_end_28} :catch_2

    :catchall_7
    move-exception v0

    .line 1487
    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    :try_start_2a
    throw v0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2a .. :try_end_2a} :catch_2

    :catchall_8
    move-exception v0

    .line 1477
    :try_start_2b
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    :try_start_2c
    throw v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_2c} :catch_2

    :catchall_9
    move-exception v0

    .line 1459
    :try_start_2d
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    :try_start_2e
    throw v0

    :cond_1a
    :goto_d
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1b

    .line 1395
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 1396
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    :cond_1b
    add-long/2addr v1, v11

    .line 1399
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2e .. :try_end_2e} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_1c

    .line 1381
    :try_start_2f
    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2f .. :try_end_2f} :catch_2

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_30
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_e
    throw v1
    :try_end_30
    .catch Ljava/util/concurrent/CancellationException; {:try_start_30 .. :try_end_30} :catch_2

    :catch_2
    const-string v0, "Launcher.Model"

    const-string v1, "Loader stopped, ignore"

    .line 1587
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_f
    return-void
.end method

.method public stopLocked()V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string v1, "stop LoaderTask"

    .line 1592
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1593
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return-void
.end method

.method tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 3

    .line 1604
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$1700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1609
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1610
    monitor-exit v0

    return-object v1

    .line 1613
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eq v2, p1, :cond_2

    .line 1615
    monitor-exit v0

    return-object v1

    :cond_2
    if-nez v2, :cond_3

    const-string p1, "Launcher.Model"

    const-string v2, "no mCallbacks"

    .line 1618
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    monitor-exit v0

    return-object v1

    .line 1622
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 1623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
