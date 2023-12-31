.class public abstract Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;
.source "UpgradeFavoriteInfo.java"


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v13, p8

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 25
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v13, :cond_0

    const-string v0, "com.mi.vtalk"

    .line 26
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object v1, p0

    .line 27
    iput-boolean v0, v1, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mIsRetained:Z

    :cond_0
    return-void
.end method

.method private addAppShortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;)J
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "intent"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "iconPackage"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const-string v1, "spanY"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const-string p2, "favorites"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getSql(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "and _id not in("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAppInstalled(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Z
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mIsRetained:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mClassName:Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mClassName:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 103
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 104
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from favorites where iconPackage = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and itemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and container <> -101 and profileId =  0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->getSql(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 53
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {p3, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 56
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->isAppInstalled(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Z

    move-result p2

    .line 58
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 59
    new-instance p2, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p2, v2, v0}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 60
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->addAppShortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    :goto_1
    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    .line 34
    iget-object v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->emptyPositionQueue:Ljava/util/Queue;

    iget-wide v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->newFolderId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->updateValues(Ljava/util/Queue;J)V

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isDrawerModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mTelephoneIconIds:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mTelephoneIconIds:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->updateAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v0

    .line 41
    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->emptyPositionQueue:Ljava/util/Queue;

    iget-object p1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mScreenIds:[J

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->updateEmptyPositionQueue(Ljava/util/Queue;[JZ)V

    return-void
.end method

.method protected updateAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 71
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    .line 73
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->mPackageName:Ljava/lang/String;

    aput-object p0, v0, v3

    .line 76
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x1

    aput-object p0, v0, v6

    const/4 p0, 0x2

    const/16 v7, -0x65

    .line 77
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, p0

    const/4 p0, 0x3

    const-string v7, "0"

    aput-object v7, v0, p0

    const/4 p0, 0x4

    .line 78
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, p0

    const-string p0, "favorites"

    const-string v4, "iconPackage = ? and itemType = ? and container <> ? and profileId = ? and _id <> ?"

    .line 73
    invoke-virtual {p1, p0, p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    cmp-long p0, p0, v1

    if-lez p0, :cond_1

    move v3, v6

    :cond_1
    return v3
.end method

.method protected abstract updateEmptyPositionQueue(Ljava/util/Queue;[JZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;[JZ)V"
        }
    .end annotation
.end method

.method protected abstract updateValues(Ljava/util/Queue;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;J)V"
        }
    .end annotation
.end method
