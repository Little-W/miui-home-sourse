.class public Lcom/miui/home/launcher/model/MamlRemoveTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "MamlRemoveTask.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

.field jsonData:Ljava/lang/String;

.field removeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->removeList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->jsonData:Ljava/lang/String;

    return-void
.end method

.method private versionEquals(IILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    .line 111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->removeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->removeList:Ljava/util/List;

    new-instance p2, Lcom/miui/home/launcher/model/-$$Lambda$MamlRemoveTask$68BYh-1Ra9-WjjuUtFZnk-kJFkw;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/model/-$$Lambda$MamlRemoveTask$68BYh-1Ra9-WjjuUtFZnk-kJFkw;-><init>(Lcom/miui/home/launcher/model/MamlRemoveTask;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/model/MamlRemoveTask;->bindMamlWidgetRemoved(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 7

    const/4 p1, 0x0

    .line 38
    :try_start_0
    new-instance p2, Lcom/mi/google/gson/Gson;

    invoke-direct {p2}, Lcom/mi/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->jsonData:Ljava/lang/String;

    const-class v0, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    invoke-virtual {p2, p3, v0}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    iput-object p2, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 p3, 0x13

    .line 47
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 50
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType"

    .line 53
    invoke-static {v3, p2}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeDatabase: \u67e5\u8be2\u6570\u636e\u5e93\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    .line 62
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 66
    :cond_0
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    new-instance p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 75
    iget-object p3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    .line 76
    invoke-virtual {v0}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getSpanX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, v0, :cond_2

    iget p3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    iget-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    .line 77
    invoke-virtual {v0}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getSpanY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    .line 78
    invoke-virtual {p3}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    iget-object v1, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getVersionList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lcom/miui/home/launcher/model/MamlRemoveTask;->versionEquals(IILjava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x4

    .line 79
    iput p3, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->deleteWidgetWay:I

    .line 80
    iget-object p3, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->removeList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->removeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 63
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->TAG:Ljava/lang/String;

    const-string p2, "executeDatabase: \u6ca1\u6709\u67e5\u5230\u5c0f\u90e8\u4ef6"

    invoke-static {p0, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 40
    :catch_1
    iget-object p0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->TAG:Ljava/lang/String;

    const-string p2, "executeDatabase: Json \u89e3\u6790\u5f02\u5e38"

    invoke-static {p0, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public synthetic lambda$execute$0$MamlRemoveTask()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->bean:Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/offlinewidget/OfflineMamlBean;->getSendNotification()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/model/MamlRemoveTask;->jsonData:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil;->sendOfflineNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
