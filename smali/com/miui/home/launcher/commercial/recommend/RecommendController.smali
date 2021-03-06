.class public abstract Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.super Ljava/lang/Object;
.source "RecommendController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;,
        Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenDisappearRunnable;
    }
.end annotation


# static fields
.field private static sLoadingContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCacheEndTime:J

.field private mCommercialRecommendAppsContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

.field private mIsRequesting:Z

.field private mNeedHideBecauseReturnEmptyData:Z

.field private mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

.field private mRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field public mRequestCallback:Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewExpireTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    .line 54
    iput-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    .line 250
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$3nnYGN41IfsslqxAw4WfKTm_FhU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$3nnYGN41IfsslqxAw4WfKTm_FhU;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRequestCallback:Ljava8/util/function/Consumer;

    .line 417
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 4

    .line 430
    new-instance v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 432
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setNetIconUrl(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setAppId(Ljava/lang/String;)V

    .line 435
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 436
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "invalidClassName"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 437
    iput-object v1, v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 438
    iput-wide p1, v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->container:J

    .line 439
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p0

    iput-boolean p0, v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->isLandscapePos:Z

    return-object v0
.end method

.method private clearIconResInContents()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 177
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->recycleIconRes()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static clearLoadingContents()V
    .locals 1

    .line 455
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getCacheEndTime()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    return-wide v0
.end method

.method public static getController(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendController;
    .locals 1

    .line 75
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-object v0
.end method

.method private getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getLoadingContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;
    .locals 3

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_enable_recommend_apps_view_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideRecommendScreenDelay()V
    .locals 4

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenDisappearRunnable;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenDisappearRunnable;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x4b0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static initLoadingAnimationContents()V
    .locals 3

    .line 444
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearLoadingContents()V

    .line 445
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 448
    new-instance v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 449
    sget-object v2, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAfterRecommendDisableInterval()Z
    .locals 6

    .line 536
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 540
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHomeDataCreateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isNeedHideBecauseReturnEmptyData()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    return v0
.end method

.method private isRequesting()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    if-eqz p1, :cond_1

    .line 252
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getCacheTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setCacheEndTime(J)V

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getEndTimeInMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setViewExpireTime(J)V

    const-string v0, "request_success"

    .line 257
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendInfo(Ljava/util/List;)V

    goto :goto_1

    .line 253
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRequestedDataEmpty()V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onRequestedDataEmpty$2(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method static synthetic lambda$preloadRecommendAppsIcon$0(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private needToRequest()Z
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRequesting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendDataTooFew()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "RecommendController"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cached data expired"

    goto :goto_0

    :cond_1
    const-string v2, "recommend data too few"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "RecommendController"

    const-string v1, "don\'t request, because folder is requesting now"

    .line 117
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "RecommendController"

    const-string v1, "don\'t request, because recommend screen can\'t show"

    .line 120
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private onRequestedDataEmpty()V
    .locals 2

    const-string v0, "request_fail"

    .line 263
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    const-string v0, "RecommendController"

    const-string v1, "requested data is empty"

    .line 264
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canShowOldRecommendData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$5812qUQ23-Cmx195-GaO_L9Fc3U;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$5812qUQ23-Cmx195-GaO_L9Fc3U;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hideRecommendScreenDelay()V

    :goto_0
    return-void
.end method

.method private preloadAndRefresh()V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadRecommendAppsIcon()V

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    .line 229
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setCacheEndTime(J)V
    .locals 3

    .line 134
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    const-string v0, "RecommendController"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set cacheEnd time\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsRequesting(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return-void
.end method

.method private setViewExpireTime(J)V
    .locals 3

    .line 139
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mViewExpireTime:J

    const-string v0, "RecommendController"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set expire time\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canRecommendScreenShow()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isGuessYouLikeAdsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isNeedHideBecauseReturnEmptyData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract canRecommendSwitchShow()Z
.end method

.method public abstract canShowOldRecommendData()Z
.end method

.method public clearContents()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public count()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    return-object v0
.end method

.method public getFilteredRecommendAppsContents()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 479
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilteredRecommendInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 489
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    return-object v0
.end method

.method protected getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;
    .locals 1

    .line 493
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method public getFolderRecommendAdInfo(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    .line 303
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewExpireTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mViewExpireTime:J

    return-wide v0
.end method

.method public abstract handleClick(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;IJ)V"
        }
    .end annotation
.end method

.method public hasUserChangedRecommendSwitchState()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveData()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isCachedDataExpired()Z
    .locals 4

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getCacheEndTime()J

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

.method public isGuessYouLikeAdsOn()Z
    .locals 3

    .line 514
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 517
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z
    .locals 1

    .line 325
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRecommendDataTooFew()Z
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecommendSwitchOn()Z
    .locals 3

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOnAsDefault()Z

    move-result v0

    return v0
.end method

.method public isRecommendSwitchOnAsDefault()Z
    .locals 2

    .line 509
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removedRecommendAppsByPackageName(Ljava/lang/String;)Z

    return-void
.end method

.method public onBinded(Z)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->onBind(Z)V

    return-void
.end method

.method public abstract onCurrentScreenShowing()V
.end method

.method public onDoRefreshWhenLowContent()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "onDoRefreshWhenLowContent, try to request recommend app data"

    .line 199
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendWithCheck()V

    return-void
.end method

.method public onFolderHideRecommends()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    return-void
.end method

.method public onFolderShowRecommends()V
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "folder open, request recommend app list"

    .line 217
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRequesting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showLoadingView()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    :goto_0
    return-void
.end method

.method public abstract onRecommendAppRemoved()V
.end method

.method public onSwitchChangedByUser(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately()V

    :cond_0
    return-void
.end method

.method public abstract onXOutClick()V
.end method

.method public preloadRecommendAppsIcon()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "preload recommend apps icons"

    .line 234
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 236
    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$Xj9z-3-NxNcpNKp3gsO4_0x7lSA;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$Xj9z-3-NxNcpNKp3gsO4_0x7lSA;-><init>(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->refreshList()V

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 335
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->filterCollection(Ljava/util/Collection;Ljava8/util/function/Predicate;)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRecommendAppRemoved()V

    return-void
.end method

.method public removeRecommendSwitchSharedPreference()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removedRecommendAppsByPackageName(Ljava/lang/String;)Z
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 358
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava8/util/function/Consumer;)V
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
.end method

.method public requestRecommendImmediately()V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showLoadingView()V

    const/4 v0, 0x1

    .line 313
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRequestCallback:Ljava8/util/function/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava8/util/function/Consumer;)V

    const-string v0, "request"

    .line 315
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    return-void
.end method

.method public requestRecommendWithCheck()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNeedHideBecauseReturnEmptyData(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    return-void
.end method

.method public setRecommendInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 348
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "view"

    .line 351
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    .line 353
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecommendSwitchOn(Z)V
    .locals 2

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onSwitchChangedByUser(Z)V

    .line 546
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->onRecommendAppsSwitchStateChanged(Z)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getRecommendTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f100208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->showLoadingView()V

    return-void
.end method

.method public abstract trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
.end method
