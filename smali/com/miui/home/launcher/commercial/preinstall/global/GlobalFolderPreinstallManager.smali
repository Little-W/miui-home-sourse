.class public Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;
.super Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
.source "GlobalFolderPreinstallManager.java"


# instance fields
.field private mLauncherApplication:Lcom/miui/home/launcher/Application;

.field private mLoadPreinstallAds:Ljava/lang/Runnable;

.field private mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

.field private mReloadPreinstallAdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestAdsReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;-><init>()V

    .line 41
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getPreinstallAdList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->updatePreinstallApps()V

    return-void
.end method

.method private getOriginalAdList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 199
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    if-nez v1, :cond_2

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Launcher.GlobalFolderPreinstallManager"

    const-string v2, "get original ads fail"

    .line 216
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getOriginalAd()Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p1

    return-object p1
.end method

.method private getPreinstallAdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getRestCapacity()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {v1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 120
    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getGlobalFolderTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {v1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfos(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    const-string v2, "Launcher.GlobalFolderPreinstallManager"

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request folder preinstall ads, folder=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v4}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mRequestAdsReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", request count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "0"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->transferToWrapperList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private handleClick(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleClick(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private handleDislike(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 189
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getGlobalFolderTagId()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p1, p2, v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleDislike(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.GlobalFolderPreinstallManager"

    const-string v0, "handle dislike fail"

    .line 194
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$handleClick$2(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleClick(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->preInstall(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.GlobalFolderPreinstallManager"

    const-string v0, "handle click fail"

    .line 163
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleView$1(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-static {v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalAdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleView(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.GlobalFolderPreinstallManager"

    const-string v1, "handle view fail"

    .line 142
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onPreinstallItemDeleted$0(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/Application;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleDislike(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V

    return-void
.end method

.method private transferToWrapper(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V

    return-object v0
.end method

.method private transferToWrapperList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 231
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    .line 239
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->transferToWrapper(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Launcher.GlobalFolderPreinstallManager"

    const-string v2, "transfer info fail"

    .line 247
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private updatePreinstallApps()V
    .locals 1

    .line 69
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public beforeRecommendFolderOpen()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->updatePreinstallApps()V

    :cond_0
    return-void
.end method

.method public handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getShowingPreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v1, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$RizkvoouIy7ZcfyJwHQOSR2fN4w;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$RizkvoouIy7ZcfyJwHQOSR2fN4w;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public handleView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$Cy5ORpdUw3Xny6pRafNkJA85j1I;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$Cy5ORpdUw3Xny6pRafNkJA85j1I;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    :cond_0
    return-void
.end method

.method public onFolderDeleted()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    :cond_0
    return-void
.end method

.method public onLauncherDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method public onPreinstallItemDeleted(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object p1

    .line 97
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$UoD_OOfF6K79Gaxe-01wve1nRy4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$UoD_OOfF6K79Gaxe-01wve1nRy4;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestMorePreinstallAds(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mRequestAdsReason:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz p1, :cond_0

    const-string p1, "folder adapter created"

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
