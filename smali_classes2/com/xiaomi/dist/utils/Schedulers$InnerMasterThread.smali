.class Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/Schedulers$MasterThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerMasterThread"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mName:Ljava/lang/String;

    new-instance p1, Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$InnerMasterThread$S0oO94lg1PWVPa2dTZXWNJpVFzA;

    invoke-direct {p1, p0}, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$InnerMasterThread$S0oO94lg1PWVPa2dTZXWNJpVFzA;-><init>(Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public asExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public asHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public synthetic lambda$new$0$Schedulers$InnerMasterThread(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Schedulers"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mName:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "already closed! thread : %s"

    invoke-static {v3, p1, p0, v0}, Lcom/xiaomi/dist/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "post task in %s"

    invoke-static {v3, v1, v0}, Lcom/xiaomi/dist/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
