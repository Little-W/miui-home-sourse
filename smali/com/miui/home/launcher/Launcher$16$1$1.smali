.class Lcom/miui/home/launcher/Launcher$16$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$16$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/Launcher$16$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$16$1;)V
    .locals 0

    .line 2855
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2857
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 2858
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollToPosition(I)V

    .line 2860
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 2861
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    const/16 v1, 0xe6

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    .line 2867
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$16$1$1;->this$2:Lcom/miui/home/launcher/Launcher$16$1;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/Launcher;->access$2502(Lcom/miui/home/launcher/Launcher;I)I

    .line 2868
    new-instance v2, Lcom/miui/home/launcher/Launcher$16$1$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/launcher/Launcher$16$1$1$1;-><init>(Lcom/miui/home/launcher/Launcher$16$1$1;Lcom/miui/home/launcher/FolderGridView;I)V

    int-to-long v3, v1

    .line 2884
    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/home/launcher/FolderGridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
