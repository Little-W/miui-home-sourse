.class Lcom/market/pm/api/MarketInstallerService$1;
.super Ljava/lang/Object;
.source "MarketInstallerService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/pm/api/MarketInstallerService;->installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/pm/api/MarketInstallerService;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/market/pm/api/MarketInstallerService;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/market/pm/api/MarketInstallerService$1;->this$0:Lcom/market/pm/api/MarketInstallerService;

    iput-object p2, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/market/pm/api/MarketInstallerService$1;->this$0:Lcom/market/pm/api/MarketInstallerService;

    invoke-static {v0}, Lcom/market/pm/api/MarketInstallerService;->access$000(Lcom/market/pm/api/MarketInstallerService;)Lcom/market/pm/IMarketInstallerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/market/pm/api/MarketInstallerService$1;->this$0:Lcom/market/pm/api/MarketInstallerService;

    invoke-static {v0}, Lcom/market/pm/api/MarketInstallerService;->access$000(Lcom/market/pm/api/MarketInstallerService;)Lcom/market/pm/IMarketInstallerService;

    move-result-object v0

    iget-object v1, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$receiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$extras:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/market/pm/IMarketInstallerService;->installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/market/pm/api/MarketInstallerService$1;->this$0:Lcom/market/pm/api/MarketInstallerService;

    invoke-static {v1}, Lcom/market/pm/api/MarketInstallerService;->access$100(Lcom/market/pm/api/MarketInstallerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail install package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-object v1, p0, Lcom/market/pm/api/MarketInstallerService$1;->val$receiver:Landroid/os/ResultReceiver;

    instance-of v2, v1, Lcom/market/pm/api/MarketInstallObserver;

    if-eqz v2, :cond_1

    .line 64
    new-instance v2, Lcom/market/pm/api/MarketInstallObserver$Proxy;

    invoke-direct {v2, v1}, Lcom/market/pm/api/MarketInstallObserver$Proxy;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {v2}, Lcom/market/pm/api/MarketInstallObserver$Proxy;->onServiceDead()V

    .line 66
    :cond_1
    throw v0
.end method
