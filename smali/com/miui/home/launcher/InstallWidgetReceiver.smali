.class public Lcom/miui/home/launcher/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/InstallWidgetReceiver$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InstallWidgetReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;JIILcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;",
            "JII",
            "Lcom/miui/home/launcher/common/ResultRunnable<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    new-instance v9, Lcom/miui/home/launcher/InstallWidgetReceiver$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/InstallWidgetReceiver$2;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;JIILcom/miui/home/launcher/common/ResultRunnable;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getWidgetProvider(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 165
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isWidgetAdded(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Z
    .locals 1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 177
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onReceive$0(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 12

    .line 34
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/Utilities;->hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Launcher.InstallWidget"

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add widget failed, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no permission"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Launcher.InstallWidget"

    const-string p2, "Launcher is not running,process later"

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "miui.intent.extra.provider_component_name"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-nez v1, :cond_2

    const-string p1, "Launcher.InstallWidget"

    const-string p2, "provider name is null"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "screenId"

    const-wide/16 v3, -0x1

    .line 54
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v2, "cellX"

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "cellY"

    .line 56
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 59
    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    if-nez v7, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isCotaOrangeDevice()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v5, v2

    goto :goto_1

    .line 60
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/home/launcher/InstallWidgetReceiver;->isWidgetAdded(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string p1, "Launcher.InstallWidget"

    const-string p2, "orange widget already added"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_5
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v7

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v7

    if-nez v7, :cond_6

    const-string p1, "Launcher.InstallWidget"

    const-string p2, "orange widget add failed: cellLayout is null"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_6
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/miui/home/launcher/InstallWidgetReceiver;->getWidgetProvider(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    if-nez v8, :cond_7

    const-string p1, "Launcher.InstallWidget"

    const-string p2, "orange widget add failed: widget not installed"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_7
    invoke-static {p2, v8}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v8

    .line 76
    iget v9, v8, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 77
    iget v8, v8, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v10, 0x1

    if-nez v2, :cond_8

    move v2, v10

    :cond_8
    if-nez v6, :cond_9

    const/4 v6, 0x4

    .line 81
    :cond_9
    invoke-virtual {v7, v2, v6, v9, v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 82
    invoke-virtual {v7, v9, v8}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v7

    if-eqz v7, :cond_a

    .line 83
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 84
    aget v2, v7, v5

    .line 85
    aget v5, v7, v10

    move v6, v5

    move v5, v2

    goto :goto_1

    :cond_a
    move v5, v2

    :goto_1
    const/4 v2, 0x0

    .line 89
    new-instance v7, Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    invoke-direct {v7, p0, p1, p2, v0}, Lcom/miui/home/launcher/InstallWidgetReceiver$1;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/InstallWidgetReceiver;->addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;JIILcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.miui.home.launcher.action.INSTALL_WIDGET"

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/InstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
