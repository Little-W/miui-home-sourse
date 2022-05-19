.class Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;
.source "AssistantDragOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onPickerAddWidget$17(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field final synthetic val$itemInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onDragCompleted$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$600(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method


# virtual methods
.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 531
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AssistantDragOverlay"

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPickerAddWidget completed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$400(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
