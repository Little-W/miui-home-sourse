.class Lcom/miui/home/launcher/FolderGridView$2;
.super Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;
.source "FolderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderGridView;->saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView;

.field final synthetic val$dragObject:Lcom/miui/home/launcher/DragObject;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;-><init>(Lcom/miui/home/launcher/FolderGridView$1;)V

    .line 327
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->cellX:I

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->cellY:I

    .line 329
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->container:J

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->mBuddyIconView:Landroid/view/View;

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->val$dragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyForParent()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->mBuddyForParent:Landroid/view/ViewGroup;

    return-void
.end method
