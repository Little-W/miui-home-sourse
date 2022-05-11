.class public Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "CNRecommendController.java"


# static fields
.field private static sLastRequestCloudTagId:Ljava/lang/String;

.field private static sLastRequestCloudTime:J


# instance fields
.field private mCNCloudDataCacheEndTime:J

.field private mCNCloudDataExpireEndTime:J

.field private mCloudCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloudList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayCloudRequest:Ljava/lang/Runnable;

.field private mIsCloudRequest:Z

.field private mIsGuessRequest:Z

.field private mLastRequestTime:J


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    .line 37
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    .line 38
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataExpireEndTime:J

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    .line 131
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$jZ5G57aEByXXdukjKZbjzuBHAoE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$jZ5G57aEByXXdukjKZbjzuBHAoE;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private checkTagId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1.32.5.1"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1.32.5.3"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string v0, "1.32.5.1"

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "1.32.5.3"

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 299
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string v0, "1.32.5.2"

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "1.32.5.4"

    goto :goto_0

    :cond_3
    const-string v0, "1.32.5.5"

    :cond_4
    :goto_0
    return-object v0
.end method

.method private isCloudCachedDataExpired()Z
    .locals 4

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getCNCloudDataCacheEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$handleClick$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    return-object p0
.end method

.method public static synthetic lambda$handleClick$3(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$LclmSWm2sJRKmuXRMTMZWiA2hC4;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$LclmSWm2sJRKmuXRMTMZWiA2hC4;

    .line 89
    invoke-static {p1, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    if-eqz p1, :cond_2

    .line 133
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDuplicatesAd(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setRecommendInfo(Ljava/util/List;)V

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudList:Ljava/util/List;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getCacheTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setCNCloudDataCacheEndTime(J)V

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getEndTimeInMills()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setCNCloudDataExpireEndTime(J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$requestCloudRecommend$7(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$requestCloudRecommend$8(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 170
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-object v0
.end method

.method public static synthetic lambda$requestCloudRecommend$9(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 3

    const/4 p2, 0x2

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p2

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p2

    const-string v0, "RecommendController"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud InfoList size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$WJknJEczkuZcjZxKAWBWg0SpPJY;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$WJknJEczkuZcjZxKAWBWg0SpPJY;

    invoke-static {p2, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    .line 171
    invoke-static {p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 172
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->checkTagId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    return-object p2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$requestGuessRecommend$4(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 111
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$requestGuessRecommend$5(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 2

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p1

    const-string p2, "RecommendController"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Guess AdInfoList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p2, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$5eMV88no75o4ILpxDW5N20EJTN8;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$5eMV88no75o4ILpxDW5N20EJTN8;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    .line 116
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDuplicatesAd(Ljava/util/List;Ljava/util/List;)Z

    if-eqz p1, :cond_2

    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$setPreinstallAdList$10(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    return-void
.end method

.method public static synthetic lambda$trackViewEvent$1(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method

.method static synthetic lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, p0, v1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method

.method public static setLastRequestCloudTagId(Ljava/lang/String;)V
    .locals 0

    .line 420
    sput-object p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTagId:Ljava/lang/String;

    return-void
.end method

.method public static setLastRequestCloudTime(J)V
    .locals 0

    .line 416
    sput-wide p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

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

    .line 311
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RecommendController"

    .line 313
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

    .line 314
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setPreinstallData(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p1, "RecommendController"

    const-string v0, "recommend folder, clear preinstall ads"

    .line 316
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$M0aYj_dRZDP0tFEC2TbcxyDmHJM;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$M0aYj_dRZDP0tFEC2TbcxyDmHJM;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private uploadFirstFolderRecommendAdInfo()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$PhzXWDOekiZsD4JXMUEeJrqCrmM;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$PhzXWDOekiZsD4JXMUEeJrqCrmM;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const-string v1, "RecommendController"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadFirstFolderRecommendAdInfo, appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "uploadFirstFolderRecommendAdInfo, the first one is null"

    .line 73
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
    .locals 2

    .line 282
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setPackages(Ljava/util/List;)V

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setTagId(Ljava/lang/String;)V

    return-object v0
.end method

.method public canRecommendSwitchShow()Z
    .locals 1

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    .line 333
    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->canRecommendSwitchShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
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

    .line 395
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

.method public getCNCloudDataCacheEndTime()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    return-wide v0
.end method

.method protected getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getTrackKey(I)Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "request"

    return-object p1

    :pswitch_0
    const-string p1, "recommend_all_request"

    return-object p1

    :pswitch_1
    const-string p1, "recommend_cloud_request"

    return-object p1

    :pswitch_2
    const-string p1, "recommend_guess_request"

    return-object p1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    const-string p1, "request"

    return-object p1

    :pswitch_3
    const-string p1, "hot_all_request"

    return-object p1

    :pswitch_4
    const-string p1, "hot_cloud_request"

    return-object p1

    :pswitch_5
    const-string p1, "hot_guess_request"

    return-object p1

    :cond_1
    const-string p1, "request"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
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

    .line 87
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

    .line 326
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public needToRequestCloud()Z
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecommendController"

    const-string v1, "request, because cloud cached data expired"

    .line 249
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "RecommendController"

    const-string v1, "don\'t request, because recommend screen can\'t show"

    .line 253
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public needToRequestGuess()Z
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendDataTooFew()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "RecommendController"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, because cached data expired "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCachedDataExpired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " recommend data too few "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendDataTooFew()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cloud data expired "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "RecommendController"

    const-string v1, "don\'t request, because recommend screen can\'t show"

    .line 266
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public obtainRequestMode()I
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestGuess()Z

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public onCurrentScreenShowing()V
    .locals 6

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "Don\'t request, folder recommend switch off"

    .line 340
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isOnlyRequestWhenFolderOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "folder display and try to request recommend list"

    .line 347
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "RecommendController"

    const-string v1, "folder display but in swipe screen interval time"

    .line 349
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "RecommendController"

    const-string v1, "folder display but only request when folder open"

    .line 352
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFolderShowRecommends()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestGuess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecommendController"

    const-string v1, "folder open, request recommend app list"

    .line 384
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->showLoadingView()V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->preloadAndRefresh()V

    :goto_0
    return-void
.end method

.method public onGuessCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
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

    .line 363
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string v0, "RecommendController"

    const-string v1, "onRecommendAppRemoved, try to request recommend app data"

    .line 361
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSwitchChangedByUser(Z)V
    .locals 2

    .line 425
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onSwitchChangedByUser(Z)V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 427
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    .line 428
    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTime(J)V

    :cond_0
    return-void
.end method

.method public onXOutClick()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->uploadFirstFolderRecommendAdInfo()V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->updateRecommendAppsBeginDisplayTime(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    :cond_0
    return-void
.end method

.method public requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 5
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

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 154
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$7J4E0SsIxCiybK8Dad4Cc8Xtu8U;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 158
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTime(J)V

    .line 159
    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTagId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    .line 161
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$EiRK-Xs5oWwG6DcThIQijlsx3Hc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$EiRK-Xs5oWwG6DcThIQijlsx3Hc;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p1, 0x0

    .line 180
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getFolderRecommendSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object v1

    .line 161
    invoke-static {v0, p2, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "RecommendController"

    const-string p2, "request CN cloud data"

    .line 181
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
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

    .line 96
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    .line 100
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$r5NbYjLiPiTKlSdz5iUlPNyDxRg;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p1, 0x0

    .line 122
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getFolderRecommendSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object v1

    .line 100
    invoke-static {v0, p2, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "RecommendController"

    const-string p2, "request CN guess data"

    .line 123
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "RecommendController"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    .line 202
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestRecommendWithCheck()V
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->obtainRequestMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendImmediately(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCNCloudDataCacheEndTime(J)V
    .locals 0

    .line 399
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    return-void
.end method

.method public setCNCloudDataExpireEndTime(J)V
    .locals 0

    .line 411
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataExpireEndTime:J

    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 79
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/-$$Lambda$CNRecommendController$9KyJFW3fNg71_XT9HKB0bqRwG-Q;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
