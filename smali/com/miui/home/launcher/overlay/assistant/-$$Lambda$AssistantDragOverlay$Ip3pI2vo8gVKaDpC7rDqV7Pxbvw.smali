.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$0:Lcom/miui/home/launcher/Workspace;

    iput p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$0:Lcom/miui/home/launcher/Workspace;

    iget v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ip3pI2vo8gVKaDpC7rDqV7Pxbvw;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$findAvailableScreenPosition$18(Lcom/miui/home/launcher/Workspace;ILjava/lang/Runnable;)V

    return-void
.end method
