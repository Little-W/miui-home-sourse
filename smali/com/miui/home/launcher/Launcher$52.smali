.class Lcom/miui/home/launcher/Launcher$52;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$folderInfo:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 5588
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Launcher$52(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 2

    .line 5606
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f11007b

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 5591
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 5592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5593
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5594
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    new-instance v1, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "click_outside_of_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 5597
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 5598
    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_open_folder"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5599
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$6700(Lcom/miui/home/launcher/Launcher;)V

    .line 5600
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 5601
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$6802(Lcom/miui/home/launcher/Launcher;Z)Z

    const/4 v0, 0x1

    .line 5602
    invoke-static {v0}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 5603
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 5604
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->open()V

    .line 5605
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$52$futi_Vdvi-GOlnOAsKD9MdhVqII;-><init>(Lcom/miui/home/launcher/Launcher$52;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 5607
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 5608
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$6900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    .line 5609
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->getFolderAnimDamping(Z)F

    move-result v2

    sget-object v3, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    .line 5610
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->getFolderAnimResponse(Z)F

    move-result v3

    .line 5608
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 5612
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$6900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 5613
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$6900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 5614
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->access$7000(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Z)V

    .line 5615
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;Z)V

    .line 5616
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5617
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->onLaunch()V

    .line 5618
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$52;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 5619
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenOpenOrCloseFolder(Lcom/miui/home/launcher/Launcher;Z)V

    .line 5621
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method
