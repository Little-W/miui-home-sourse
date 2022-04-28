.class Lcom/mi/globallauncher/manager/CommercialInit;
.super Ljava/lang/Object;
.source "CommercialInit.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/ICommercialInit;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommercialInit"

.field private static final branch_key_mi:Ljava/lang/String; = "key_live_imJJwWS7uH8pJ9WsNX2dTipbDtlKqWd7"

.field private static final branch_key_poco:Ljava/lang/String; = "key_live_iaLbGNNMAOlaTMS3QYDpamdduAm7qHjc"

.field private static volatile instance:Lcom/mi/globallauncher/manager/CommercialInit;


# instance fields
.field public report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/ICommercialInit;
    .locals 2

    .line 32
    sget-object v0, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/mi/globallauncher/manager/CommercialInit;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/mi/globallauncher/manager/CommercialInit;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/CommercialInit;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    return-object v0
.end method

.method public static synthetic lambda$initBranchSdk$0(Lcom/mi/globallauncher/manager/CommercialInit;ZLio/branch/search/BranchConfiguration;)V
    .locals 2

    .line 54
    :try_start_0
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "key_live_iaLbGNNMAOlaTMS3QYDpamdduAm7qHjc"

    .line 58
    invoke-virtual {p2, p1}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    .line 59
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const-string v0, "key_live_iaLbGNNMAOlaTMS3QYDpamdduAm7qHjc"

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "key_live_imJJwWS7uH8pJ9WsNX2dTipbDtlKqWd7"

    .line 61
    invoke-virtual {p2, p1}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    .line 62
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const-string v0, "key_live_imJJwWS7uH8pJ9WsNX2dTipbDtlKqWd7"

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchKey(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    invoke-static {p1}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->setDailyReport(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;)V

    .line 65
    :goto_0
    iget-object p1, p2, Lio/branch/search/BranchConfiguration;->B:Lio/branch/search/j3;

    invoke-virtual {p1}, Lio/branch/search/j3;->b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object p1

    .line 66
    iget-object v0, p2, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p2}, Lio/branch/search/BranchSearch;->init(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/BranchSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "CommercialInit"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommercialInit: Branch init in background\'s exception is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public cancelSchedulerService()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 100
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 105
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getReport()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    return-object v0
.end method

.method public initBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/BranchInitInterface;)V
    .locals 2

    .line 120
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isNewFeatureShowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    .line 125
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->updateShowNewFeatureCounts()V

    .line 127
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureFirstShow(Z)V

    .line 129
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/mi/globallauncher/manager/CommercialInit;->initBranchSdk(ZZ)V

    .line 132
    :cond_2
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isCloudConfigReceived()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchHasBeenOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->showBranchSearchGuideView()V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isChangeToDrawerForBranch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->isBranchSearchGuideViewVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->handleDragAndHideAppsGuideViewAfterGuide()V

    .line 142
    :cond_4
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackEnterDrawer()V

    .line 143
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFirstTimeEnterDrawer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFirstTimeEnterDrawer(Z)V

    goto :goto_0

    .line 146
    :cond_5
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->enterQuickSearchIfNeeded()V

    :goto_0
    return-void
.end method

.method public initBranchSdk(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 46
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_4

    .line 49
    :cond_1
    new-instance p2, Lio/branch/search/BranchConfiguration;

    invoke-direct {p2}, Lio/branch/search/BranchConfiguration;-><init>()V

    .line 50
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->branchOpenWithOptChange()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    goto :goto_1

    :cond_2
    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    .line 51
    :goto_1
    invoke-virtual {p2, v0}, Lio/branch/search/BranchConfiguration;->trackingStatus(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)Lio/branch/search/BranchConfiguration;

    .line 52
    invoke-static {}, Lcom/mi/globallauncher/util/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;-><init>(Lcom/mi/globallauncher/manager/CommercialInit;ZLio/branch/search/BranchConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p2, "CommercialInit"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommercialInit: Branch init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    :goto_4
    return-void
.end method

.method public initCloudConfigForMiuiHome(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "jobscheduler"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 83
    invoke-static {p1, v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->setupUpdateService(Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialInit;->cancelSchedulerService()V

    return-void
.end method

.method public setReport(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    return-void
.end method
