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

.field protected mRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field public mRequestCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    .line 50
    iput-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    .line 254
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$vuWNS_nQP5-sCgVLKYFV12ab2tQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$vuWNS_nQP5-sCgVLKYFV12ab2tQ;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRequestCallback:Ljava/util/function/Consumer;

    .line 439
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 4

    .line 452
    new-instance v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 453
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 454
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setNetIconUrl(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->setAppId(Ljava/lang/String;)V

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 458
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "invalidClassName"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 459
    iput-object v1, v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 460
    iput-wide p1, v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->container:J

    return-object v0
.end method

.method public static clearLoadingContents()V
    .locals 1

    .line 476
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getCacheEndTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    return-wide v0
.end method

.method public static getController(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendController;
    .locals 1

    .line 71
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

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

    .line 480
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hideRecommendScreenDelay()V
    .locals 3

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenDisappearRunnable;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenDisappearRunnable;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v1, 0x4b0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static initLoadingAnimationContents()V
    .locals 3

    .line 465
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearLoadingContents()V

    .line 466
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 469
    new-instance v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 470
    sget-object v2, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAfterRecommendDisableInterval()Z
    .locals 5

    .line 553
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 557
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHomeDataCreateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf731400

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isNeedHideBecauseReturnEmptyData()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    return p0
.end method

.method static synthetic lambda$preloadRecommendAppsIcon$0(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private onRequestedDataEmpty()V
    .locals 2

    const-string v0, "request_fail"

    .line 268
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    const-string v0, "RecommendController"

    const-string v1, "requested data is empty"

    .line 269
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canShowOldRecommendData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$5812qUQ23-Cmx195-GaO_L9Fc3U;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$5812qUQ23-Cmx195-GaO_L9Fc3U;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hideRecommendScreenDelay()V

    :goto_0
    return-void
.end method

.method private setCacheEndTime(J)V
    .locals 1

    .line 130
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set cacheEnd time\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendController"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setViewExpireTime(J)V
    .locals 1

    .line 135
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mViewExpireTime:J

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set expire time\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendController"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canRecommendScreenShow()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isGuessYouLikeAdsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isNeedHideBecauseReturnEmptyData()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract canRecommendSwitchShow()Z
.end method

.method public abstract canShowOldRecommendData()Z
.end method

.method public clearContents()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearIconResInContents()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "clearIconResInContents"

    .line 172
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 174
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->recycleIconRes()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 178
    invoke-virtual {v0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->recycleIconRes()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public count()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    return-object p0
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

    .line 494
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 500
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    return-object p0
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

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 510
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method protected getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getFolderRecommendAdInfo(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 3

    .line 307
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    .line 308
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;
    .locals 3

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_enable_recommend_apps_view_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTrackKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "request"

    return-object p0
.end method

.method protected getViewExpireTime()J
    .locals 2

    .line 140
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
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveData()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isCachedDataExpired()Z
    .locals 4

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getCacheEndTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGuessYouLikeAdsOn()Z
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 534
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z
    .locals 0

    .line 347
    sget-object p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRecommendDataTooFew()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecommendSwitchOn()Z
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOnAsDefault()Z

    move-result p0

    return p0
.end method

.method public isRecommendSwitchOnAsDefault()Z
    .locals 2

    .line 526
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRequesting()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return p0
.end method

.method public synthetic lambda$new$1$RecommendController(Ljava/util/List;)V
    .locals 5

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onGuessCallback()V

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 260
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

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getEndTimeInMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setViewExpireTime(J)V

    const-string v0, "request_success"

    .line 262
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendInfo(Ljava/util/List;)V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRequestedDataEmpty()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onRequestedDataEmpty$2$RecommendController()V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method public abstract loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation
.end method

.method protected needToRequest()Z
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRequesting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendDataTooFew()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, because "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "cached data expired"

    goto :goto_0

    :cond_1
    const-string p0, "recommend data too few"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "don\'t request, because folder is requesting now"

    .line 113
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "don\'t request, because recommend screen can\'t show"

    .line 116
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removedRecommendAppsByPackageName(Ljava/lang/String;)Z

    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->onBind(Z)V

    return-void
.end method

.method public abstract onCurrentScreenShowing()V
.end method

.method public onDoRefreshWhenLowContent()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "onDoRefreshWhenLowContent, try to request recommend app data"

    .line 200
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendWithCheck()V

    return-void
.end method

.method public onFolderHideRecommends()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    return-void
.end method

.method public onFolderShowRecommends()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "folder open, request recommend app list"

    .line 218
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRequesting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showLoadingView()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    :goto_0
    return-void
.end method

.method public onGuessCallback()V
    .locals 0

    return-void
.end method

.method public abstract onRecommendAppRemoved()V
.end method

.method public onSwitchChangedByUser(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 540
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    :cond_0
    return-void
.end method

.method public abstract onXOutClick()V
.end method

.method protected preloadAndRefresh()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadRecommendAppsIcon()V

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    .line 230
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public preloadRecommendAppsIcon()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "preload recommend apps icons"

    .line 235
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
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

    .line 237
    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$_029LyF0OPndow8OnQbvVeZ42OY;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$_029LyF0OPndow8OnQbvVeZ42OY;-><init>(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->refreshList()V

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 357
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->filterCollection(Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRecommendAppRemoved()V

    return-void
.end method

.method public removeRecommendSwitchSharedPreference()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removedRecommendAppsByPackageName(Ljava/lang/String;)Z
    .locals 3

    .line 379
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

    .line 380
    invoke-virtual {v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V
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
.end method

.method public requestRecommendImmediately(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadRecommendAppsIcon()V

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 325
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showLoadingView()V

    .line 330
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRequestCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getTrackKey(I)Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    return-void
.end method

.method public requestRecommendWithCheck()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 192
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setIsRequesting(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return-void
.end method

.method public setNeedHideBecauseReturnEmptyData(Z)V
    .locals 0

    .line 152
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

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 369
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "view"

    .line 373
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    .line 375
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecommendSwitchOn(Z)V
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 563
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onSwitchChangedByUser(Z)V

    .line 564
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->onRecommendAppsSwitchStateChanged(Z)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 485
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getRecommendTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f110410

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 490
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->showLoadingView()V

    return-void
.end method

.method public abstract trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
.end method
