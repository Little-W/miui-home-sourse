.class public Lcom/miui/home/launcher/model/PackageRemovedTask;
.super Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.source "PackageRemovedTask.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field removed:Ljava/util/ArrayList;
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

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$execute$0(Lcom/miui/home/launcher/model/PackageRemovedTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 85
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$execute$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 88
    invoke-static {p0, p2}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 7

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p1, 0x1

    .line 37
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType=?"

    new-array v4, p1, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 40
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    .line 51
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 52
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 53
    invoke-virtual {v3, v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 61
    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr p1, v0

    return p1

    :catch_0
    const-string v0, "PackageRemovedTask"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query widgets for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;-><init>(Lcom/miui/home/launcher/model/PackageRemovedTask;)V

    .line 84
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 87
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/PackageRemovedTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->removeWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result p1

    return p1
.end method
