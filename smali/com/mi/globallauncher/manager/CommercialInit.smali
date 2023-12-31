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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/ICommercialInit;
    .locals 2

    .line 38
    sget-object v0, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/mi/globallauncher/manager/CommercialInit;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/mi/globallauncher/manager/CommercialInit;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/CommercialInit;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/CommercialInit;->instance:Lcom/mi/globallauncher/manager/CommercialInit;

    return-object v0
.end method


# virtual methods
.method public cancelSchedulerService()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 104
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->cancelAll()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 109
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public getReport()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    return-object p0
.end method

.method public initBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/BranchInitInterface;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isNewFeatureShowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    .line 129
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->updateShowNewFeatureCounts()V

    .line 131
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureFirstShow(Z)V

    .line 133
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcom/mi/globallauncher/util/CommonUtilities;->isPocoLauncher()Z

    move-result v0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialInit;->initBranchSdk(ZZ)V

    .line 136
    :cond_2
    sget-boolean p0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 137
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isCloudConfigReceived()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 138
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchHasBeenOpened()Z

    move-result p0

    if-nez p0, :cond_3

    .line 139
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->showBranchSearchGuideView()V

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isChangeToDrawerForBranch()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 142
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->isBranchSearchGuideViewVisible()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 143
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result p0

    if-nez p0, :cond_4

    .line 144
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->handleDragAndHideAppsGuideViewAfterGuide()V

    .line 146
    :cond_4
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackEnterDrawer()V

    .line 147
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFirstTimeEnterDrawer()Z

    move-result p0

    if-nez p0, :cond_5

    .line 148
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFirstTimeEnterDrawer(Z)V

    goto :goto_0

    .line 150
    :cond_5
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchInitInterface;->enterQuickSearchIfNeeded()V

    :goto_0
    return-void
.end method

.method public initBranchSdk(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 52
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_3

    .line 55
    :cond_1
    new-instance p2, Lio/branch/search/BranchConfiguration;

    invoke-direct {p2}, Lio/branch/search/BranchConfiguration;-><init>()V

    .line 56
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->branchOpenWithOptChange()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    goto :goto_1

    :cond_2
    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    .line 57
    :goto_1
    invoke-virtual {p2, v0}, Lio/branch/search/BranchConfiguration;->trackingStatus(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)Lio/branch/search/BranchConfiguration;

    .line 58
    invoke-static {}, Lcom/mi/globallauncher/util/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;-><init>(Lcom/mi/globallauncher/manager/CommercialInit;ZLio/branch/search/BranchConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 77
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CommercialInit: Branch init "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommercialInit"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public initCloudConfigForMiuiHome(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "jobscheduler"

    .line 86
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 87
    invoke-static {p1, p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->setupUpdateService(Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    return-void
.end method

.method public initPocoBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;Landroid/app/Activity;Z)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackEnterDrawer()V

    .line 158
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;->needToShowBranchSearchGuideForUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/CommercialInit$1;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/manager/CommercialInit$1;-><init>(Lcom/mi/globallauncher/manager/CommercialInit;Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;->showPocoBranchSearchGuideView(Landroid/app/Activity;ZLcom/mi/globallauncher/poco/PocoBranchGuideCallBack;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 168
    invoke-static {}, Lcom/mi/globallauncher/util/CommonUtilities;->isPocoLauncher()Z

    move-result p2

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/mi/globallauncher/manager/CommercialInit;->initBranchSdk(ZZ)V

    .line 170
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 171
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/PocoBranchInitInterface;->callEnterQuickSearchIfNeeded()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$initBranchSdk$0$CommercialInit(ZLio/branch/search/BranchConfiguration;)V
    .locals 3

    const-string v0, "key_live_iaLbGNNMAOlaTMS3QYDpamdduAm7qHjc"

    const-string v1, "key_live_imJJwWS7uH8pJ9WsNX2dTipbDtlKqWd7"

    .line 60
    :try_start_0
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p2, v0}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    .line 65
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchKey(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2, v1}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    .line 68
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchKey(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->setDailyReport(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;)V

    .line 71
    :goto_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p2}, Lio/branch/search/BranchSearch;->init(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/BranchSearch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CommercialInit: Branch init in background\'s exception is"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommercialInit"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialInit;->cancelSchedulerService()V

    return-void
.end method

.method public setReport(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mi/globallauncher/manager/CommercialInit;->report:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    return-void
.end method
