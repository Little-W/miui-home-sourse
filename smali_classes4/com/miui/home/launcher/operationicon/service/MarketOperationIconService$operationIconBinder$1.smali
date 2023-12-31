.class public final Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;
.super Lcom/miui/home/launcher/operationicon/service/IOperationIconContext$Stub;
.source "MarketOperationIconService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/service/IOperationIconContext$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOperationIcon(Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateOperationIcon="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MarketOperationIconService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1$updateOperationIcon$1;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1$updateOperationIcon$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method
