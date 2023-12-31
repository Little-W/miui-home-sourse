.class Lcom/market/ServiceProxy$ProxyConnection;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/market/ServiceProxy;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/market/ServiceProxy$ProxyConnection;->this$0:Lcom/market/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/ServiceProxy;Lcom/market/ServiceProxy$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/market/ServiceProxy$ProxyConnection;-><init>(Lcom/market/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/market/ServiceProxy$ProxyConnection;->this$0:Lcom/market/ServiceProxy;

    invoke-virtual {p1, p2}, Lcom/market/ServiceProxy;->onConnected(Landroid/os/IBinder;)V

    .line 77
    new-instance p1, Lcom/market/ServiceProxy$ProxyConnection$1;

    invoke-direct {p1, p0}, Lcom/market/ServiceProxy$ProxyConnection$1;-><init>(Lcom/market/ServiceProxy$ProxyConnection;)V

    iget-object p0, p0, Lcom/market/ServiceProxy$ProxyConnection;->this$0:Lcom/market/ServiceProxy;

    .line 109
    invoke-static {p0}, Lcom/market/ServiceProxy;->access$100(Lcom/market/ServiceProxy;)Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p0, p2}, Lcom/market/ServiceProxy$ProxyConnection$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/market/ServiceProxy$ProxyConnection;->this$0:Lcom/market/ServiceProxy;

    invoke-virtual {p0}, Lcom/market/ServiceProxy;->onDisconnected()V

    return-void
.end method
