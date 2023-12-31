.class public abstract Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;
.super Lcom/miui/home/launcher/ShortcutsAdapter;
.source "BasePreinstallFolderAdapter.java"


# instance fields
.field protected mShowingPreinstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearPreinstallAds()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f0d003a

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method public enableReorder(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 73
    iget p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCount()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getMaxShowingCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    return p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getMaxShowingCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v1

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mShowingPreinstallList:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 37
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method protected abstract getMaxShowingCount()I
.end method

.method public getReorderCount()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    return p0
.end method

.method public getRestCapacity()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getMaxShowingCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getMaxShowingCount()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 78
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->onWallpaperColorChanged()V

    .line 87
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconContainer()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_1

    .line 88
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->restoreToInitState()V

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p2

    .line 79
    :cond_3
    :goto_1
    invoke-super {p0, p1, v0, p3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected abstract loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
.end method
