.class public Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;
.super Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;
.source "CNPreinstallableFolderShortcutsAdapter.java"


# static fields
.field private static sVisibleContentCapacity:I = 0x7fffffff


# instance fields
.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 26
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    .line 27
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method static synthetic lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 40
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f0d0028

    invoke-static {v1, v0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxShowingCount()I
    .locals 1

    .line 32
    sget v0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return v0
.end method

.method public getShowingPreinstallList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-object v0
.end method

.method protected loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 37
    instance-of v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    new-instance v2, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$QzUHYunDsRc8T2hfqPV5xdN0oFI;

    invoke-direct {v2, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$QzUHYunDsRc8T2hfqPV5xdN0oFI;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->onBinded(Z)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->handleView()V

    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->onRecommendAppsEnableChanged(Z)V

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    .line 59
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
