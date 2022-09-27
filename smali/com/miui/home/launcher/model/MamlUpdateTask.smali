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

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    return-void
.end method

.method private updateMaMlWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 7

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType=? AND product_id=?"

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/16 p1, 0x13

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object p1, v4, v6

    const/4 v5, 0x0

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 49
    invoke-virtual {v1, v0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 50
    iget-object v2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->updated:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v6

    return p1
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 0

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->productId:Ljava/lang/String;

    iget p2, p0, Lcom/miui/home/launcher/model/MamlUpdateTask;->versionCode:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/model/MamlUpdateTask;->bindMamlWidgetUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/MamlUpdateTask;->updateMaMlWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result p1

    return p1
.end method
