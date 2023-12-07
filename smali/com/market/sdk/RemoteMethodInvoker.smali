.class public abstract Lcom/market/sdk/RemoteMethodInvoker;
.super Lcom/market/sdk/compat/FutureTaskCompat;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/market/sdk/compat/FutureTaskCompat<",
        "TT;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteMethodInvoker"

.field private static sExcecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final MARKET_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/RemoteMethodInvoker;->sExcecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    const-string v0, "com.xiaomi.market.data.MarketService"

    iput-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker;->MARKET_SERVICE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/RemoteMethodInvoker;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/market/sdk/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/market/sdk/RemoteMethodInvoker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public abstract innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market/sdk/IMarketService;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.xiaomi.market.data.MarketService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market/sdk/RemoteMethodInvoker;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RemoteMethodInvoker"

    const-string v0, "Can not find MarketService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeAsync()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.xiaomi.market.data.MarketService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public invokeInNewThread()V
    .locals 2

    sget-object v0, Lcom/market/sdk/RemoteMethodInvoker;->sExcecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/market/sdk/RemoteMethodInvoker$2;

    invoke-direct {v1, p0}, Lcom/market/sdk/RemoteMethodInvoker$2;-><init>(Lcom/market/sdk/RemoteMethodInvoker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget-object p1, Lcom/market/sdk/RemoteMethodInvoker;->sExcecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/market/sdk/RemoteMethodInvoker$1;

    invoke-direct {v0, p0, p2}, Lcom/market/sdk/RemoteMethodInvoker$1;-><init>(Lcom/market/sdk/RemoteMethodInvoker;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
