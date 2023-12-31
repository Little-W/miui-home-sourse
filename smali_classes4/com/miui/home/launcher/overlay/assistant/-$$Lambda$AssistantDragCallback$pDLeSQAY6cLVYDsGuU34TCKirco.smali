.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field private final synthetic f$1:Lcom/miui/home/launcher/DragView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;->f$1:Lcom/miui/home/launcher/DragView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;->f$1:Lcom/miui/home/launcher/DragView;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantStart$2$AssistantDragCallback(Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
