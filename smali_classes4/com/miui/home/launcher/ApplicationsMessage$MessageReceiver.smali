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

    .line 125
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$ApplicationsMessage$MessageReceiver(Landroid/content/ComponentName;ZLandroid/content/Intent;I)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$400(Lcom/miui/home/launcher/ApplicationsMessage;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_3

    .line 147
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p2}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const-string v0, "miui.intent.extra.application_show_corner"

    .line 148
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    const-string/jumbo p2, "userId"

    .line 149
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gez p2, :cond_2

    move v3, p4

    goto :goto_0

    :cond_2
    move v3, p2

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    const-string p0, "targetPkg"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "android.intent.extra.update_application_message_text"

    .line 154
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "android.intent.extra.update_application_message_text_background"

    .line 155
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "android.intent.extra.update_application_message_icon_tile"

    .line 156
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, p1

    .line 153
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$onReceive$1$ApplicationsMessage$MessageReceiver(Landroid/content/Intent;)V
    .locals 10

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui.intent.extra.application_show_corner"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ApplicationsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 133
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$300(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 134
    invoke-static {v3}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.update_application_component_name"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.intent.extra.update_application_message_text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v9

    .line 143
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$Fu_TREGTXQ2jpC-BXjQ8KXdOUvk;

    move-object v4, v2

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$Fu_TREGTXQ2jpC-BXjQ8KXdOUvk;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;ZLandroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 162
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "return:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
