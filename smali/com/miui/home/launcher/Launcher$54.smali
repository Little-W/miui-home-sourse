.class Lcom/miui/home/launcher/Launcher$54;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->waitForAllIconsFinishLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5588
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5591
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$7900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->getWaitTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5594
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->fillEmptyCellsAfterMigrateDB()V

    .line 5595
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->finishMigratingDB()V

    .line 5596
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->finishLoading()V

    .line 5597
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$8000(Lcom/miui/home/launcher/Launcher;)V

    .line 5598
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    :goto_0
    return-void
.end method
