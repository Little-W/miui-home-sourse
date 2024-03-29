.class public Lcom/xiaomi/dist/handoff/system/HandoffConsole;
.super Ljava/lang/Object;
.source "HandoffConsole.java"


# instance fields
.field private final mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-direct {v0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    return-void
.end method

.method public static open(Landroid/content/Context;)Lcom/xiaomi/dist/handoff/system/HandoffConsole;
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "HandoffConsole"

    const-string v1, "close"

    .line 148
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->close()V

    return-void
.end method

.method public queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/dist/common/ResultDescriptor<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;>;"
        }
    .end annotation

    const-string v0, "HandoffConsole"

    const-string v1, "queryActiveLocalHandoffTask"

    .line 55
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "HandoffConsole"

    const-string v1, "registerActiveLocalHandoffTaskListener"

    .line 68
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;Landroid/os/Handler;)V

    return-void
.end method

.method public startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 2

    const-string v0, "HandoffConsole"

    const-string v1, "startTransferSessionToLocal"

    .line 90
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    return-void
.end method

.method public unregisterLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;)V
    .locals 2

    const-string v0, "HandoffConsole"

    const-string v1, "unregisterLocalHandoffTaskListener"

    .line 78
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->mHandoffControllerManager:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->unregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;)V

    return-void
.end method
