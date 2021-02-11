.class public Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;
.super Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
.source "CNFolderPreinstallManager.java"


# instance fields
.field private mFolderPreinstallAdInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;-><init>()V

    return-void
.end method

.method public static buildShortcutInfoFromAppstoreAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;Landroid/content/Context;J)Lcom/miui/home/launcher/RemoteShortcutInfo;
    .locals 3

    .line 106
    new-instance v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>(I)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setNetIconUrl(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setAppId(Ljava/lang/String;)V

    .line 111
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 112
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "invalidClassName"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    iput-object p1, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 114
    iput-wide p2, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p0

    iput-boolean p0, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->isLandscapePos:Z

    return-object v0
.end method

.method public static handleClick(Ljava/util/List;Landroid/content/Context;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;",
            "Landroid/content/Context;",
            "IJ)V"
        }
    .end annotation

    .line 193
    new-instance v6, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$oojtxY5HttxoSUYxp_aJPaAi7tc;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$oojtxY5HttxoSUYxp_aJPaAi7tc;-><init>(Landroid/content/Context;Ljava/util/List;IJ)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$handleClick$4(Landroid/content/Context;Ljava/util/List;IJ)V
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method static synthetic lambda$onPreinstallItemDeleted$2(Landroid/util/Pair;)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleDislike(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method

.method public static synthetic lambda$setPreinstallData$0(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->updateAdapter()V

    return-void
.end method

.method static synthetic lambda$trackViewEvent$3(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    .locals 0

    .line 159
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method

.method public static synthetic lambda$updateAdapter$1(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/util/ArrayList;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    .line 93
    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    .line 91
    invoke-static {p2, v0, v1, v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->buildShortcutInfoFromAppstoreAppInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;Landroid/content/Context;J)Lcom/miui/home/launcher/RemoteShortcutInfo;

    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private limitCount(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    .line 75
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getRestCapacity()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    return-void
.end method

.method private removeItem(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->updateAdapter()V

    .line 133
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static trackViewEvent(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;Landroid/content/Context;I)V
    .locals 1

    .line 159
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;-><init>(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_3

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getShowingPreinstallList()Ljava/util/List;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 173
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/RemoteShortcutInfo;

    move v6, v2

    .line 175
    :goto_1
    iget-object v7, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 176
    iget-object v7, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {v5, v7}, Lcom/miui/home/launcher/commercial/CommercialCommons;->equals(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    iget-object v6, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v6}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 181
    :cond_2
    :goto_2
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    .line 185
    invoke-static {v1, p1, v4, v2, v3}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->handleClick(Ljava/util/List;Landroid/content/Context;IJ)V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public handleView()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_3

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getShowingPreinstallList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 147
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/RemoteShortcutInfo;

    move v4, v1

    .line 149
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {v3, v5}, Lcom/miui/home/launcher/commercial/CommercialCommons;->equals(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->trackViewEvent(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;Landroid/content/Context;I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_3
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

    .line 216
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->removeItem(Ljava/lang/String;)Landroid/util/Pair;

    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getShowingPreinstallList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 203
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Launcher;->addRecommendAppToFolderWithoutDragAnimation(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z

    .line 207
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->removeItem(Ljava/lang/String;)Landroid/util/Pair;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFolderDeleted()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V

    :cond_0
    return-void
.end method

.method public onLauncherDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method public onPreinstallItemDeleted(Ljava/lang/String;)V
    .locals 1

    .line 137
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->removeItem(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 138
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$AhzQjAewDkuXSe9cFc1phcfN_Ss;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$AhzQjAewDkuXSe9cFc1phcfN_Ss;-><init>(Landroid/util/Pair;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreinstallData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    .line 68
    new-instance p1, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$cZAQ4GbF3fzndxKBXO93E0H6JkU;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$cZAQ4GbF3fzndxKBXO93E0H6JkU;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    return-void
.end method

.method public updateAdapter()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->limitCount(Ljava/util/List;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-static {v1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$k9Wd4WIcWGNM_kbDCW9ZrzRB4Rc;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$k9Wd4WIcWGNM_kbDCW9ZrzRB4Rc;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    const-string v1, "CNFolderPreinstallManager"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recommend folder will show preinstall ads count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "CNFolderPreinstallManager"

    const-string v1, "recommend folder will show NO preinstall ads"

    .line 99
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void
.end method
