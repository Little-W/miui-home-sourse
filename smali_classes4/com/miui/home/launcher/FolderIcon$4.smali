.class Lcom/miui/home/launcher/FolderIcon$4;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->onDropBack(Lcom/miui/home/launcher/DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$d:Lcom/miui/home/launcher/DragObject;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$4;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$d:Lcom/miui/home/launcher/DragObject;

    iput-object p3, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$d:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->clearSavedCheckedStatus()V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->showAllChildViewWhenDrawChild()V

    .line 417
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$4;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    return-void
.end method
