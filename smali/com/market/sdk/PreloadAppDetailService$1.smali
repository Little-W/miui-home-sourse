.class Lcom/market/sdk/PreloadAppDetailService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/PreloadAppDetailService;->preloadAppDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/PreloadAppDetailService;

.field final synthetic val$deeplink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/PreloadAppDetailService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/PreloadAppDetailService$1;->this$0:Lcom/market/sdk/PreloadAppDetailService;

    iput-object p2, p0, Lcom/market/sdk/PreloadAppDetailService$1;->val$deeplink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/market/sdk/PreloadAppDetailService$1;->this$0:Lcom/market/sdk/PreloadAppDetailService;

    invoke-static {v0}, Lcom/market/sdk/PreloadAppDetailService;->access$000(Lcom/market/sdk/PreloadAppDetailService;)Lcom/xiaomi/market/IPreloadAppDetailService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/PreloadAppDetailService$1;->this$0:Lcom/market/sdk/PreloadAppDetailService;

    invoke-static {v0}, Lcom/market/sdk/PreloadAppDetailService;->access$000(Lcom/market/sdk/PreloadAppDetailService;)Lcom/xiaomi/market/IPreloadAppDetailService;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/PreloadAppDetailService$1;->val$deeplink:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IPreloadAppDetailService;->preloadAppDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "PreloadAppDetailService"

    const-string v0, "IPreloadAppDetailService is null"

    invoke-static {p0, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
