.class public interface abstract Lcom/miui/home/launcher/hotseats/HotSeatsContent;
.super Ljava/lang/Object;
.source "HotSeatsContent.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/IconContainer;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;


# virtual methods
.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->canAcceptByHotSeats()Z

    move-result p1

    return p1
.end method

.method public abstract addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
.end method

.method public abstract finishLoading()V
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getUserPresentAnimationChildList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSeatsFull()Z
.end method

.method public abstract keepDataConsistent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onTranslationChanged()V
    .locals 0

    return-void
.end method

.method public abstract refreshSearchIcon()V
.end method

.method public abstract removeAllItemIcons()V
.end method

.method public abstract removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
.end method

.method public abstract removeShortcuts(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public setTranslationZ(F)V
    .locals 0

    return-void
.end method

.method public abstract startLoading()V
.end method

.method public updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 87
    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method

.method public abstract updateIconSize()V
.end method
