.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;

.field private final synthetic f$1:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;->f$1:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$3$IrPLZm13Yajkwq7Q4-w8VJFGpUY;->f$1:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;->lambda$onDragCompleted$0$AssistantDragOverlay$3(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method
