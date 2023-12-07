.class Lcom/miui/home/launcher/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/miui/home/launcher/DragController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1347
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$200(Lcom/miui/home/launcher/DragController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    .line 1348
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    .line 1349
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$300(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_2

    .line 1350
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragScroller;->scrollDragingLeft()V

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragScroller;->scrollDragingRight()V

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->access$402(Lcom/miui/home/launcher/DragController;I)I

    .line 1356
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$600(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {p0}, Lcom/miui/home/launcher/DragController;->access$500(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;

    move-result-object p0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method setDirection(I)V
    .locals 0

    .line 1361
    iput p1, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->mDirection:I

    return-void
.end method
