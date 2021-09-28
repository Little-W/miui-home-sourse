.class Lcom/miui/home/launcher/FolderGridView$2;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderGridView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$000(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 318
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->getLastVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 319
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->setSelection(I)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView$2;->this$0:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method
