.class public Lcom/miui/home/launcher/model/WidgetUpdateTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "WidgetUpdateTask.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 8

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 38
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    .line 42
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
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

    .line 46
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/model/WidgetUpdateTask;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 48
    invoke-static {v2, v3, v4}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 57
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 59
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 60
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/home/launcher/common/Utilities;->isWidgetEnable(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x6

    .line 62
    iput v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->deleteWidgetWay:I

    .line 63
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 67
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v3

    .line 68
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 67
    invoke-static {p1, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v3

    const-string v4, "WidgetUpdateTask"

    if-nez v3, :cond_7

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 70
    invoke-static {v2}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v5

    .line 71
    invoke-static {p1, v5}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 73
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v7

    .line 72
    invoke-static {p1, v3, v6, v7, v5}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setAppWidgetId(I)V

    const-string v3, "rebind app widget success"

    .line 75
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v3, "rebind app widget failed"

    .line 77
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_7
    :goto_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 82
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p1, v5, v3}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 86
    iget-boolean v5, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz v5, :cond_8

    iget v5, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    if-ge v3, v5, :cond_8

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version mismatch, skip restore widget "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 90
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    const/4 v3, 0x1

    .line 91
    iput v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 92
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/util/BitmapUtil;->deleteSavedBitmapFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :goto_3
    invoke-static {p1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto/16 :goto_1

    .line 98
    :cond_9
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    .line 100
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/WidgetUpdateTask;->bindAppWidgetUpdated(Ljava/util/ArrayList;)V

    :cond_a
    :goto_4
    return-void
.end method
