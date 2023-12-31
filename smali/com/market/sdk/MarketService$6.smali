.class Lcom/market/sdk/MarketService$6;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->loadImage(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$callback:Lcom/market/sdk/IImageCallback;

.field final synthetic val$height:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/market/sdk/MarketService$6;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$6;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/market/sdk/MarketService$6;->val$width:I

    iput p4, p0, Lcom/market/sdk/MarketService$6;->val$height:I

    iput-object p5, p0, Lcom/market/sdk/MarketService$6;->val$callback:Lcom/market/sdk/IImageCallback;

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

    .line 112
    iget-object v0, p0, Lcom/market/sdk/MarketService$6;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/MarketService$6;->val$url:Ljava/lang/String;

    iget v2, p0, Lcom/market/sdk/MarketService$6;->val$width:I

    iget v3, p0, Lcom/market/sdk/MarketService$6;->val$height:I

    iget-object p0, p0, Lcom/market/sdk/MarketService$6;->val$callback:Lcom/market/sdk/IImageCallback;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/market/sdk/IMarketService;->loadImage(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V

    return-void
.end method
