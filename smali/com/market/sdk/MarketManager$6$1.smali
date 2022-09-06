.class Lcom/market/sdk/MarketManager$6$1;
.super Landroid/os/ResultReceiver;
.source "MarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager$6;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market/sdk/MarketManager$6;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager$6;Landroid/os/Handler;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/market/sdk/MarketManager$6$1;->this$1:Lcom/market/sdk/MarketManager$6;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 485
    iget-object p1, p0, Lcom/market/sdk/MarketManager$6$1;->this$1:Lcom/market/sdk/MarketManager$6;

    iget-object p1, p1, Lcom/market/sdk/MarketManager$6;->val$taskCompat:Lcom/market/sdk/compat/FutureTaskCompat;

    const-string v0, "categoryName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/market/sdk/MarketManager$6$1;->this$1:Lcom/market/sdk/MarketManager$6;

    iget-object p1, p1, Lcom/market/sdk/MarketManager$6;->val$taskCompat:Lcom/market/sdk/compat/FutureTaskCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
