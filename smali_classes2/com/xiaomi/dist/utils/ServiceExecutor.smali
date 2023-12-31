.class public final Lcom/xiaomi/dist/utils/ServiceExecutor;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;,
        Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SERVICE_BIND_TIME_OUT:Ljava/lang/Long;


# instance fields
.field private isReleased:Z

.field private final mAsInterface:Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

.field private final mContext:Landroid/content/Context;

.field private final mDeath:Landroid/os/IBinder$DeathRecipient;

.field private final mIntent:Landroid/content/Intent;

.field private final mRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x4

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/dist/utils/ServiceExecutor;->SERVICE_BIND_TIME_OUT:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface<",
            "TT;>;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$_rkoZjPkGiY6OSSLQkPKLvqVRJ0;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$_rkoZjPkGiY6OSSLQkPKLvqVRJ0;-><init>(Lcom/xiaomi/dist/utils/ServiceExecutor;)V

    iput-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mDeath:Landroid/os/IBinder$DeathRecipient;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mIntent:Landroid/content/Intent;

    .line 54
    iput-object p3, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mAsInterface:Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;

    .line 56
    iput-object p5, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 57
    new-instance p1, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-direct {p1}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/dist/utils/ServiceExecutor;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/dist/utils/ServiceExecutor;Landroid/os/IBinder;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/ServiceExecutor;->setService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/dist/utils/ServiceExecutor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->binderDied()V

    return-void
.end method

.method private binderDied()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->setService(Landroid/os/IBinder;)V

    .line 165
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    :cond_0
    return-void
.end method

.method private binderService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    const-string v1, "binderService()"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    const-string v2, "already bind"

    invoke-static {v1, v2}, Lcom/xiaomi/dist/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v1, v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$102(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;Z)Z

    .line 153
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 126
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v1}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$100(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v1, v2}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$102(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;Z)Z

    .line 130
    new-instance v1, Lcom/xiaomi/dist/utils/ServiceExecutor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$1;-><init>(Lcom/xiaomi/dist/utils/ServiceExecutor;)V

    iput-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 145
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v1}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$500(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/dist/utils/ServiceExecutor;->SERVICE_BIND_TIME_OUT:Ljava/lang/Long;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    const-string v4, "bind service timeout:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v3, v4, v2}, Lcom/xiaomi/dist/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v1, v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$102(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;Z)Z

    .line 153
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    .line 152
    iget-object v2, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v2, v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$102(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;Z)Z

    .line 153
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    throw v1
.end method

.method private getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    throw v0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/dist/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->binderDied()V

    return-void
.end method

.method public static synthetic lambda$_rkoZjPkGiY6OSSLQkPKLvqVRJ0(Lcom/xiaomi/dist/utils/ServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->binderDied()V

    return-void
.end method

.method private setService(Landroid/os/IBinder;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 179
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mAsInterface:Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p1}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$500(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 187
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 184
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/ServiceExecutor;->handleException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 186
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$500(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 187
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    throw p1
.end method


# virtual methods
.method public execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder<",
            "TT;>;",
            "Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-boolean v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$ggEEGN49kiFGLJcD2u2Xs7hyMq4;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$ggEEGN49kiFGLJcD2u2Xs7hyMq4;-><init>(Lcom/xiaomi/dist/utils/ServiceExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;)V

    if-eqz p3, :cond_1

    .line 108
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/xiaomi/dist/utils/-$$Lambda$TgKh_FPh_xBKXjLjrPpAlxqbm-k;

    invoke-direct {p0, v0}, Lcom/xiaomi/dist/utils/-$$Lambda$TgKh_FPh_xBKXjLjrPpAlxqbm-k;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ExecutorHelper;->post(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$execute$0$ServiceExecutor(Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;)V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->binderService()V

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->getService()Landroid/os/IInterface;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string p0, "service is null,bind failed"

    .line 98
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {p2, v0}, Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;->onRun(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-interface {p1, p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {v0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 194
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->isReleased:Z

    .line 195
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 196
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 199
    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 202
    iput-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mService:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor;->mBindState:Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    throw v0
.end method
