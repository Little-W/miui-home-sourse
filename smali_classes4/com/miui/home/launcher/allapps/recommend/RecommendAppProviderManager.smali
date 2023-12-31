.class public Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;
.super Ljava/lang/Object;
.source "RecommendAppProviderManager.java"


# static fields
.field private static volatile mRecommendAppProviderManager:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;


# instance fields
.field private mCallBack:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

.field private mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

.field private mMiuiRecommendApp:Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-direct {v0, v1, v2}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    .line 41
    new-instance v0, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mMiuiRecommendApp:Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/home/launcher/allapps/recommend/-$$Lambda$RecommendAppProviderManager$-WFYsTG4OvfgqL12Wj0qimZ2zbw;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/recommend/-$$Lambda$RecommendAppProviderManager$-WFYsTG4OvfgqL12Wj0qimZ2zbw;-><init>(Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->waitForUserUnlockAndRunAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private getGoogleRecommendApps(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/launcher/appprediction/AppPredictionInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rankData\uff1a"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/appprediction/AppPredictionInfo;

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 68
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/launcher/appprediction/AppPredictionInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/launcher/appprediction/AppPredictionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p3, :cond_1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "];"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p3, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppPredictionTag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mRecommendAppProviderManager:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mRecommendAppProviderManager:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mRecommendAppProviderManager:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mRecommendAppProviderManager:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    return-object v0
.end method


# virtual methods
.method public getRecommendApps(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {v1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isSupportPredict()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {v1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->getPredictList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getGoogleRecommendApps(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mMiuiRecommendApp:Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;->getRecommendApps(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$RecommendAppProviderManager(Ljava/lang/Object;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->createAppPredictionSession(I)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->registerPredictionUpdates()V

    return-void
.end method

.method public notifyAppTargetEvent(Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->notifyAppTargetEvent(Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerPredictionUpdates()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->registerPredictionUpdates()V

    :cond_0
    return-void
.end method

.method public requestPredictionUpdate()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->requestPredictionUpdate()V

    :cond_0
    return-void
.end method

.method public setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mCallBack:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    if-nez v0, :cond_0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mCallBack:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mCallBack:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V

    :cond_0
    return-void
.end method

.method public unRegisterPredictionUpdates()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mGoogleRecommendApp:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->unRegisterPredictionUpdates()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->mCallBack:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-void
.end method
