.class final Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1$updateOperationIcon$1;
.super Ljava/lang/Object;
.source "MarketOperationIconService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;->updateOperationIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $operationIcons:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1$updateOperationIcon$1;->$operationIcons:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconManager;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1$updateOperationIcon$1;->$operationIcons:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/OperationIconManager;->updateIconInfoList(Ljava/lang/String;)V

    return-void
.end method
