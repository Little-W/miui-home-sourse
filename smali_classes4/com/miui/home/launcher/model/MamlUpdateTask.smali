.class public Lcom/miui/home/launcher/model/MamlUpdateTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "MamlUpdateTask.java"


# instance fields
.field private final productId:Ljava/lang/String;

.field updated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    return-void
.end method

.method private updateMaMlWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 8

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 40
    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "itemType=? AND product_id=?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v7, 0x13

    .line 44
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    aput-object v1, v6, p1

    const/4 v7, 0x0

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 51
    invoke-virtual {v2, v1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 52
    iget-object v3, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    iget v4, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 58
    iget-object v4, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1, v3}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MamlUpdateTask"

    const-string v3, "updateMaMlWidgetInDb: fail "

    .line 63
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 66
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :goto_3
    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_3
    throw p0
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    iget p2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/model/MamlUpdateTask;->bindMamlWidgetUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/MamlUpdateTask;->updateMaMlWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result p0

    return p0
.end method
