.class Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudSettingsChangedBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;->this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "CloudSettingsController"

    const-string p2, "cloud settings update"

    .line 43
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;->this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
