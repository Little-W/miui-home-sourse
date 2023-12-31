.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-boolean p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayInvoke$12$AssistantDragOverlay(Z)V

    return-void
.end method
