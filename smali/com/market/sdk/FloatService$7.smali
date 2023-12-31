.class Lcom/market/sdk/FloatService$7;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatService;->lifecycleChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/FloatService;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatService;Ljava/lang/String;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/market/sdk/FloatService$7;->this$0:Lcom/market/sdk/FloatService;

    iput-object p2, p0, Lcom/market/sdk/FloatService$7;->val$activity:Ljava/lang/String;

    iput p3, p0, Lcom/market/sdk/FloatService$7;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/market/sdk/FloatService$7;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/market/sdk/FloatService$7;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/FloatService$7;->val$activity:Ljava/lang/String;

    iget p0, p0, Lcom/market/sdk/FloatService$7;->val$status:I

    invoke-interface {v0, v1, p0}, Lcom/xiaomi/market/IAppDownloadManager;->lifecycleChanged(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "FloatService"

    const-string v0, "IAppDownloadManager is null"

    .line 157
    invoke-static {p0, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
