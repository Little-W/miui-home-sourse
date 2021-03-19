.class Lcom/miui/home/launcher/FolderCling$2;
.super Ljava/lang/Object;
.source "FolderCling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    if-eqz v1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderCling;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 300
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    .line 301
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 302
    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->deleteSelf()V

    :cond_0
    return-void
.end method
