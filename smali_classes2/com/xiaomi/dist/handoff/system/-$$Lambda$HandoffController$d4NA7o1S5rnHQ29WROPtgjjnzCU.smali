.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$queryActiveLocalHandoffTask$2(Ljava/lang/Throwable;)V

    return-void
.end method
