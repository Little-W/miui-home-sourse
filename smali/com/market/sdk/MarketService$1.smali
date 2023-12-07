.class Lcom/market/sdk/MarketService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketService;->getVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketService;

.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$future:Lcom/market/sdk/compat/FutureTaskCompat;

.field final synthetic val$installedFrom:Ljava/lang/String;

.field final synthetic val$isUpdate:Z


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/MarketService$1;->this$0:Lcom/market/sdk/MarketService;

    iput-object p2, p0, Lcom/market/sdk/MarketService$1;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iput-object p3, p0, Lcom/market/sdk/MarketService$1;->val$apkPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/market/sdk/MarketService$1;->val$installedFrom:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/market/sdk/MarketService$1;->val$isUpdate:Z

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

    iget-object v0, p0, Lcom/market/sdk/MarketService$1;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object v1, p0, Lcom/market/sdk/MarketService$1;->this$0:Lcom/market/sdk/MarketService;

    invoke-static {v1}, Lcom/market/sdk/MarketService;->access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/MarketService$1;->val$apkPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/market/sdk/MarketService$1;->val$installedFrom:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/market/sdk/MarketService$1;->val$isUpdate:Z

    invoke-interface {v1, v2, v3, p0}, Lcom/market/sdk/IMarketService;->getVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    return-void
.end method
