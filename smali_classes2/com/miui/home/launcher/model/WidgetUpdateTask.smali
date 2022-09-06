.class public Lcom/miui/home/launcher/model/WidgetUpdateTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "WidgetUpdateTask.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 7

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    .line 43
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 49
    invoke-static {v2, v3, v4}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 58
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/home/launcher/common/Utilities;->isWidgetEnable(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 61
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_5
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 65
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v3

    .line 66
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 65
    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 67
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 68
    invoke-static {v2}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v4

    .line 69
    invoke-static {p1, v4}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v4

    .line 71
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    .line 70
    invoke-static {p1, v3, v5, v6, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 72
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setAppWidgetId(I)V

    const-string v3, "WidgetUpdateTask"

    const-string v4, "rebind app widget success"

    .line 73
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v3, "WidgetUpdateTask"

    const-string v4, "rebind app widget failed"

    .line 75
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_7
    :goto_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 84
    iget-boolean v4, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz v4, :cond_8

    iget v4, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    if-ge v3, v4, :cond_8

    const-string v3, "WidgetUpdateTask"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version mismatch, skip restore widget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 88
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    const/4 v3, 0x1

    .line 89
    iput v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 90
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/util/BitmapUtil;->deleteSavedBitmapFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :goto_3
    invoke-static {p1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto/16 :goto_1

    .line 96
    :cond_9
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    .line 98
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->bindAppWidgetUpdated(Ljava/util/ArrayList;)V

    return-void

    :cond_a
    :goto_4
    return-void
.end method
