.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    iput p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$1$Iq2ZdQI86c3P2ZzNutKU0o0QCfM;->f$3:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/Integer;

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;->lambda$onChanged$3(Lcom/miui/home/launcher/hotseats/HotSeatsList$1;IILjava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
