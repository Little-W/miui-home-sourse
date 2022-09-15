.class Lcom/miui/home/launcher/FolderIcon$8;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DropAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$d:Lcom/miui/home/launcher/DragObject;

.field final synthetic val$info:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$8;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon$8;->val$info:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/FolderIcon$8;->val$d:Lcom/miui/home/launcher/DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropAnimationFinish()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$8;->val$info:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$8;->val$d:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->removeDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method
