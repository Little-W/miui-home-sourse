.class public Lcom/market/pm/api/MarketInstallerService;
.super Lcom/market/ServiceProxy;
.source "MarketInstallerService.java"

# interfaces
.implements Lcom/market/pm/IMarketInstallerService;
.implements Lcom/market/pm/api/IMarketInstallerContract;


# instance fields
.field private mService:Lcom/market/pm/IMarketInstallerService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/market/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/pm/api/MarketInstallerService;)Lcom/market/pm/IMarketInstallerService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/market/pm/api/MarketInstallerService;->mService:Lcom/market/pm/IMarketInstallerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/market/pm/api/MarketInstallerService;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/market/pm/api/MarketInstallerService;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static openService(Landroid/content/Context;)Lcom/market/pm/IMarketInstallerService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/pm/api/ComponentNotFoundException;
        }
    .end annotation

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.action.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/market/pm/api/MarketInstallerService;->MARKET_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Lcom/market/pm/api/ComponentNotFoundException;

    const-string v0, "Not found MarketInstallerService"

    invoke-direct {p0, v0}, Lcom/market/pm/api/ComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    :goto_0
    new-instance v1, Lcom/market/pm/api/MarketInstallerService;

    invoke-direct {v1, p0, v0}, Lcom/market/pm/api/MarketInstallerService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/market/pm/api/MarketInstallerService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/pm/api/MarketInstallerService$1;-><init>(Lcom/market/pm/api/MarketInstallerService;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    const-string p1, "installPackage"

    invoke-virtual {p0, v0, p1}, Lcom/market/pm/api/MarketInstallerService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/market/pm/IMarketInstallerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/pm/IMarketInstallerService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/pm/api/MarketInstallerService;->mService:Lcom/market/pm/IMarketInstallerService;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
