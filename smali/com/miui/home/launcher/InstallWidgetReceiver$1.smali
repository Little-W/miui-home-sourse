.class Lcom/miui/home/launcher/InstallWidgetReceiver$1;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "InstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver;->lambda$onReceive$386(Landroid/content/Intent;Landroid/content/Context;)V
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

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->this$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 88
    iget-wide v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v2, "miui.intent.extra.result_receiver_component_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-string v5, "miui.intent.action.BIND_WIDGET_COMPLETED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 92
    new-array v5, v5, [J

    const/4 v6, 0x0

    .line 93
    iget-object v7, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v7, v8, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v5, v6

    const/4 v3, 0x1

    .line 94
    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    int-to-long v6, v0

    aput-wide v6, v5, v3

    const-string v0, "miui.intent.extra.bind_widget_result"

    .line 95
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 96
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Launcher.InstallWidget"

    const-string v1, "add widget success"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v1

    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const-string v0, "Launcher.InstallWidget"

    const-string v1, "add widget failed"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
