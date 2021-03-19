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

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 22
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    .line 23
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setRecommendFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method static synthetic lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected getMaxShowingCount()I
    .locals 1

    .line 28
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

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-object v0
.end method

.method protected loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 33
    instance-of v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    check-cast p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    new-instance v1, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$4IylazTprF4kNWMFt1-iu1VitV0;

    invoke-direct {v1, p2}, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$4IylazTprF4kNWMFt1-iu1VitV0;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->onBinded(Z)V

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->updateAdapter()V

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->handleView()V

    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->onRecommendAppsEnableChanged(Z)V

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->notifyDataSetChanged()V

    return-void
.end method
