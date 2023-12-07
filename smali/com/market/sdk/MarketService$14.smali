.class Lcom/market/sdk/MarketService$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->loadDesktopRecommendInfoV2(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$folderId:J

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$pkgNameList:Ljava/util/List;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/MarketService$14;->this$0:Lcom/market/sdk/MarketService;

    iput-wide p2, p0, Lcom/market/sdk/MarketService$14;->val$folderId:J

    iput-object p4, p0, Lcom/market/sdk/MarketService$14;->val$folderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/market/sdk/MarketService$14;->val$pkgNameList:Ljava/util/List;

    iput-object p6, p0, Lcom/market/sdk/MarketService$14;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/market/sdk/MarketService$14;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v1

    iget-wide v2, p0, Lcom/market/sdk/MarketService$14;->val$folderId:J

    iget-object v4, p0, Lcom/market/sdk/MarketService$14;->val$folderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/market/sdk/MarketService$14;->val$pkgNameList:Ljava/util/List;

    iget-object v6, p0, Lcom/market/sdk/MarketService$14;->val$receiver:Landroid/os/ResultReceiver;

    invoke-interface/range {v1 .. v6}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfoV2(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V

    return-void
.end method
