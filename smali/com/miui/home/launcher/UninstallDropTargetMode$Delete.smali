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

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 125
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    const v0, 0x7f080138

    return v0
.end method

.method public getLabelResId()I
    .locals 1

    const v0, 0x7f10024f

    return v0
.end method

.method public onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Delete$udkt7EObADgerZ8ShHS5YyBXn6w;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Delete$udkt7EObADgerZ8ShHS5YyBXn6w;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 124
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;->filterValidatedInfos(Ljava/util/List;Ljava8/util/function/Predicate;)Ljava/util/List;

    move-result-object p2

    .line 123
    invoke-static {p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 130
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    .line 131
    invoke-static {p2, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->setIgnoreSearchLayoutTranY()V

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p3

    .line 136
    instance-of v0, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_2

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 140
    invoke-static {p1, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    const-string p1, "folder"

    .line 143
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "shortcut"

    .line 145
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDelete(Ljava/lang/String;)V

    .line 148
    :goto_1
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 149
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    const/4 p1, 0x1

    return p1
.end method
