.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field private final synthetic f$1:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$1:Lcom/miui/home/launcher/Workspace;

    iput p3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$3:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$1:Lcom/miui/home/launcher/Workspace;

    iget v2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;->f$3:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onPickerAddWidget$18(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
