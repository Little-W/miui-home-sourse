.class public abstract Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;
.super Ljava/util/concurrent/FutureTask;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteMethodInvoker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 35
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    const-string p1, "RemoteMethodInvoker"

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/os/IInterface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public invoke(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x5

    .line 81
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, p1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :catch_1
    return-object v0

    .line 83
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-object v0

    :cond_0
    const-string p1, "RemoteMethodInvoker"

    const-string v1, "Can not find Service"

    .line 91
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public invokeAsync(Landroid/content/Intent;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public invokeInNewThread(Landroid/content/Intent;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;-><init>(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/content/Intent;)V

    .line 110
    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->start()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 46
    new-instance p1, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;

    invoke-direct {p1, p0, p2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;-><init>(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/os/IBinder;)V

    .line 73
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
