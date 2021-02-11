.class Lcom/market/sdk/DetailsPageService$1;
.super Ljava/lang/Object;
.source "DetailsPageService.java"

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/DetailsPageService;->openDetailsPage(Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/DetailsPageService;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$future:Lcom/market/sdk/compat/FutureTaskCompat;


# direct methods
.method constructor <init>(Lcom/market/sdk/DetailsPageService;Lcom/market/sdk/compat/FutureTaskCompat;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/market/sdk/DetailsPageService$1;->this$0:Lcom/market/sdk/DetailsPageService;

    iput-object p2, p0, Lcom/market/sdk/DetailsPageService$1;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iput-object p3, p0, Lcom/market/sdk/DetailsPageService$1;->val$args:Landroid/os/Bundle;

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

    .line 59
    iget-object v0, p0, Lcom/market/sdk/DetailsPageService$1;->this$0:Lcom/market/sdk/DetailsPageService;

    invoke-static {v0}, Lcom/market/sdk/DetailsPageService;->access$000(Lcom/market/sdk/DetailsPageService;)Lcom/xiaomi/market/IDetailsPageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/market/sdk/DetailsPageService$1;->val$future:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object v1, p0, Lcom/market/sdk/DetailsPageService$1;->this$0:Lcom/market/sdk/DetailsPageService;

    invoke-static {v1}, Lcom/market/sdk/DetailsPageService;->access$000(Lcom/market/sdk/DetailsPageService;)Lcom/xiaomi/market/IDetailsPageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/DetailsPageService$1;->val$args:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/xiaomi/market/IDetailsPageManager;->openDetailsPage(Landroid/os/Bundle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "DetailsPageService"

    const-string v1, "IDetailsPageManager is null"

    .line 62
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
