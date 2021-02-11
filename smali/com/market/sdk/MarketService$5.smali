.class Lcom/market/sdk/MarketService$5;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/market/sdk/IImageCallback;

.field final synthetic val$mask:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/market/sdk/MarketService$5;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$5;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/market/sdk/MarketService$5;->val$mask:Ljava/lang/String;

    iput-object p4, p0, Lcom/market/sdk/MarketService$5;->val$callback:Lcom/market/sdk/IImageCallback;

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

    .line 102
    iget-object v0, p0, Lcom/market/sdk/MarketService$5;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/MarketService$5;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/market/sdk/MarketService$5;->val$mask:Ljava/lang/String;

    iget-object v3, p0, Lcom/market/sdk/MarketService$5;->val$callback:Lcom/market/sdk/IImageCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/market/sdk/IMarketService;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V

    return-void
.end method
