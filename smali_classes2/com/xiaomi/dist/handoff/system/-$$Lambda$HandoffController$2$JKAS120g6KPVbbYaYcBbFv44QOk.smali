.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$2$JKAS120g6KPVbbYaYcBbFv44QOk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

.field private final synthetic f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController$2;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$2$JKAS120g6KPVbbYaYcBbFv44QOk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$2$JKAS120g6KPVbbYaYcBbFv44QOk;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$2$JKAS120g6KPVbbYaYcBbFv44QOk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$2$JKAS120g6KPVbbYaYcBbFv44QOk;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-virtual {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->lambda$onLocalHandoffTaskUpdate$0$HandoffController$2([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method
