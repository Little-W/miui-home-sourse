.class public Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;
.super Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
.source "GlobalFolderPreinstallManager.java"


# instance fields
.field private mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

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

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;-><init>()V

    .line 47
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getPreinstallAdList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V
    .locals 0

    .line 29
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

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
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

    .line 216
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Launcher.GlobalFolderPreinstallManager"

    const-string v2, "get original ads fail"

    .line 222
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

    .line 233
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

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getRestCapacity()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {v1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 126
    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getFolderTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {v1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfos(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    const-string v2, "Launcher.GlobalFolderPreinstallManager"

    .line 132
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

    .line 135
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

    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
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

    .line 185
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

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->getOriginalPreinstallAd(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 195
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getFolderTagId()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1, p2, v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 197
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

    .line 200
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$handleClick$2(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleClick(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->preInstall(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.GlobalFolderPreinstallManager"

    const-string v0, "handle click fail"

    .line 169
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleView$1(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)V
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

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

    .line 148
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onPreinstallItemDeleted$0(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLauncherApplication:Lcom/miui/home/launcher/LauncherApplication;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleDislike(Landroid/content/Context;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V

    return-void
.end method

.method private transferToWrapper(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 263
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

    .line 237
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 244
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

    .line 245
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->transferToWrapper(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 247
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

    .line 253
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private updatePreinstallApps()V
    .locals 1

    .line 75
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public beforeRecommendFolderOpen()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mReloadPreinstallAdInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->updatePreinstallApps()V

    :cond_0
    return-void
.end method

.method public handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getShowingPreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
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

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
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

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    :cond_0
    return-void
.end method

.method public onFolderDeleted()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    :cond_0
    return-void
.end method

.method public onLauncherDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method public onPreinstallItemDeleted(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$UoD_OOfF6K79Gaxe-01wve1nRy4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$UoD_OOfF6K79Gaxe-01wve1nRy4;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestMorePreinstallAds(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mRequestAdsReason:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mLoadPreinstallAds:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->mPreinstallFolderAdapter:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz p1, :cond_0

    const-string p1, "folder adapter created"

    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
