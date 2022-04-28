.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "miui.intent.action.MIRROR_DEVICE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "device_state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_manufacturer"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->enableHistoryListener()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onUpdate(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->getListenManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string p2, "MiuiSynergy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_MIRROR_DEVICE_CHANGED received. state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onLost(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onUpdate(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$300(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;->onFound(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
