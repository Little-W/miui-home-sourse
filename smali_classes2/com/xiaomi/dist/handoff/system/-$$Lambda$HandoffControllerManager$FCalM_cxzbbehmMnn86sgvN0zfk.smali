.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$FCalM_cxzbbehmMnn86sgvN0zfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$FCalM_cxzbbehmMnn86sgvN0zfk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffControllerManager$FCalM_cxzbbehmMnn86sgvN0zfk;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$registerLocalHandoffSessionListener$1$HandoffControllerManager(Ljava/lang/String;)V

    return-void
.end method
