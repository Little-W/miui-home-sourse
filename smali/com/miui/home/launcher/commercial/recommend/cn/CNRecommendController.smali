.class public Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "CNRecommendController.java"


# instance fields
.field private mLastRequestTime:J


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    return-void
.end method

.method private getFolderPreinstallInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$eZbfRoHAHHhBBU-sIcsekaijWP4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$eZbfRoHAHHhBBU-sIcsekaijWP4;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    .line 120
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 121
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preinstall data size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "preinstall data is empty"

    .line 125
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private getFolderRecommendInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$dO_DQHsN1ILewMqc7EZvM3SfFyk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$dO_DQHsN1ILewMqc7EZvM3SfFyk;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    .line 133
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 134
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recommend data size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "recommend data is empty"

    .line 138
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private isPreinstallAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1.32.4.2"

    .line 158
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTagId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRecommendAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1.32.4.1"

    .line 162
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTagId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$getFolderPreinstallInfoList$6(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isPreinstallAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$getFolderRecommendInfoList$7(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$handleClick$3(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$yUuxMqjLLJNQoCocfUyY16yUfJY;

    .line 74
    invoke-static {p1, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    return-object p0
.end method

.method static synthetic lambda$null$4(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 91
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V

    return-object v0
.end method

.method public static synthetic lambda$requestRecommend$5(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;

    move-result-object p2

    .line 90
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$4zHXF5v32ic7OPHSBtR1p0ILSCY;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$4zHXF5v32ic7OPHSBtR1p0ILSCY;

    invoke-static {p2, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    .line 93
    invoke-static {p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 95
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFolderPreinstallInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFolderRecommendInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 96
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    return-object p2
.end method

.method static synthetic lambda$setPreinstallAdList$8(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    return-void
.end method

.method public static synthetic lambda$trackViewEvent$1(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method

.method static synthetic lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, p0, v1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleDislike(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method

.method private setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recommend folder, get preinstall ads count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setPreinstallData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "RecommendController"

    const-string v0, "recommend folder, clear preinstall ads"

    .line 149
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$tibBcUSS2fzuwrOfSaz9dJZGGWM;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$tibBcUSS2fzuwrOfSaz9dJZGGWM;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private uploadFirstFolderRecommendAdInfo()V
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$haQE3LoutmT4ZZUOfeH8EciMNdI;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$haQE3LoutmT4ZZUOfeH8EciMNdI;-><init>(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const-string v1, "RecommendController"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFirstFolderRecommendAdInfo, appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "uploadFirstFolderRecommendAdInfo, the first one is null"

    .line 58
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;
    .locals 2

    .line 111
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setPackages(Ljava/util/List;)V

    return-object v0
.end method

.method public canRecommendSwitchShow()Z
    .locals 1

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->canRecommendSwitchShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canShowOldRecommendData()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->haveData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 72
    new-instance v6, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$F8yIgY3pu4bh0MSLZc-dIc2_ix4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$F8yIgY3pu4bh0MSLZc-dIc2_ix4;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCurrentScreenShowing()V
    .locals 6

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isOnlyRequestWhenFolderOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "folder display and try to request recommend list"

    .line 183
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "folder display but in swipe screen interval time"

    .line 185
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "RecommendController"

    const-string v1, "folder display but only request when folder open"

    .line 188
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isOnlyRequestWhenFolderOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, folder is closed and don\'t request data when folder is closed"

    .line 199
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, try to request recommend app data"

    .line 197
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onXOutClick()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->uploadFirstFolderRecommendAdInfo()V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->updateRecommendAppsBeginDisplayTime(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    :cond_0
    return-void
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    .line 83
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cGR6xv6OwLCYo0_F5jIXyvPN98;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$2cGR6xv6OwLCYo0_F5jIXyvPN98;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    const-string p1, "RecommendController"

    const-string p2, "request CN data"

    .line 107
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 64
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
