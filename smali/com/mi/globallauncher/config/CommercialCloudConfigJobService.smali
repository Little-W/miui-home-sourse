.class public Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;
.super Landroid/app/job/JobService;
.source "CommercialCloudConfigJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;,
        Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;
    }
.end annotation


# static fields
.field public static final JOB_SCHEDULER_CLOUD_CONFIG_ID:I = 0x64

.field public static final JOB_SCHEDULER_GET_INTERVAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "CloudConfigJobService"

.field private static configCallback:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

.field private static dailyAnalyticReport:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

.field private static sConfigInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;
    .locals 1

    .line 22
    sget-object v0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->configCallback:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    return-object v0
.end method

.method private static debugBranch(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiBranchCloudConfig(Z)V

    .line 168
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setAllUserBranchEnabled(Z)V

    .line 169
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->updateBranchOpen()V

    .line 171
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiQuickSearchCloudConfig(Z)V

    .line 172
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchRemoteConfigEnabled(Z)V

    .line 173
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->updateQuickSearchOpen()V

    .line 175
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiShowNewFeatureCloudConfig(Z)V

    .line 176
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setShowNewFeatureRemoteConfigEnabled(Z)V

    .line 178
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setOpenDrawerByDefault(Z)V

    .line 179
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->changeToDrawerByDefault(Z)V

    if-eqz p0, :cond_0

    .line 182
    invoke-interface {p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigSucceed()V

    :cond_0
    return-void
.end method

.method private static getInterval()J
    .locals 2

    .line 208
    sget v0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->sConfigInterval:I

    if-nez v0, :cond_0

    const-wide/32 v0, 0x5265c00

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$updateGameFlowCloudConfig$0(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;Lcom/mi/globallauncher/config/CommercialConfigResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mi/globallauncher/config/CommercialConfigResult;->getData()Lcom/mi/globallauncher/config/CommercialConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/config/CommercialConfigData;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudConfigJobService"

    invoke-static {v1, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 80
    invoke-virtual {p1}, Lcom/mi/globallauncher/config/CommercialConfigResult;->getData()Lcom/mi/globallauncher/config/CommercialConfigData;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 81
    invoke-virtual {p1}, Lcom/mi/globallauncher/config/CommercialConfigResult;->getData()Lcom/mi/globallauncher/config/CommercialConfigData;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/mi/globallauncher/config/CommercialConfigData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/config/CommercialConfigItem;

    .line 83
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "branch_open"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable_branch"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiBranchCloudConfig(Z)V

    .line 87
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setAllUserBranchEnabled(Z)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiBranchCloudConfig(Z)V

    .line 90
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setAllUserBranchEnabled(Z)V

    .line 92
    :goto_1
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->updateBranchOpen()V

    .line 95
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v5, "quick_search_open"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enable_quick_search"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiQuickSearchCloudConfig(Z)V

    .line 99
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchRemoteConfigEnabled(Z)V

    goto :goto_2

    .line 101
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiQuickSearchCloudConfig(Z)V

    .line 102
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchRemoteConfigEnabled(Z)V

    .line 104
    :goto_2
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_4
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->updateQuickSearchOpen()V

    .line 107
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v5, "show_new_feature"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v2

    const-string v5, "enable_new_feature"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/mi/globallauncher/util/CommonUtilities;->isPocoLauncher()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 113
    :cond_5
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiShowNewFeatureCloudConfig(Z)V

    .line 114
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setShowNewFeatureRemoteConfigEnabled(Z)V

    goto :goto_4

    .line 110
    :cond_6
    :goto_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMiuiShowNewFeatureCloudConfig(Z)V

    .line 111
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setShowNewFeatureRemoteConfigEnabled(Z)V

    .line 117
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v5, "branch_device_enable"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 118
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 119
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_branch_enable"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 120
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setOpenDrawerByDefault(Z)V

    .line 121
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->changeToDrawerByDefault(Z)V

    goto :goto_5

    .line 123
    :cond_8
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setOpenDrawerByDefault(Z)V

    .line 124
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->changeToDrawerByDefault(Z)V

    .line 126
    :goto_5
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_9
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v5, "branch_result_page_style"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 130
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zero"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 132
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchShowTypeVersion(I)V

    goto :goto_6

    .line 133
    :cond_a
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v5

    const-string v6, "one"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 134
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchShowTypeVersion(I)V

    .line 136
    :cond_b
    :goto_6
    invoke-virtual {v2}, Lcom/mi/globallauncher/config/CommercialConfigContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_c
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getapps_download_function"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigItem;->getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigContent;->getGameSwitch()Ljava/lang/String;

    move-result-object v2

    const-string v5, "enable_getapps_download_function"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 142
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setUseMiAppStore(Z)V

    goto :goto_7

    .line 144
    :cond_d
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setUseMiAppStore(Z)V

    .line 146
    :goto_7
    invoke-virtual {v0}, Lcom/mi/globallauncher/config/CommercialConfigContent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz p0, :cond_f

    .line 151
    invoke-interface {p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigSucceed()V

    :cond_f
    return-void
.end method

.method static synthetic lambda$updateGameFlowCloudConfig$1(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->debugBranch(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p0, :cond_1

    .line 159
    invoke-interface {p0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onRegionChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->updateGameFlowCloudConfig(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    return-void
.end method

.method public static setConfigCallback(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->configCallback:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    return-void
.end method

.method public static setDailyReport(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->dailyAnalyticReport:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    return-void
.end method

.method public static setupUpdateService(Landroid/content/Context;Landroid/app/job/JobScheduler;)V
    .locals 2

    .line 192
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 200
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v0, 0x5265c00

    .line 201
    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method private static updateGameFlowCloudConfig(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V
    .locals 3

    .line 74
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialClient;->getCloudConfigApi()Lcom/mi/globallauncher/config/CommercialCloudConfigApi;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-static {v1}, Lcom/mi/globallauncher/config/CommercialParamUtil;->getCloudConfigParam(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/config/CommercialCloudConfigApi;->requestCloudConfig(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 77
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$GVDY7PmyJhqhnCHBsYkkQeE88ZM;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$GVDY7PmyJhqhnCHBsYkkQeE88ZM;-><init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    new-instance v2, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$uzv-cXaq8508UdspXbu8DKF-XIM;

    invoke-direct {v2, p0}, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$uzv-cXaq8508UdspXbu8DKF-XIM;-><init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "CloudConfigJobService"

    const-string v1, "get cloud config"

    .line 43
    invoke-static {v0, v1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->dailyAnalyticReport:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$DailyAnalyticReport;->analyticReport()V

    .line 47
    :cond_0
    new-instance v0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;-><init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->updateGameFlowCloudConfig(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
