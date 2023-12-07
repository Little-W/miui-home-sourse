.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IctJhspynuU3Gy6R8VaBuAkpsbg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IctJhspynuU3Gy6R8VaBuAkpsbg;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IctJhspynuU3Gy6R8VaBuAkpsbg;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$21$HandoffController(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
