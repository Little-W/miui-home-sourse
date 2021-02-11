.class Lcom/market/sdk/MarketService$13;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->getCategoryV2([Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$pkgList:[Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/market/sdk/MarketService$13;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$13;->val$pkgList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/market/sdk/MarketService$13;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/market/sdk/MarketService$13;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/MarketService$13;->val$pkgList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/market/sdk/MarketService$13;->val$receiver:Landroid/os/ResultReceiver;

    invoke-interface {v0, v1, v2}, Lcom/market/sdk/IMarketService;->getCategoryV2([Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method
