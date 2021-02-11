.class public Lcom/miui/home/launcher/UninstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getAddedWidgetList(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 63
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "com.miui.home.launcher.action.UNINSTALL_WIDGET"

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "miui.intent.extra.provider_component_name"

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    if-nez p2, :cond_2

    const-string p1, "Launcher.UninstallWidgetReceiver"

    const-string p2, "provider name is null"

    .line 28
    invoke-static {p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Launcher.UninstallWidgetReceiver"

    const-string p2, "launcher is not ready,process later"

    .line 35
    invoke-static {p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_3
    invoke-static {p1, p2}, Lcom/miui/home/launcher/InstallWidgetReceiver;->isWidgetAdded(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Launcher.UninstallWidgetReceiver"

    const-string p2, "widget not added"

    .line 39
    invoke-static {p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_5

    const-string p1, "Launcher.UninstallWidgetReceiver"

    const-string p2, "widget remove failed: workspace is null"

    .line 43
    invoke-static {p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver;->getAddedWidgetList(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 49
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 54
    :cond_6
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    const-string v1, "Launcher.UninstallWidgetReceiver"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget remove success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/UninstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/UninstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
