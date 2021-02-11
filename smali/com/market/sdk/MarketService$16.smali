.class Lcom/market/sdk/MarketService$16;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->getDesktopFolderConfig(Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/market/sdk/MarketService$16;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/market/sdk/MarketService$16;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/MarketService$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-interface {v0, v1}, Lcom/market/sdk/IMarketService;->getDesktopFolderConfig(Landroid/os/ResultReceiver;)V

    return-void
.end method
