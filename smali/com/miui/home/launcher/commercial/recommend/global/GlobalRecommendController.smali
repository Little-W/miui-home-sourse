.class public Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "GlobalRecommendController.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private buildFolderInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
    .locals 2

    .line 74
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setPackages(Ljava/util/List;)V

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getFolderTagIdToRequestRecommendAd()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getFolderTagIdToRequestRecommendAd()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setTagIds([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$handleClick$2(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$Z6-W9zyqHyfrf2rw-M2ULiL2gL0;

    .line 48
    invoke-static {p1, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    return-object p0
.end method

.method static synthetic lambda$null$3(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 64
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)V

    return-object v0
.end method

.method public static synthetic lambda$requestRecommend$4(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->buildFolderInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p2}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->loadGlobalFolderRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;

    move-result-object p1

    .line 63
    sget-object p2, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$HdYlIWngl2gVtiE_XOtf7JcP3lU;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    return-object p1
.end method

.method public static synthetic lambda$trackViewEvent$0(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    return-void
.end method


# virtual methods
.method public canRecommendSwitchShow()Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
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
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->getViewExpireTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->getViewExpireTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->haveData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 46
    new-instance v6, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$qU-8GXEkSuApIiOcQyOnNFWjLyE;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V

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

    .line 85
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromGlobal(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public onCurrentScreenShowing()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "folder display but only request when folder open"

    .line 97
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, try to request recommend app data"

    .line 104
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, folder is closed and don\'t request data when folder is closed"

    .line 106
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onXOutClick()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "golbal hasn\'t folder recommend xout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava8/util/function/Consumer;)V
    .locals 1
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

    .line 57
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$z4dKTm88gxSjorrEnAaWsKdxsCs;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$z4dKTm88gxSjorrEnAaWsKdxsCs;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    const-string p1, "RecommendController"

    const-string p2, "request global folder recommend data"

    .line 70
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 38
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/global/-$$Lambda$GlobalRecommendController$6WDgRIh3HbheI1lnr8uRSOgrX8Y;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
