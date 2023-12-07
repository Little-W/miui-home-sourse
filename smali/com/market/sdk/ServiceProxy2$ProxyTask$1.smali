.class Lcom/market/sdk/ServiceProxy2$ProxyTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/ServiceProxy2$ProxyTask;-><init>(Lcom/market/sdk/ServiceProxy2;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

.field final synthetic val$this$0:Lcom/market/sdk/ServiceProxy2;

.field final synthetic val$unbindAfterCall:Z


# direct methods
.method constructor <init>(Lcom/market/sdk/ServiceProxy2$ProxyTask;Lcom/market/sdk/ServiceProxy2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    iput-object p2, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->val$this$0:Lcom/market/sdk/ServiceProxy2;

    iput-boolean p3, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->val$unbindAfterCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/market/sdk/ServiceProxy2$ProxyTask$1;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->doRemoteCall(Landroid/os/IBinder;)V

    return-void
.end method

.method private doRemoteCall(Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    invoke-virtual {v1, p1}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->val$unbindAfterCall:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    iget-object v1, v1, Lcom/market/sdk/ServiceProxy2$ProxyTask;->this$0:Lcom/market/sdk/ServiceProxy2;

    invoke-static {v1}, Lcom/market/sdk/ServiceProxy2;->access$300(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    invoke-static {v2}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->access$200(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    invoke-static {v1, v0}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->access$202(Lcom/market/sdk/ServiceProxy2$ProxyTask;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    const-string v1, "ServiceProxy2"

    const-string v2, "doInBackground: "

    invoke-static {v1, v2, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    invoke-static {v0}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->access$400(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Lcom/market/sdk/compat/FutureTaskCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->this$1:Lcom/market/sdk/ServiceProxy2$ProxyTask;

    invoke-static {p0}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->access$400(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Lcom/market/sdk/compat/FutureTaskCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/market/sdk/compat/FutureTaskCompat;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;

    invoke-direct {p1, p0, p2}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;-><init>(Lcom/market/sdk/ServiceProxy2$ProxyTask$1;Landroid/os/IBinder;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->doRemoteCall(Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
