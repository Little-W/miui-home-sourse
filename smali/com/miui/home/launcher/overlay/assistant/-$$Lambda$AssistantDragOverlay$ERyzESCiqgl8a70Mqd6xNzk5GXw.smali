.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ERyzESCiqgl8a70Mqd6xNzk5GXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ERyzESCiqgl8a70Mqd6xNzk5GXw;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ERyzESCiqgl8a70Mqd6xNzk5GXw;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$2(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
