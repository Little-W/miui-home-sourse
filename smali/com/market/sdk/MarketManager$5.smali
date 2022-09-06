.class Lcom/market/sdk/MarketManager$5;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "MarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager;->getCategory([Ljava/lang/String;)I
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

.field final synthetic val$pkgList:[Ljava/lang/String;

.field final synthetic val$taskCompat:Lcom/market/sdk/compat/FutureTaskCompat;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/market/sdk/MarketManager$5;->this$0:Lcom/market/sdk/MarketManager;

    iput-object p2, p0, Lcom/market/sdk/MarketManager$5;->val$taskCompat:Lcom/market/sdk/compat/FutureTaskCompat;

    iput-object p3, p0, Lcom/market/sdk/MarketManager$5;->val$pkgList:[Ljava/lang/String;

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

    .line 449
    invoke-virtual {p0, p1}, Lcom/market/sdk/MarketManager$5;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    new-instance v0, Lcom/market/sdk/MarketManager$5$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market/sdk/MarketManager$5$1;-><init>(Lcom/market/sdk/MarketManager$5;Landroid/os/Handler;)V

    .line 459
    iget-object v2, p0, Lcom/market/sdk/MarketManager$5;->val$pkgList:[Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lcom/market/sdk/IMarketService;->getCategoryV2([Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-object v1
.end method
