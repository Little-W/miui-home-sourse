.class Lcom/miui/home/launcher/Launcher$26;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4013
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$26;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$Launcher$26()V
    .locals 1

    .line 4020
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$26;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenCellsChanged()V

    .line 4021
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 4016
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$26;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4019
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$26$jXU9d0SWX0sx5yL0dIS0no1_1qE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$26$jXU9d0SWX0sx5yL0dIS0no1_1qE;-><init>(Lcom/miui/home/launcher/Launcher$26;)V

    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->switchNoWordSetting(Ljava/lang/Runnable;)V

    return-void
.end method
