.class Lcom/miui/home/launcher/ControlPanelReceiver$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/ControlPanelReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "onReceive"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->LEAF:Lme/ele/lancet/base/Scope;
        value = "android.content.BroadcastReceiver"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ControlPanelReceiver;->access$000(Lcom/miui/home/launcher/ControlPanelReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
