.class Lcom/miui/home/launcher/Launcher$16$1$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$16$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

.field final synthetic val$delay:I

.field final synthetic val$folderGrid:Lcom/miui/home/launcher/FolderGridView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$16$1$1;Lcom/miui/home/launcher/FolderGridView;I)V
    .locals 0

    .line 2591
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$folderGrid:Lcom/miui/home/launcher/FolderGridView;

    iput p3, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$folderGrid:Lcom/miui/home/launcher/FolderGridView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2594
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$folderGrid:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->computeVerticalScrollOffset()I

    move-result v1

    if-eqz v0, :cond_1

    .line 2595
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$2800(Lcom/miui/home/launcher/Launcher;)I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 2603
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I

    goto :goto_1

    .line 2596
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2597
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onFinishHighlightLocatedApp()V

    goto :goto_1

    .line 2599
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->this$3:Lcom/miui/home/launcher/Launcher$16$1$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$2802(Lcom/miui/home/launcher/Launcher;I)I

    .line 2600
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$folderGrid:Lcom/miui/home/launcher/FolderGridView;

    iget v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1$1;->val$delay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/FolderGridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method
