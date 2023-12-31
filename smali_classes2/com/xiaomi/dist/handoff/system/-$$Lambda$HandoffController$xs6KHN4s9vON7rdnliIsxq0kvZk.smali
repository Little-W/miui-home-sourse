.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field private final synthetic f$1:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;->f$1:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;->f$1:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$23$HandoffController(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
