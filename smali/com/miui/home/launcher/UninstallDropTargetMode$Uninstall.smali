.class public Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;
.super Lcom/miui/home/launcher/UninstallDropTargetMode;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDropTargetMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uninstall"
.end annotation


# instance fields
.field private mStartUninstallDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTargetMode;-><init>()V

    .line 78
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$zes4mVTb72HYWsNJLJliXkoBE38;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$zes4mVTb72HYWsNJLJliXkoBE38;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 4

    .line 86
    iget-object v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v2, p3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v2}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v1}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 94
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/UninstallDialog;->bindItem(Lcom/miui/home/launcher/DragObject;)Z

    return v2

    .line 87
    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :goto_1
    return v1
.end method

.method private bindHybirdApp(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 102
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/UninstallDialog;->bindItem(Lcom/miui/home/launcher/DragObject;)Z

    .line 103
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$new$1()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->startUninstallDialog()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 45
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    const v0, 0x7f0800b4

    return v0
.end method

.method public getLabelResId()I
    .locals 1

    const v0, 0x7f1000f8

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

    .line 44
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$NgnxVFwVII-rExadrOtPpNn29pI;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$NgnxVFwVII-rExadrOtPpNn29pI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->filterValidatedInfos(Ljava/util/List;Ljava8/util/function/Predicate;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 51
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->canBeDrop()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 53
    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v1, :cond_1

    .line 60
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0, p1, p3, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->bindApplication(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 63
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->bindHybirdApp(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragView;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :goto_0
    if-nez v2, :cond_3

    .line 70
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->mStartUninstallDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    return v2
.end method
