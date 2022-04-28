.class public Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfflineWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.miui.personalassistant.ACTION_OFFLINE_WIDGET"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "OFFLINE_WIDGET_BEAN_JSON_DATA"

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Launcher.OfflineWidgetReceiver"

    const-string p2, "OFFLINE_WIDGET data is null"

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/WidgetRemoveTask;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/model/WidgetRemoveTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/offlinewidget/OfflineWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
