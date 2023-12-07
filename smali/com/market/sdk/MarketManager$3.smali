.class Lcom/market/sdk/MarketManager$3;
.super Lcom/market/sdk/RemoteMethodInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager;->recourdStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketManager;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/MarketManager$3;->this$0:Lcom/market/sdk/MarketManager;

    iput-object p2, p0, Lcom/market/sdk/MarketManager$3;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/market/sdk/MarketManager$3;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/market/sdk/MarketManager$3;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/MarketManager$3;->val$type:Ljava/lang/String;

    iget-object p0, p0, Lcom/market/sdk/MarketManager$3;->val$event:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/market/sdk/IMarketService;->recordStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
