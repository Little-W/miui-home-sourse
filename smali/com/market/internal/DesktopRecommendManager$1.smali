.class Lcom/market/internal/DesktopRecommendManager$1;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "DesktopRecommendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/internal/DesktopRecommendManager;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/DesktopRecommendCallback;)V
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
.field final synthetic val$callback:Lcom/market/sdk/DesktopRecommendCallback;

.field final synthetic val$folderId:J

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$pkgNameList:Ljava/util/List;


# direct methods
.method constructor <init>(JLcom/market/sdk/DesktopRecommendCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$folderId:J

    iput-object p3, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$callback:Lcom/market/sdk/DesktopRecommendCallback;

    iput-object p4, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$folderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$pkgNameList:Ljava/util/List;

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

    .line 27
    invoke-virtual {p0, p1}, Lcom/market/internal/DesktopRecommendManager$1;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    :try_start_0
    new-instance v5, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;

    iget-wide v0, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$folderId:J

    iget-object v2, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$callback:Lcom/market/sdk/DesktopRecommendCallback;

    invoke-direct {v5, v0, v1, v2}, Lcom/market/internal/DesktopRecommendManager$DesktopRecomendResponse;-><init>(JLcom/market/sdk/DesktopRecommendCallback;)V

    .line 34
    iget-wide v1, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$folderId:J

    iget-object v3, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$folderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/market/internal/DesktopRecommendManager$1;->val$pkgNameList:Ljava/util/List;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/IDesktopRecommendResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when load desktop recommend info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
