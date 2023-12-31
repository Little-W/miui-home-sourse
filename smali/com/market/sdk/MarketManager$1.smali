.class Lcom/market/sdk/MarketManager$1;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "MarketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/MarketManager;->getApkVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Lcom/market/sdk/ApkVerifyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/MarketManager;

.field final synthetic val$installedFrom:Ljava/lang/String;

.field final synthetic val$isUpdate:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/market/sdk/MarketManager$1;->this$0:Lcom/market/sdk/MarketManager;

    iput-object p2, p0, Lcom/market/sdk/MarketManager$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/market/sdk/MarketManager$1;->val$installedFrom:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/market/sdk/MarketManager$1;->val$isUpdate:Z

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/market/sdk/IMarketService;)Lcom/market/sdk/ApkVerifyInfo;
    .locals 2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/MarketManager$1;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/market/sdk/MarketManager$1;->val$installedFrom:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/market/sdk/MarketManager$1;->val$isUpdate:Z

    invoke-interface {p1, v0, v1, p0}, Lcom/market/sdk/IMarketService;->getVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/market/sdk/MarketManager$1;->innerInvoke(Lcom/market/sdk/IMarketService;)Lcom/market/sdk/ApkVerifyInfo;

    move-result-object p0

    return-object p0
.end method
