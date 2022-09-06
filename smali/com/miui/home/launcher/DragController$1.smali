.class Lcom/miui/home/launcher/DragController$1;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$1;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 8

    .line 405
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/miui/home/launcher/DragController$1;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v1}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const v1, 0x7f110182

    .line 407
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/home/launcher/DragController$1;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v5}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f110183

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0009

    iget-object v5, p0, Lcom/miui/home/launcher/DragController$1;->this$0:Lcom/miui/home/launcher/DragController;

    .line 410
    invoke-static {v5}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController$1;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v7}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v3

    .line 409
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
