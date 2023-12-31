.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/util/PowerKeeperManager;

.field private final synthetic f$1:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/util/PowerKeeperManager;Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;->f$0:Lcom/miui/home/launcher/util/PowerKeeperManager;

    iput-object p2, p0, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;->f$1:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;->f$0:Lcom/miui/home/launcher/util/PowerKeeperManager;

    iget-object p0, p0, Lcom/miui/home/launcher/util/-$$Lambda$PowerKeeperManager$fcPdk6-YeV64gEVMUEPSTK8CpIA;->f$1:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/PowerKeeperManager;->lambda$notifyPowerKeeperGesture$0$PowerKeeperManager(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    return-void
.end method
