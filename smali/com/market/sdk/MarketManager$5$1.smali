.class Lcom/market/sdk/MarketManager$5$1;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager$5;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market/sdk/MarketManager$5;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager$5;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/MarketManager$5$1;->this$1:Lcom/market/sdk/MarketManager$5;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/MarketManager$5$1;->this$1:Lcom/market/sdk/MarketManager$5;

    iget-object p0, p0, Lcom/market/sdk/MarketManager$5;->val$taskCompat:Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    return-void
.end method
