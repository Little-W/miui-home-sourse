.class Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "Launcher.ApplicationsMessage"

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui.intent.extra.application_show_corner"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v1}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 129
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$300(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_6

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 130
    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    const-string v0, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.intent.extra.update_application_component_name"

    .line 137
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.ApplicationsMessage"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.intent.extra.update_application_message_text"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    const-string v3, "userId"

    .line 140
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v3

    .line 144
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationsMessage;->access$400(Lcom/miui/home/launcher/ApplicationsMessage;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "miui.intent.extra.application_show_corner"

    .line 148
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    const-string p1, "targetPkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "android.intent.extra.update_application_message_text"

    .line 150
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "android.intent.extra.update_application_message_text_background"

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "android.intent.extra.update_application_message_icon_tile"

    .line 152
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 149
    invoke-static/range {v4 .. v10}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Launcher.ApplicationsMessage"

    const-string v0, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 157
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p1, "Launcher.ApplicationsMessage"

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
