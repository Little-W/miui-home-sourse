.class Lcom/market/sdk/MarketService$10;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->getEnableSettings()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$future:Lcom/market/sdk/compat/FutureTaskCompat;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/market/sdk/MarketService$10;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$10;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/market/sdk/MarketService$10;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object p0, p0, Lcom/market/sdk/MarketService$10;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {p0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object p0

    invoke-interface {p0}, Lcom/market/sdk/IMarketService;->getEnableSettings()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    return-void
.end method
