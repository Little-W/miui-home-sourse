.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field private final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$queryActiveLocalHandoffTask$1$HandoffController(Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
