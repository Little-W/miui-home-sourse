.class Lcom/miui/home/launcher/Launcher$64;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 7155
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$64;->val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7158
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    .line 7159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to fill empty cell, because it is dragging :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$7900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7162
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8002(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 7163
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$64;->val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->fillEmptyCellAuto(Lcom/miui/home/launcher/ItemInfo;)V

    .line 7164
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8002(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method
