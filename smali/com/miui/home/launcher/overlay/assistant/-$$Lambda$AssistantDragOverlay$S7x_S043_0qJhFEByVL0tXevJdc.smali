.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$S7x_S043_0qJhFEByVL0tXevJdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$S7x_S043_0qJhFEByVL0tXevJdc;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$S7x_S043_0qJhFEByVL0tXevJdc;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->lambda$runOnMainThread$15(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
