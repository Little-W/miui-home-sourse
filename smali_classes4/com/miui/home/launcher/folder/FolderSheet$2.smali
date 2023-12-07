.class Lcom/miui/home/launcher/folder/FolderSheet$2;
.super Ljava/lang/Object;
.source "FolderSheet.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderSheet;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 650
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    .line 651
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->access$102(Lcom/miui/home/launcher/folder/FolderSheet;Z)Z

    .line 652
    sput-boolean v0, Lcom/miui/home/launcher/folder/FolderSheet;->isFolderSheetViewShow:Z

    .line 653
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$200(Lcom/miui/home/launcher/folder/FolderSheet;)V

    .line 654
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 655
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 656
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->access$000(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)V

    .line 657
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->access$300(Lcom/miui/home/launcher/folder/FolderSheet;)V

    :cond_0
    return-void
.end method
