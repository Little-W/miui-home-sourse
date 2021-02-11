.class Lcom/miui/home/launcher/Launcher$61;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$61$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 6335
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$61;->val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6338
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$8600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    .line 6339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to fill empty cell, because it is dragging :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$8600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$61$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6342
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8702(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 6343
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6344
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$61;->val$deletedInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->fillEmptyCellAuto(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6345
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8702(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method
