.class Lcom/market/sdk/utils/WhiteSetManager$1;
.super Lcom/market/sdk/RemoteMethodInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/utils/WhiteSetManager;->getWhiteSetFromMarket()Ljava/lang/String;
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
.field final synthetic val$futureTask:Lcom/market/sdk/compat/FutureTaskCompat;


# direct methods
.method constructor <init>(Lcom/market/sdk/compat/FutureTaskCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/utils/WhiteSetManager$1;->val$futureTask:Lcom/market/sdk/compat/FutureTaskCompat;

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

    invoke-virtual {p0, p1}, Lcom/market/sdk/utils/WhiteSetManager$1;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/utils/WhiteSetManager$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market/sdk/utils/WhiteSetManager$1$1;-><init>(Lcom/market/sdk/utils/WhiteSetManager$1;Landroid/os/Handler;)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/market/sdk/IMarketService;->getWhiteSetV2(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method
