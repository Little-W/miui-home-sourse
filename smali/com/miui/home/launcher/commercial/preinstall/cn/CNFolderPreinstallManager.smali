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

    .line 109
    new-instance v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>(I)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setNetIconUrl(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 113
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

    .line 114
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 115
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "invalidClassName"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iput-object p1, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 117
    iput-wide p2, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    .line 118
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
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;",
            "Landroid/content/Context;",
            "IJ)V"
        }
    .end annotation

    .line 197
    new-instance v6, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$EsCFAiMXN4RNP6GgMJnaWNTvdI8;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$EsCFAiMXN4RNP6GgMJnaWNTvdI8;-><init>(Landroid/content/Context;Ljava/util/List;IJ)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$handleClick$449(Landroid/content/Context;Ljava/util/List;IJ)V
    .locals 0

    .line 197
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p0

    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method static synthetic lambda$null$445(Lcom/miui/home/launcher/RemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$onAppStartDownload$450(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.32.5.3"

    goto :goto_0

    :cond_0
    const-string v0, "1.32.5.1"

    .line 218
    :goto_0
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->addInstallCount(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onPreinstallItemDeleted$447(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.32.5.3"

    goto :goto_0

    :cond_0
    const-string v0, "1.32.5.1"

    .line 148
    :goto_0
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->addDeleteCount(Ljava/lang/String;)V

    .line 149
    invoke-static {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->addDeletePackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setPreinstallData$444(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->updateAdapter(Z)V

    return-void
.end method

.method static synthetic lambda$trackViewEvent$448(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method

.method public static synthetic lambda$updateAdapter$446(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/util/ArrayList;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
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

    .line 95
    new-instance p1, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$pHTW-dd86b1LGI7LmJnzwC_CHRo;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$pHTW-dd86b1LGI7LmJnzwC_CHRo;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

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
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 135
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->updateAdapter(Z)V

    .line 136
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static trackViewEvent(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;Landroid/content/Context;I)V
    .locals 1

    .line 170
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$6I_bWpIfjy2IXJwRC489yhW2FtQ;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$6I_bWpIfjy2IXJwRC489yhW2FtQ;-><init>(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

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
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {p1, v3}, Lcom/miui/home/launcher/commercial/CommercialCommons;->equals(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_2
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    .line 192
    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/miui/home/launcher/FolderInfo;->id:J

    .line 189
    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->handleClick(Ljava/util/List;Landroid/content/Context;IJ)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public handleView()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_3

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getShowingPreinstallList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 158
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/RemoteShortcutInfo;

    move v4, v1

    .line 160
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-static {v3, v5}, Lcom/miui/home/launcher/commercial/CommercialCommons;->equals(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mFolderPreinstallAdInfoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->trackViewEvent(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;Landroid/content/Context;I)V

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

    .line 229
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->removeItem(Ljava/lang/String;)Landroid/util/Pair;

    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->getShowingPreinstallList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 207
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Launcher;->addRecommendAppToFolderWithoutDragAnimation(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z

    .line 211
    new-instance p1, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$ibQ2vA65EI1HtD51h84OERyzYl0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$ibQ2vA65EI1HtD51h84OERyzYl0;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 220
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

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->removeItem(Ljava/lang/String;)Landroid/util/Pair;

    .line 141
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$6FXWWTsiL7CxxpInJErRWKvdFlE;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$6FXWWTsiL7CxxpInJErRWKvdFlE;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/lang/String;)V

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
    new-instance p1, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$HXykMJxrViHD_nN7_IVoh5IudX8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$HXykMJxrViHD_nN7_IVoh5IudX8;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    return-void
.end method

.method public updateAdapter(Z)V
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

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$L5GsGvW9T9K4c9UFIaV08vfwAOM;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$L5GsGvW9T9K4c9UFIaV08vfwAOM;-><init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v1, "CNFolderPreinstallManager"

    .line 99
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

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->setData(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "CNFolderPreinstallManager"

    const-string v1, "recommend folder will show NO preinstall ads"

    .line 102
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->mRecommendFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->setData(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method
