.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;

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

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$24(Ljava/lang/Throwable;)V

    return-void
.end method
