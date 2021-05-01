.class Lcom/miui/home/launcher/Launcher$47;
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

    .line 4617
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$47;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$45(Lcom/miui/home/launcher/Launcher$47;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 3

    .line 4630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100070

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4620
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4621
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v1, "action_open_folder"

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 4622
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    .line 4624
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 4625
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$6902(Lcom/miui/home/launcher/Launcher;Z)Z

    const/4 v0, 0x1

    .line 4626
    invoke-static {v0}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 4627
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$47;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 4628
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->open()V

    .line 4629
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$47$FSPDJcS7d-BQOTIuugHwzctMaJs;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$47$FSPDJcS7d-BQOTIuugHwzctMaJs;-><init>(Lcom/miui/home/launcher/Launcher$47;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 4631
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 4632
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$7000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 4633
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$7000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 4634
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$7000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 4635
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$7100(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4636
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4637
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->onLaunch()V

    .line 4638
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$47;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v1, v4}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 4639
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 4641
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method
