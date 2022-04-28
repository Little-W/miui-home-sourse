.class Lcom/miui/home/launcher/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

.field final synthetic val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 2556
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$13;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$13;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$13;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2559
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$13;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$13;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$13;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 2560
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$13;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    .line 2561
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$13;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$13;->val$shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2562
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$13;->val$folderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method
