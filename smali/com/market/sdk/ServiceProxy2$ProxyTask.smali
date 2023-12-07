.class public abstract Lcom/market/sdk/ServiceProxy2$ProxyTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/ServiceProxy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ProxyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private syncCallTask:Lcom/market/sdk/compat/FutureTaskCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market/sdk/compat/FutureTaskCompat<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market/sdk/ServiceProxy2;


# direct methods
.method public constructor <init>(Lcom/market/sdk/ServiceProxy2;Z)V
    .locals 1

    iput-object p1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->this$0:Lcom/market/sdk/ServiceProxy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;-><init>(Lcom/market/sdk/ServiceProxy2$ProxyTask;Lcom/market/sdk/ServiceProxy2;Z)V

    iput-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/ServiceProxy2$ProxyTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/market/sdk/ServiceProxy2$ProxyTask;->bind()V

    return-void
.end method

.method static synthetic access$200(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$202(Lcom/market/sdk/ServiceProxy2$ProxyTask;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Lcom/market/sdk/compat/FutureTaskCompat;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->syncCallTask:Lcom/market/sdk/compat/FutureTaskCompat;

    return-object p0
.end method

.method private bind()V
    .locals 3

    iget-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->this$0:Lcom/market/sdk/ServiceProxy2;

    invoke-static {v0}, Lcom/market/sdk/ServiceProxy2;->access$300(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->this$0:Lcom/market/sdk/ServiceProxy2;

    invoke-static {v1}, Lcom/market/sdk/ServiceProxy2;->access$500(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->syncCallTask:Lcom/market/sdk/compat/FutureTaskCompat;

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->syncCallTask:Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-virtual {p0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract run(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public unbind()V
    .locals 2

    iget-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->this$0:Lcom/market/sdk/ServiceProxy2;

    invoke-static {v0}, Lcom/market/sdk/ServiceProxy2;->access$300(Lcom/market/sdk/ServiceProxy2;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask;->conn:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
