.class Lcom/xiaomi/dist/handoff/system/HandoffController$1;
.super Lcom/xiaomi/dist/handoff/IRelayCallBack$Stub;
.source "HandoffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/dist/handoff/system/HandoffController;->handleStartTransferSessionToLocal(Lcom/xiaomi/dist/handoff/IHandoffControlService;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field final synthetic val$callback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;->this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;->val$callback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/IRelayCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelayComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;->val$callback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    if-eqz p0, :cond_0

    .line 406
    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onRelayError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;->val$callback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    if-eqz p0, :cond_0

    const-string v0, "error"

    .line 399
    invoke-interface {p0, p1, v0}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
