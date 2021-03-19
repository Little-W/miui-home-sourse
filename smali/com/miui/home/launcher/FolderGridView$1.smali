.class Lcom/miui/home/launcher/FolderGridView$1;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderGridView;->onDrop(Lcom/miui/home/launcher/DragObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$1;->this$0:Lcom/miui/home/launcher/FolderGridView;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView$1;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$1;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$000(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$1;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
