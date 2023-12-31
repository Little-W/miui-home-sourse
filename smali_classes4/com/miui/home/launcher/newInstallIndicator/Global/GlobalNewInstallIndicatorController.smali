.class public Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
.super Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.source "GlobalNewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRomPreinstallAppDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;-><init>()V

    return-void
.end method

.method private getContainerId(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;",
            ")J"
        }
    .end annotation

    .line 158
    invoke-virtual {p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getContainer()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 161
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryContainerIdFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 162
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getController()Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
    .locals 1

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;->access$000()Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method private getRecommendAndGameFolderContents(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.home:string/default_folder_title_game"

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosInFolders(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 212
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 213
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 219
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method private insertAppShortcutToDB(Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V
    .locals 7

    .line 176
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fillSerialNumber(Landroid/content/ContentValues;)V

    .line 178
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "container"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result p0

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellX"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellY"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/ScreenUtils;->getLaunchableIntent()Landroid/content/Intent;

    move-result-object v3

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 184
    invoke-virtual {p4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    .line 183
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    return-void
.end method

.method private queryContainerIdFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J
    .locals 0

    .line 168
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getFoldeTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x64

    return-wide p0
.end method

.method private queryIndicatorInfo()V
    .locals 9

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 258
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const-string v1, "content://com.android.provision.provider/dotinfo"

    .line 259
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    .line 265
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "color"

    .line 267
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setIndicatorColor(I)V

    const-string v3, "folderDot"

    .line 270
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 271
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setCanFolderShowIndicator(Z)V

    const-string v3, "configId"

    .line 273
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->saveConfigId(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->saveIndicatorInfoConfig()V

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryIndicatorInfo, mIndicatorColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCanFolderShowIndicator="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->canFolderShowIndicator()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", confingId="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v8, :cond_4

    .line 287
    :goto_2
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v8, v1

    :goto_3
    :try_start_2
    const-string v2, "queryIndicatorInfo"

    .line 281
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    .line 287
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    .line 289
    :cond_6
    throw p0
.end method

.method private queryPreinstallAppDatas()V
    .locals 9

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 229
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const-string v1, "content://com.android.provision.provider/appdata"

    .line 230
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    .line 236
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 237
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-static {v1}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->build(Landroid/database/Cursor;)Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    move-result-object v2

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPreinstallAppDatas, preinstallAppData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 241
    iget-object v3, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v8, :cond_4

    .line 252
    :goto_1
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v8, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v8, v1

    :goto_2
    :try_start_2
    const-string v2, "queryPreinstallAppDatas"

    .line 246
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    .line 252
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    .line 254
    :cond_6
    throw p0
.end method

.method private queryRomPreinstallAppIdsMapFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)Landroid/util/LongSparseArray;
    .locals 12

    const-string p0, "Launcher.NewInstallIndicatorController"

    .line 125
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    const-string v2, "_id"

    const-string v4, "container"

    const-string v5, "intent"

    .line 128
    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "iconPackage=? AND (itemType IN (0, 11, 17) OR itemFlags&1!= 0)"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 128
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRomPreinstallAppIdsMapFromDB, cursor is null, packageName="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 138
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 p1, 0x2

    .line 139
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getShortComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 142
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    .line 145
    :cond_2
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "queryRomPreinstallAppIdsMapFromDB"

    .line 148
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 151
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_5
    throw p0
.end method

.method private saveConfigId(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "newInstallIndicatorConfigId"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveIndicatorInfoConfig()V
    .locals 3

    .line 293
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getIndicatorColor()I

    move-result v1

    const-string v2, "new_intall_indicator_color"

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 294
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->canFolderShowIndicator()Z

    move-result p0

    const-string v1, "can_folder_show_indicator"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateNewInstalledShortcutInfosFromProvider(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$cwJZaIzwWYW5piqzA5iztE5vbLQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$cwJZaIzwWYW5piqzA5iztE5vbLQ;-><init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 198
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNewInstalledShortcutInfosFromProvider, need show indicator, pkg="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher.NewInstallIndicatorController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getRecommendAndGameFolderContents(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->updateNewInstalledShortcutInfosFromProvider(Ljava/util/HashSet;Ljava/util/HashSet;)V

    :cond_0
    return-object p1
.end method

.method public init(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryIndicatorInfo()V

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryPreinstallAppDatas()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v0, -0xca4b02

    const-string v1, "new_intall_indicator_color"

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setIndicatorColor(I)V

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "can_folder_show_indicator"

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setCanFolderShowIndicator(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateNewInstalledShortcutInfosFromProvider$0$GlobalNewInstallIndicatorController(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 191
    invoke-virtual {p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isShowNewInstallIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 87
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, v0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    .line 90
    invoke-direct {v0, v7, v8, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getContainerId(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J

    move-result-wide v11

    .line 92
    invoke-static {v11, v12}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->isContainerIdValid(J)Z

    move-result v1

    const-string v13, "Launcher.NewInstallIndicatorController"

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRomPreintallAppsPositionInDB, preinstallAppData newContainerId don\'t exist, preinstallAppData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {v0, v7, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryRomPreinstallAppIdsMapFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)Landroid/util/LongSparseArray;

    move-result-object v14

    .line 98
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const-string v15, ", newContainerId="

    if-eqz v1, :cond_4

    const/16 v16, 0x0

    move/from16 v6, v16

    .line 99
    :goto_1
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 100
    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 101
    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, "updateRomPreintallAppsPositionInDB, preinstallAppData="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", oldContainerId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-static {v7, v11, v12}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    move-object/from16 v1, p1

    move-wide v4, v11

    .line 109
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    const-string v2, "favorites"

    const-string v3, "_id=?"

    invoke-static {v7, v2, v3, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v6, v17, 0x1

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {v0, v7, v11, v12, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->insertAppShortcutToDB(Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertAppShortcutToDB, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method
