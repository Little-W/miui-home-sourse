.class public Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "CNRecommendController.java"


# instance fields
.field private mLastRequestTime:J


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const-wide/16 v0, 0x0

    .line 38
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

    .line 122
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$XwjodvyLB_SYZ0yqPYj-r4-nw8c;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$XwjodvyLB_SYZ0yqPYj-r4-nw8c;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    .line 123
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 124
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 126
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

    .line 128
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

    .line 135
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$sFWr8hxVg5ap5U1LAqMXj_VO0Cc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$sFWr8hxVg5ap5U1LAqMXj_VO0Cc;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    .line 136
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 137
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 139
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

    .line 141
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private isPreinstallAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1.32.4.2"

    .line 161
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

    .line 165
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

    .line 123
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isPreinstallAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$getFolderRecommendInfoList$7(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$handleClick$3(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$49SwtAErp7Me3RlQhENWZpNoSk8;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$49SwtAErp7Me3RlQhENWZpNoSk8;

    .line 77
    invoke-static {p1, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    return-object p0
.end method

.method static synthetic lambda$null$4(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 94
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V

    return-object v0
.end method

.method public static synthetic lambda$requestRecommend$5(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    move-result-object p2

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;

    move-result-object p2

    .line 93
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$QkKFM2CjYj_rAjallqjZ9xpbviU;

    invoke-static {p2, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;

    move-result-object p2

    .line 96
    invoke-static {p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFolderPreinstallInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    .line 106
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFolderRecommendInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 99
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    return-object p2
.end method

.method static synthetic lambda$setPreinstallAdList$8(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    return-void
.end method

.method public static synthetic lambda$trackViewEvent$1(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method

.method static synthetic lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
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

    .line 147
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    .line 149
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

    .line 150
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setPreinstallData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "RecommendController"

    const-string v0, "recommend folder, clear preinstall ads"

    .line 152
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$tibBcUSS2fzuwrOfSaz9dJZGGWM;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$tibBcUSS2fzuwrOfSaz9dJZGGWM;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private uploadFirstFolderRecommendAdInfo()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$haQE3LoutmT4ZZUOfeH8EciMNdI;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$haQE3LoutmT4ZZUOfeH8EciMNdI;-><init>(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const-string v1, "RecommendController"

    .line 59
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

    .line 61
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;
    .locals 2

    .line 114
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setPackages(Ljava/util/List;)V

    return-object v0
.end method

.method public canRecommendSwitchShow()Z
    .locals 1

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 177
    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->canRecommendSwitchShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
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

    .line 208
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

    .line 75
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

.method public loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public onCurrentScreenShowing()V
    .locals 6

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isOnlyRequestWhenFolderOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "folder display and try to request recommend list"

    .line 186
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "folder display but in swipe screen interval time"

    .line 188
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "RecommendController"

    const-string v1, "folder display but only request when folder open"

    .line 191
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
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

    .line 202
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, try to request recommend app data"

    .line 200
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onXOutClick()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->uploadFirstFolderRecommendAdInfo()V

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->updateRecommendAppsBeginDisplayTime(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    :cond_0
    return-void
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava8/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    .line 86
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7qdWC1lJmQTQk4pJJnqNq4801Po;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7qdWC1lJmQTQk4pJJnqNq4801Po;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    const-string p1, "RecommendController"

    const-string p2, "request CN data"

    .line 110
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 67
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
