.class public Lcom/miui/home/launcher/model/WidgetRemoveTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "WidgetRemoveTask.java"


# instance fields
.field bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

.field jsonData:Ljava/lang/String;

.field removeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    return-void
.end method

.method private getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    .line 132
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 133
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private versionEquals(Ljava/lang/String;ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/model/WidgetRemoveTask;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getSendNotification()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.home.ACTION_OFFLINE_WIDGET_NOTIFICATION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    const-string p2, "OFFLINE_WIDGET_BEAN_JSON_DATA"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.miui.personalassistant"

    .line 111
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 9

    const-string p1, "WidgetRemoveTask"

    const/4 p2, 0x0

    .line 54
    :try_start_0
    new-instance p3, Lcom/mi/google/gson/Gson;

    invoke-direct {p3}, Lcom/mi/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    const-class v1, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {p3, v0, v1}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    iput-object p3, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x4

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 64
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType"

    .line 65
    invoke-static {v3, p3}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u67e5\u8be2\u6570\u636e\u5e93\u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u6ca1\u6709\u67e5\u5230\u5c0f\u90e8\u4ef6"

    if-nez v8, :cond_0

    .line 72
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 75
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 78
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 84
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    .line 85
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 86
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 89
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    .line 90
    invoke-virtual {v0}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getVersionList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/model/WidgetRemoveTask;->versionEquals(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getWidgetProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iput v7, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->deleteWidgetWay:I

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 97
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return p2

    :catch_1
    const-string p0, "Json \u89e3\u6790\u5f02\u5e38"

    .line 56
    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method
