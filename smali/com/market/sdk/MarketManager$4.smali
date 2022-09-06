.class Lcom/market/sdk/MarketManager$4;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "MarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager;->allowConnectToNetwork()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketManager;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/market/sdk/MarketManager$4;->this$0:Lcom/market/sdk/MarketManager;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Boolean;
    .locals 3

    .line 304
    :try_start_0
    invoke-interface {p1}, Lcom/market/sdk/IMarketService;->allowConnectToNetwork()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 308
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p1}, Lcom/market/sdk/MarketManager$4;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
