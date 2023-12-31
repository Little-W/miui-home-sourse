.class Lcom/mi/globallauncher/manager/BranchStaticHelper;
.super Ljava/lang/Object;
.source "BranchStaticHelper.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchStaticHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkShowNewFeatureTimes()Z
    .locals 7

    .line 43
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getShowNewFeatureCounts()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getShowNewFeatureTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf731400

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 49
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    :cond_2
    return v2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getShowNewFeatureTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    .line 55
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    :cond_5
    return v2
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;
    .locals 2

    .line 15
    sget-object v0, Lcom/mi/globallauncher/manager/BranchStaticHelper;->instance:Lcom/mi/globallauncher/manager/BranchStaticHelper;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/mi/globallauncher/manager/BranchStaticHelper;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchStaticHelper;->instance:Lcom/mi/globallauncher/manager/BranchStaticHelper;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/mi/globallauncher/manager/BranchStaticHelper;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchStaticHelper;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchStaticHelper;->instance:Lcom/mi/globallauncher/manager/BranchStaticHelper;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchStaticHelper;->instance:Lcom/mi/globallauncher/manager/BranchStaticHelper;

    return-object v0
.end method


# virtual methods
.method public showNewFeatureTag()Z
    .locals 2

    .line 27
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isNewFeatureFirstShow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 30
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchHasBeenOpened()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    .line 33
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isNewFeatureShowed()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 39
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchStaticHelper;->checkShowNewFeatureTimes()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public updateDrawerModeForCloudConfig()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setChangeToDrawerForBranch()V

    .line 66
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setUpdateDrawerModeForCloudConfig(Z)V

    .line 67
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    .line 69
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureFirstShow(Z)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureShowed(Z)V

    .line 72
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->resetShowNewFeatureCounts()V

    .line 73
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->resetShowNewFeatureTime()V

    .line 74
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setNewFeatureFirstShow(Z)V

    :goto_0
    return-void
.end method
