.class Lcom/miui/home/launcher/DragController$3;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V
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

    .line 1139
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$3;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1139
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController$3;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 1142
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/home/launcher/DragController$3;->this$0:Lcom/miui/home/launcher/DragController;

    .line 1143
    invoke-static {p0}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDropAnnounce()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const p0, 0x7f11006e

    .line 1142
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
