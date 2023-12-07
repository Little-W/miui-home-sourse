.class final Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "OperationIconEventTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;->$it:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLauncherExpose exposeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;->$it:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationIconEventTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onLauncherExpose$$inlined$also$lambda$1;->$it:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "expose"

    invoke-static {v0, v2, v1, v1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->access$buildEventList(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->access$sendMarketService(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;)V

    return-void
.end method
