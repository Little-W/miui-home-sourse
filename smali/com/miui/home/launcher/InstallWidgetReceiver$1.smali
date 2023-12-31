.class Lcom/miui/home/launcher/InstallWidgetReceiver$1;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "InstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

.field final synthetic val$intentData:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$runningContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->this$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 100
    iget-wide v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, "Launcher.InstallWidget"

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v5, "miui.intent.extra.result_receiver_component_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 103
    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.BIND_WIDGET_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    .line 105
    iget-object v8, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v9, "android.intent.extra.UID"

    invoke-virtual {v8, v9, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v6, v7

    const/4 v3, 0x1

    .line 106
    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    int-to-long v7, v0

    aput-wide v7, v6, v3

    const-string v0, "miui.intent.extra.bind_widget_result"

    .line 107
    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 108
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "add widget success"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object p0

    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const-string p0, "add widget failed"

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
