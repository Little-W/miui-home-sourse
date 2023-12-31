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

    .line 122
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
    .locals 1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 171
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 173
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isWidgetAdded(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Z
    .locals 1

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 185
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

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.action.INSTALL_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$InstallWidgetReceiver(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 12

    .line 35
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/Utilities;->hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, " has no permission"

    const-string v3, "Launcher.InstallWidget"

    if-nez v1, :cond_0

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "add widget failed, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "Launcher is not running,process later"

    .line 46
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "miui.intent.extra.provider_component_name"

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/ComponentName;

    if-nez v5, :cond_2

    const-string p0, "provider name is null"

    .line 52
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "android"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/Utilities;->hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "add widget failed, componentName packageName : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-wide/16 v0, -0x1

    const-string v2, "screenId"

    .line 61
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x0

    const-string v1, "cellX"

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "cellY"

    .line 63
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 66
    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    if-nez v6, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isCotaOrangeDevice()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move v9, v1

    move v10, v2

    goto :goto_1

    .line 67
    :cond_5
    :goto_0
    invoke-static {v4, v5}, Lcom/miui/home/launcher/InstallWidgetReceiver;->isWidgetAdded(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "orange widget already added"

    .line 68
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_6
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v6

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v6

    if-nez v6, :cond_7

    const-string p0, "orange widget add failed: cellLayout is null"

    .line 73
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_7
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-direct {p0, v9, v5}, Lcom/miui/home/launcher/InstallWidgetReceiver;->getWidgetProvider(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    if-nez v9, :cond_8

    const-string p0, "orange widget add failed: widget not installed"

    .line 78
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_8
    invoke-static {p2, v9}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 83
    iget v9, v3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 84
    iget v3, v3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v10, 0x1

    if-nez v1, :cond_9

    move v1, v10

    :cond_9
    if-nez v2, :cond_a

    const/4 v2, 0x4

    .line 88
    :cond_a
    invoke-virtual {v6, v1, v2, v9, v3}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 89
    invoke-virtual {v6, v9, v3}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 90
    array-length v6, v3

    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    .line 91
    aget v0, v3, v0

    .line 92
    aget v1, v3, v10

    move v9, v0

    move v10, v1

    :goto_1
    const/4 v6, 0x0

    .line 96
    new-instance v11, Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    invoke-direct {v11, p0, p1, p2, v4}, Lcom/miui/home/launcher/InstallWidgetReceiver$1;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    invoke-static/range {v4 .. v11}, Lcom/miui/home/launcher/InstallWidgetReceiver;->addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;JIILcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/InstallWidgetReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
