.class Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;
.source "AssistantDragOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onDragStart(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field final synthetic val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;ZLcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    iput-object p5, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$source:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 495
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, v1, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "AssistantDragOverlay"

    const-string v0, "mDropTask is null"

    .line 502
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "picker"

    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 506
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$600(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/DragObject;)V

    :cond_3
    return-void
.end method
