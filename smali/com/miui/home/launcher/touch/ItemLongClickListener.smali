.class public Lcom/miui/home/launcher/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source "ItemLongClickListener.java"


# static fields
.field public static INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/miui/home/launcher/touch/-$$Lambda$ItemLongClickListener$b-5fgc48rSRQ7sbs3NYVTXq_5eI;->INSTANCE:Lcom/miui/home/launcher/touch/-$$Lambda$ItemLongClickListener$b-5fgc48rSRQ7sbs3NYVTXq_5eI;

    sput-object v0, Lcom/miui/home/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/miui/home/launcher/touch/ItemLongClickListener;->changeDragViewTextColor(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public static canStartDrag(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 117
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static changeDragViewTextColor(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->onWallpaperColorChanged()V

    .line 104
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$b-5fgc48rSRQ7sbs3NYVTXq_5eI(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static onAllAppsItemLongClick(Landroid/view/View;)Z
    .locals 4

    .line 49
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lcom/miui/home/launcher/touch/ItemLongClickListener;->canStartDrag(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 52
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    .line 56
    new-instance v3, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/launcher/DragController;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 78
    new-instance v3, Lcom/miui/home/launcher/touch/ItemLongClickListener$2;

    invoke-direct {v3, v0, p0}, Lcom/miui/home/launcher/touch/ItemLongClickListener$2;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 94
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    return v3
.end method
