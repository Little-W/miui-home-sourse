.class public Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;
.super Lcom/miui/home/launcher/UninstallDropTargetMode;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDropTargetMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delete"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 134
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIconResId()I
    .locals 0

    const p0, 0x7f08030f

    return p0
.end method

.method public getIconResIdLightWallpaper()I
    .locals 0

    const p0, 0x7f080310

    return p0
.end method

.method public getLabelResId()I
    .locals 0

    const p0, 0x7f110490

    return p0
.end method

.method public onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Delete$QbDkq7kCfLsLZnoGqwY8JBKSthA;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Delete$QbDkq7kCfLsLZnoGqwY8JBKSthA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 133
    invoke-static {p2, p0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->filterValidatedInfos(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    .line 132
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
    .locals 8

    .line 139
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 140
    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->setIgnoreSearchLayoutTranY()V

    return v2

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v1

    .line 145
    instance-of v3, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_2

    .line 146
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 147
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 149
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 150
    invoke-static {p1, v4}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    const-string v3, "folder"

    .line 153
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "shortcut"

    .line 155
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    .line 158
    :goto_1
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 159
    invoke-static {v0, p1, v3}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p3, v1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    goto :goto_2

    .line 161
    :cond_3
    instance-of v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v5, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v5, :cond_4

    const/4 v1, 0x2

    new-array v5, v1, [I

    .line 163
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p3

    .line 164
    invoke-virtual {p3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 165
    aget v6, v5, v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v1

    add-int/2addr v6, v7

    aput v6, v5, v2

    .line 166
    aget v6, v5, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/2addr p3, v1

    add-int/2addr v6, p3

    aput v6, v5, v4

    .line 167
    iput v4, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    .line 168
    invoke-static {p1, v3, v5}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteMiuiWidgetWidthBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;[I)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :goto_2
    if-nez v2, :cond_5

    .line 173
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/UninstallDropTarget;->post(Ljava/lang/Runnable;)Z

    return v4
.end method
