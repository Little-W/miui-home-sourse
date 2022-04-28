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

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    return-void
.end method

.method private getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 129
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 131
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
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

    .line 118
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/model/WidgetRemoveTask;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 120
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;->getSendNotification()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.home.ACTION_OFFLINE_WIDGET_NOTIFICATION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "OFFLINE_WIDGET_BEAN_JSON_DATA"

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.miui.personalassistant"

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 7

    const/4 p1, 0x0

    .line 53
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->jsonData:Ljava/lang/String;

    const-class v0, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;

    iput-object p2, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineWidgetBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x4

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType"

    .line 64
    invoke-static {v3, p2}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "WidgetRemoveTask"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u6570\u636e\u5e93\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    const-string p2, "WidgetRemoveTask"

    const-string p3, "\u6ca1\u6709\u67e5\u5230\u5c0f\u90e8\u4ef6"

    .line 71
    invoke-static {p2, p3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 74
    :cond_0
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 77
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "WidgetRemoveTask"

    const-string p3, "\u6ca1\u6709\u67e5\u5230\u5c0f\u90e8\u4ef6"

    .line 80
    invoke-static {p2, p3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 83
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    .line 84
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 85
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 86
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 88
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

    .line 89
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

    .line 90
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

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 95
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/model/WidgetRemoveTask;->removeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return p1

    :catch_1
    const-string p2, "WidgetRemoveTask"

    const-string p3, "Json \u89e3\u6790\u5f02\u5e38"

    .line 55
    invoke-static {p2, p3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method
