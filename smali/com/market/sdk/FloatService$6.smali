.class Lcom/market/sdk/FloatService$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatService;->resumeByUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/FloatService;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/FloatService$6;->this$0:Lcom/market/sdk/FloatService;

    iput-object p2, p0, Lcom/market/sdk/FloatService$6;->val$uri:Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/market/sdk/FloatService$6;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/FloatService$6;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatService$6;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string p0, "FloatService"

    const-string v0, "IAppDownloadManager is null"

    invoke-static {p0, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
