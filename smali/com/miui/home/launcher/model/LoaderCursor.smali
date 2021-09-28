.class public Lcom/miui/home/launcher/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "LoaderCursor.java"


# static fields
.field private static final PACKAGE_CHANGE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cellXIndex:I

.field private final cellYIndex:I

.field private final containerIndex:I

.field public id:J

.field private final idIndex:I

.field private final itemToChange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public itemType:I

.field private final itemTypeIndex:I

.field private final itemsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final screenIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/miui/home/launcher/model/LoaderCursor$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/model/LoaderCursor$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/model/LoaderCursor;->PACKAGE_CHANGE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemToChange:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mAllAppsMap:Ljava/util/Map;

    const-string p1, "_id"

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->idIndex:I

    const-string p1, "container"

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->containerIndex:I

    const-string p1, "itemType"

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemTypeIndex:I

    const-string p1, "screen"

    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->screenIndex:I

    const-string p1, "cellX"

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->cellXIndex:I

    const-string p1, "cellY"

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->cellYIndex:I

    return-void
.end method

.method private insertApp(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 6

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v0

    .line 128
    new-instance v2, Lcom/miui/home/launcher/AppInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 129
    iput-wide v0, v2, Lcom/miui/home/launcher/AppInfo;->id:J

    .line 130
    iget v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/miui/home/launcher/AppInfo;->container:J

    .line 131
    iget v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/miui/home/launcher/AppInfo;->screenId:J

    .line 132
    iget v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/home/launcher/AppInfo;->cellX:I

    .line 133
    iget v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/home/launcher/AppInfo;->cellY:I

    .line 135
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v4, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Lcom/miui/home/launcher/AppInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 139
    iget-object v2, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 140
    iget-object v2, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemToChange:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "LoaderCursor"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert new app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkPackageNameChange(Lcom/miui/home/launcher/util/ComponentKey;)V
    .locals 6

    .line 105
    iget v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemType:I

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mAllAppsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/miui/home/launcher/model/LoaderCursor;->PACKAGE_CHANGE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mAllAppsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/ComponentKey;

    .line 117
    iget-object v4, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 118
    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    iget-object p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mAllAppsMap:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/LoaderCursor;->insertApp(Landroid/content/pm/LauncherActivityInfo;)V

    const-string p1, "LoaderCursor"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " change to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public commitDeleted()Z
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    iget-object v3, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    .line 97
    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemToChange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemToChange:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markDeleted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LoaderCursor"

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    iget-wide v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveToNext()Z
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget v1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->idIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->id:J

    .line 75
    iget v1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/model/LoaderCursor;->itemType:I

    :cond_0
    return v0
.end method

.method public onRemoveProgressShortcutInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 152
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->insertApp(Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
