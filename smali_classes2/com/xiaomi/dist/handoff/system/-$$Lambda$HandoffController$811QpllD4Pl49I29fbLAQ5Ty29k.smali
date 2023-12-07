.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$811QpllD4Pl49I29fbLAQ5Ty29k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$811QpllD4Pl49I29fbLAQ5Ty29k;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$811QpllD4Pl49I29fbLAQ5Ty29k;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$getServiceExecutor$20$HandoffController()V

    return-void
.end method
