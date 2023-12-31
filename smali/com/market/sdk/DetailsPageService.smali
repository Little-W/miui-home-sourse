.class Lcom/market/sdk/DetailsPageService;
.super Lcom/market/ServiceProxy;
.source "DetailsPageService.java"

# interfaces
.implements Lcom/xiaomi/market/IDetailsPageManager;


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.market.data.DetailsPageService"

.field private static final TAG:Ljava/lang/String; = "DetailsPageService"


# instance fields
.field private manager:Lcom/xiaomi/market/IDetailsPageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/market/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/DetailsPageService;)Lcom/xiaomi/market/IDetailsPageManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/market/sdk/DetailsPageService;->manager:Lcom/xiaomi/market/IDetailsPageManager;

    return-object p0
.end method

.method static openConnect()Lcom/market/sdk/DetailsPageService;
    .locals 4

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.data.DetailsPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    new-instance v1, Lcom/market/sdk/DetailsPageService;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/market/sdk/DetailsPageService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/xiaomi/market/IDetailsPageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IDetailsPageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/DetailsPageService;->manager:Lcom/xiaomi/market/IDetailsPageManager;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method openDetailPageAsync(Landroid/os/Bundle;Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/market/sdk/DetailsPageService$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/market/sdk/DetailsPageService$2;-><init>(Lcom/market/sdk/DetailsPageService;Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;Landroid/os/Bundle;)V

    const-string p1, "open_market_request_async"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/DetailsPageService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public openDetailsPage(Landroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 56
    new-instance v1, Lcom/market/sdk/DetailsPageService$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/DetailsPageService$1;-><init>(Lcom/market/sdk/DetailsPageService;Lcom/market/sdk/compat/FutureTaskCompat;Landroid/os/Bundle;)V

    const-string p1, "open_market_request"

    invoke-virtual {p0, v1, p1}, Lcom/market/sdk/DetailsPageService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 66
    invoke-virtual {p0}, Lcom/market/sdk/DetailsPageService;->waitForCompletion()V

    .line 67
    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
