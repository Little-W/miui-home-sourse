.class public final Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService;
.super Landroid/app/Service;
.source "MarketOperationIconService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$Companion;


# instance fields
.field private final operationIconBinder:Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService;->Companion:Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService;->operationIconBinder:Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "MarketOperationIconService"

    const-string v0, "onBind"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService;->operationIconBinder:Lcom/miui/home/launcher/operationicon/service/MarketOperationIconService$operationIconBinder$1;

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string p0, "MarketOperationIconService"

    const-string v0, "onCreate"

    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MarketOperationIconService"

    const-string v1, "onDestroy"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "MarketOperationIconService"

    const-string v1, "onStartCommand"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "MarketOperationIconService"

    const-string v1, "onUnbind"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
