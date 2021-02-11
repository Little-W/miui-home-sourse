.class public Lcom/miui/home/launcher/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;,
        Lcom/miui/home/launcher/ScreenUtils$ScreensQuery;,
        Lcom/miui/home/launcher/ScreenUtils$_lancet;
    }
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static asynIsAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/common/ResultRunnable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Yv7wIBSA6tHmhGk-VPKVzcpjQQM;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Yv7wIBSA6tHmhGk-VPKVzcpjQQM;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$EUQ_ynGsxeVgnPZgte3_rjizm7k;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$EUQ_ynGsxeVgnPZgte3_rjizm7k;-><init>(Lcom/miui/home/launcher/common/ResultRunnable;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    const-string v0, "favorites"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    .line 136
    new-array v2, v2, [Ljava/lang/String;

    .line 139
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    .line 136
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteScreen(Landroid/content/ContentResolver;JLjava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava8/util/function/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;-><init>(Landroid/content/ContentResolver;J)V

    .line 64
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p0

    const/4 p1, 0x0

    .line 57
    invoke-static {v0, p3, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static findActivities2Id(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 164
    sget-object v6, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "intent"

    const-string v9, "profileId"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "iconPackage=? AND (itemType IN (0, 11) OR itemFlags&1!= 0)"

    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    :try_start_0
    const-string v6, "Launcher.ScreenUtils"

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not find matched items from DB for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/home/launcher/ScreenUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    move v0, v12

    :goto_1
    if-eqz v5, :cond_6

    .line 175
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 176
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 177
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 178
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "Launcher.ScreenUtils"

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searching DB find item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " serialNumber: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/miui/home/launcher/ScreenUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static/range {p0 .. p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v10

    int-to-long v13, v9

    invoke-virtual {v10, v13, v14}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v10

    move-object/from16 v13, p4

    invoke-virtual {v13, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v8, "Launcher.ScreenUtils"

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "item "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " not match current user "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/miui/home/launcher/ScreenUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v9, v12

    .line 188
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 189
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/LauncherActivityInfo;

    .line 190
    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 191
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "component="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3b

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    invoke-interface {v1, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v0, 0x1

    .line 193
    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    move v8, v0

    move v0, v12

    :goto_3
    if-nez v0, :cond_4

    .line 200
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v0, v8

    const/4 v11, 0x1

    goto/16 :goto_1

    :goto_4
    if-eqz v5, :cond_5

    .line 205
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-interface {v1, v12, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/ScreenUtils;->getLaunchableIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    const p1, 0xc0040

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    .line 155
    :goto_0
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/miui/launcher/utils/PortableUtils;->queryIntentActivitiesAsUser(Landroid/content/Context;Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchableIntent()Landroid/content/Intent;
    .locals 3

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "favorites"

    const-string v0, "_id"

    .line 110
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconPackage=? AND profileId=? AND (itemType IN (0, 11) OR itemFlags&1!= 0)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    .line 114
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 110
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 117
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 118
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0
.end method

.method public static getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, ""

    .line 94
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, p1, v2, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v1

    .line 260
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v2

    .line 261
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v3

    .line 262
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v4

    if-ne v1, v2, :cond_0

    if-eq v3, v4, :cond_1

    :cond_0
    const-string v5, "pref_key_use_theme_cells_size"

    const/4 v6, 0x0

    .line 264
    invoke-static {p0, v5, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    if-gt v1, v2, :cond_4

    move p0, v3

    :goto_1
    if-gt p0, v4, :cond_3

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static insertNewScreen(Landroid/content/ContentResolver;IILjava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "II",
            "Ljava8/util/function/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$R1d55sIUm2EcqU6KGK2wSSEv-UM;-><init>(IILandroid/content/ContentResolver;)V

    .line 52
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p0

    const/4 p1, 0x0

    .line 46
    invoke-static {v0, p3, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0xc0000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 78
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic lambda$asynIsAlreadyInstalled$2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$asynIsAlreadyInstalled$3(Lcom/miui/home/launcher/common/ResultRunnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ResultRunnable;->run()V

    return-void
.end method

.method static synthetic lambda$deleteScreen$1(Landroid/content/ContentResolver;JLjava/lang/Void;)Ljava/lang/Long;
    .locals 2

    .line 58
    sget-object p3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    const-string p0, "Launcher.ScreenUtils"

    const-string p1, "delete screen from DB fail"

    .line 60
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 p0, -0x8000000000000000L

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$insertNewScreen$0(IILandroid/content/ContentResolver;Ljava/lang/Void;)Ljava/lang/Long;
    .locals 1

    .line 47
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "screenOrder"

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "screenType"

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    sget-object p0, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "screens"

    .line 288
    sget-object v2, Lcom/miui/home/launcher/ScreenUtils$ScreensQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "screenOrder ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 297
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 300
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;-><init>(JII)V

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 305
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static parseCellsSize(Ljava/lang/String;[I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "x"

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 278
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 279
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p0, "Launcher.cells"

    const-string p1, "cells config string invalidate"

    .line 282
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 0

    .line 129
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenUtils;->getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p2, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 131
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
