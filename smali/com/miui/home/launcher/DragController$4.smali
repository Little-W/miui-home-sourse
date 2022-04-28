.class Lcom/miui/home/launcher/DragController$4;
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

.field final synthetic val$currentTarget:Lcom/miui/home/launcher/DropTarget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DropTarget;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    iput-object p2, p0, Lcom/miui/home/launcher/DragController$4;->val$currentTarget:Lcom/miui/home/launcher/DropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1138
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController$4;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .line 1141
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/DragController$4;->val$currentTarget:Lcom/miui/home/launcher/DropTarget;

    .line 1142
    invoke-interface {v2}, Lcom/miui/home/launcher/DropTarget;->getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v3}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10006a

    .line 1141
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
