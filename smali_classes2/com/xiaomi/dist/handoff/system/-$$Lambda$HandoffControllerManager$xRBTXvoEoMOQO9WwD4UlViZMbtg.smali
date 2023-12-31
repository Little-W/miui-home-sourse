.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$xRBTXvoEoMOQO9WwD4UlViZMbtg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$xRBTXvoEoMOQO9WwD4UlViZMbtg;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$xRBTXvoEoMOQO9WwD4UlViZMbtg;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$queryActiveLocalHandoffTask$0$HandoffControllerManager()Lcom/xiaomi/dist/common/ResultDescriptor;

    move-result-object p0

    return-object p0
.end method
