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
.method constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$source:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 399
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eq p1, v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;->setResult(Ljava/lang/Object;)V

    :cond_1
    const-string p1, "picker"

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$600(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method
