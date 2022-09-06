.class Lcom/miui/home/launcher/hotseats/HotSeatsList$1;
.super Ljava/lang/Object;
.source "HotSeatsList.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChanged$3(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 81
    iget-object p4, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p4}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onInserted$0(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iget-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p3}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public static synthetic lambda$onMoved$2(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 76
    iget-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p3}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public static synthetic lambda$onRemoved$1(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iget-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-static {p3}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$v13c6L1TG3p2y1oNkJ688jY8B0A;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$v13c6L1TG3p2y1oNkJ688jY8B0A;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$fjPONANiCVWzuffaLrOaFs3mvig;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$fjPONANiCVWzuffaLrOaFs3mvig;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$43q0MRnRcA30l1JUSJqEM8WFXsU;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->handleDataChange(IILjava/util/function/BiConsumer;)V

    return-void
.end method
