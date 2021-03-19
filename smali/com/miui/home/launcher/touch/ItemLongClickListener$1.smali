.class final Lcom/miui/home/launcher/touch/ItemLongClickListener$1;
.super Ljava/lang/Object;
.source "ItemLongClickListener.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dragController:Lcom/miui/home/launcher/DragController;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$dragController:Lcom/miui/home/launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$dragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 59
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 61
    invoke-static {p2}, Lcom/miui/home/launcher/touch/ItemLongClickListener;->access$000(Lcom/miui/home/launcher/DragObject;)V

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object p2, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$view:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz p2, :cond_1

    .line 65
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/touch/ItemLongClickListener$1;->val$view:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
