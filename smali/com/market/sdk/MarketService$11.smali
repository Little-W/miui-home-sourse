.class Lcom/market/sdk/MarketService$11;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->getCategory([Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$future:Lcom/market/sdk/compat/FutureTaskCompat;

.field final synthetic val$pkgList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/market/sdk/MarketService$11;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$11;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iput-object p3, p0, Lcom/market/sdk/MarketService$11;->val$pkgList:[Ljava/lang/String;

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

    .line 173
    iget-object v0, p0, Lcom/market/sdk/MarketService$11;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object v1, p0, Lcom/market/sdk/MarketService$11;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v1}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/MarketService$11;->val$pkgList:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/market/sdk/IMarketService;->getCategory([Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    return-void
.end method
