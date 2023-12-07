.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

.field private final synthetic f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;->f$0:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;->f$0:Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$Ko75JuRLfS4GdCMNexys19WcYuI;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$reportLocalHandoffTaskUpdate$3(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method
