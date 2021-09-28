.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$yGQAT7UBwwrGH4Fc1Sw3yZHUshI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$yGQAT7UBwwrGH4Fc1Sw3yZHUshI;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$yGQAT7UBwwrGH4Fc1Sw3yZHUshI;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$yGQAT7UBwwrGH4Fc1Sw3yZHUshI;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$yGQAT7UBwwrGH4Fc1Sw3yZHUshI;->f$1:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$onOverlayCall$1(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
