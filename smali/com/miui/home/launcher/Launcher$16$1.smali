.class Lcom/miui/home/launcher/Launcher$16$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$16;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$16;)V
    .locals 0

    .line 2873
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2875
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$16;->val$folderParent:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$16;->val$folderParent:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 2878
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$16;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$16$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$16$1$1;-><init>(Lcom/miui/home/launcher/Launcher$16$1;)V

    sget v2, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_OPEN_DURATION:I

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$16$1;->this$1:Lcom/miui/home/launcher/Launcher$16;

    iget v3, v3, Lcom/miui/home/launcher/Launcher$16;->val$interval:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
