.class Lcom/market/sdk/RemoteMethodInvoker$1;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/RemoteMethodInvoker;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/RemoteMethodInvoker;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/market/sdk/RemoteMethodInvoker;Landroid/os/IBinder;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->val$service:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/market/sdk/IMarketService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/market/sdk/RemoteMethodInvoker;->access$002(Lcom/market/sdk/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    iget-object v2, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-virtual {v2, v0}, Lcom/market/sdk/RemoteMethodInvoker;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/market/sdk/RemoteMethodInvoker;->access$002(Lcom/market/sdk/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/market/sdk/RemoteMethodInvoker;->access$100(Lcom/market/sdk/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "RemoteMethodInvoker"

    const-string v2, "error while invoking market service methods"

    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    iget-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/market/sdk/RemoteMethodInvoker;->access$100(Lcom/market/sdk/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 47
    :catch_1
    :goto_1
    iget-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/market/sdk/RemoteMethodInvoker;->access$000(Lcom/market/sdk/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market/sdk/RemoteMethodInvoker;->set(Ljava/lang/Object;)V

    return-void

    .line 42
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/market/sdk/RemoteMethodInvoker;->access$100(Lcom/market/sdk/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/RemoteMethodInvoker$1;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 46
    :catch_2
    throw v0
.end method
