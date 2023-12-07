.class Lcom/market/sdk/FloatService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatService;->pause(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/FloatService;

.field final synthetic val$callerPackageName:Ljava/lang/String;

.field final synthetic val$future:Lcom/market/sdk/compat/FutureTaskCompat;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/FloatService$2;->this$0:Lcom/market/sdk/FloatService;

    iput-object p2, p0, Lcom/market/sdk/FloatService$2;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iput-object p3, p0, Lcom/market/sdk/FloatService$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/market/sdk/FloatService$2;->val$callerPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/market/sdk/FloatService$2;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/FloatService$2;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object v1, p0, Lcom/market/sdk/FloatService$2;->this$0:Lcom/market/sdk/FloatService;

    invoke-static {v1}, Lcom/market/sdk/FloatService;->access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/FloatService$2;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/market/sdk/FloatService$2;->val$callerPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Lcom/xiaomi/market/IAppDownloadManager;->pause(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "FloatService"

    const-string v0, "IAppDownloadManager is null"

    invoke-static {p0, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
