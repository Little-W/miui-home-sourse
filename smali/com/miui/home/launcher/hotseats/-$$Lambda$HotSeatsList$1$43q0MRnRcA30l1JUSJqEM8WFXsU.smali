.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    iput p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onRemoved$1(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
