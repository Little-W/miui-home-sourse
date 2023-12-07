.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$1:I

    iput-object p3, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget v1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$1:I

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;->f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$startTransferSessionToLocal$7$HandoffController(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
