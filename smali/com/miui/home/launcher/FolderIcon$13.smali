.class Lcom/miui/home/launcher/FolderIcon$13;
.super Lcom/miui/home/library/mirror/MirrorDragListener;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 753
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    .line 738
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 748
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 733
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 758
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$13;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$1200(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
