.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;->f$1:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$6$AssistantDragOverlay(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
