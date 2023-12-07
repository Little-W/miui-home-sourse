.class public final enum Lcom/mi/preinstall/AsyncThreadHelper;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mi/preinstall/AsyncThreadHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/preinstall/AsyncThreadHelper;

.field public static final enum INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;


# instance fields
.field private mAsyncThread:Landroid/os/HandlerThread;

.field private mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mi/preinstall/AsyncThreadHelper;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/mi/preinstall/AsyncThreadHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mi/preinstall/AsyncThreadHelper;

    sget-object v2, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->$VALUES:[Lcom/mi/preinstall/AsyncThreadHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "async_thread_data"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/mi/preinstall/AsyncThreadHelper;->mAsyncThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/mi/preinstall/AsyncThreadHelper;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/mi/preinstall/AsyncThreadHelper;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/mi/preinstall/AsyncThreadHelper;->runOnWorkerThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->INSTANCE:Lcom/mi/preinstall/AsyncThreadHelper;

    iget-object v0, v0, Lcom/mi/preinstall/AsyncThreadHelper;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/preinstall/AsyncThreadHelper;
    .locals 1

    const-class v0, Lcom/mi/preinstall/AsyncThreadHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mi/preinstall/AsyncThreadHelper;

    return-object p0
.end method

.method public static values()[Lcom/mi/preinstall/AsyncThreadHelper;
    .locals 1

    sget-object v0, Lcom/mi/preinstall/AsyncThreadHelper;->$VALUES:[Lcom/mi/preinstall/AsyncThreadHelper;

    invoke-virtual {v0}, [Lcom/mi/preinstall/AsyncThreadHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/preinstall/AsyncThreadHelper;

    return-object v0
.end method
