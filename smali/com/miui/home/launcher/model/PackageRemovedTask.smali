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

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$execute$0(Lcom/miui/home/launcher/model/PackageRemovedTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    .line 75
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

    .line 77
    invoke-static {p0, p2}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 78
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 7

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "itemType=?"

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 v5, 0x4

    .line 36
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    .line 42
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 43
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 44
    invoke-virtual {v3, v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 45
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_1
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

    .line 50
    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/model/PackageRemovedTask;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 2

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;-><init>(Lcom/miui/home/launcher/model/PackageRemovedTask;)V

    .line 73
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 76
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/PackageRemovedTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->removeWidgetInDb(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result p1

    return p1
.end method
