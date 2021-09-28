.class Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;
.super Ljava/lang/Object;
.source "AssistantDragOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$000(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "AssistantDragOverlay"

    const-string v2, "METHOD_DRAG_END_WITH_RESULT return null cause of null mPaItemInfo"

    .line 170
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;->setResult(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$200(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    .line 173
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "AssistantDragOverlay"

    const-string v2, "METHOD_DRAG_END_WITH_RESULT"

    .line 175
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$400(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->val$extras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$300(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->access$500(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingFromAssistant(Z)V

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
