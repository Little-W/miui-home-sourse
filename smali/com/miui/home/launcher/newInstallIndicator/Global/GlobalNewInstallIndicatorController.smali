.class public Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
.super Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.source "GlobalNewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$GlobalNewInstallIndicatorControllerInner;,
        Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;
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

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private getContainerId(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J
    .locals 3
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

    .line 159
    invoke-virtual {p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getContainer()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 162
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryContainerIdFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 163
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public static getController()Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;
    .locals 1

    .line 50
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

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.home:string/default_folder_title_game"

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosInFolders(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method private getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 4
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

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 214
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 220
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 222
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_3
    return-object v0
.end method

.method private insertAppShortcutToDB(Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V
    .locals 7

    .line 177
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 178
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fillSerialNumber(Landroid/content/ContentValues;)V

    const-string v0, "container"

    .line 179
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result p2

    const-string p3, "cellX"

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellY"

    const/4 p3, 0x0

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/ScreenUtils;->getLaunchableIntent()Landroid/content/Intent;

    move-result-object v3

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 185
    invoke-virtual {p4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    .line 184
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    return-void
.end method

.method public static synthetic lambda$updateNewInstalledShortcutInfosFromProvider$0(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 192
    invoke-virtual {p3}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isShowNewInstallIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getShortcutInfosByRomPreinstallApp(Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private queryContainerIdFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J
    .locals 1

    .line 169
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getFoldeTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x64

    return-wide p1
.end method

.method private queryIndicatorInfo()V
    .locals 8

    .line 259
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const-string v0, "content://com.android.provision.provider/dotinfo"

    .line 260
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    .line 266
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "color"

    .line 268
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setIndicatorColor(I)V

    const-string v2, "folderDot"

    .line 271
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setCanFolderShowIndicator(Z)V

    const-string v2, "configId"

    .line 274
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->saveConfigId(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->saveIndicatorInfoConfig()V

    const-string v3, "Launcher.NewInstallIndicatorController"

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryIndicatorInfo, mIndicatorColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCanFolderShowIndicator="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->canFolderShowIndicator()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", confingId="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 285
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_4

    .line 288
    :goto_2
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v7, v0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v7, v0

    :goto_3
    :try_start_2
    const-string v2, "Launcher.NewInstallIndicatorController"

    const-string v3, "queryIndicatorInfo"

    .line 282
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v7, :cond_6

    .line 288
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    throw v1
.end method

.method private queryPreinstallAppDatas()V
    .locals 8

    .line 230
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const-string v0, "content://com.android.provision.provider/appdata"

    .line 231
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    .line 237
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-static {v0}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->build(Landroid/database/Cursor;)Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    move-result-object v1

    const-string v2, "Launcher.NewInstallIndicatorController"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryPreinstallAppDatas, preinstallAppData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_4

    .line 253
    :goto_1
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v7, v0

    :goto_2
    :try_start_2
    const-string v2, "Launcher.NewInstallIndicatorController"

    const-string v3, "queryPreinstallAppDatas"

    .line 247
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v7, :cond_6

    .line 253
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    throw v1
.end method

.method private queryRomPreinstallAppIdsMapFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)Landroid/util/LongSparseArray;
    .locals 12

    .line 126
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    const-string v2, "_id"

    const-string v4, "container"

    const-string v5, "intent"

    .line 129
    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "iconPackage=? AND (itemType IN (0, 11) OR itemFlags&1!= 0)"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 129
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "Launcher.NewInstallIndicatorController"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRomPreinstallAppIdsMapFromDB, cursor is null, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 139
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 p1, 0x2

    .line 140
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getShortComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 143
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    .line 146
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
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Launcher.NewInstallIndicatorController"

    const-string v2, "queryRomPreinstallAppIdsMapFromDB"

    .line 149
    invoke-static {p2, v2, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 152
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method private saveConfigId(Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "newInstallIndicatorConfigId"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveIndicatorInfoConfig()V
    .locals 3

    .line 294
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "new_intall_indicator_color"

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getIndicatorColor()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 295
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "can_folder_show_indicator"

    invoke-virtual {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->canFolderShowIndicator()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateNewInstalledShortcutInfosFromProvider(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 3
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

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$0icgO-OPYgsL_335tDemRkgL7ko;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$0icgO-OPYgsL_335tDemRkgL7ko;-><init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 190
    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    .line 199
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNewInstalledShortcutInfosFromProvider, need show indicator, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getRecommendAndGameFolderContents(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->mRomPreinstallAppDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->updateNewInstalledShortcutInfosFromProvider(Ljava/util/HashSet;Ljava/util/HashSet;)V

    :cond_0
    return-object p1
.end method

.method public init(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryIndicatorInfo()V

    .line 66
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryPreinstallAppDatas()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "new_intall_indicator_color"

    const v1, -0xca4b02

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setIndicatorColor(I)V

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "can_folder_show_indicator"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->setCanFolderShowIndicator(Z)V

    :goto_0
    return-void
.end method

.method public updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 88
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 89
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

    .line 91
    invoke-direct {v0, v7, v8, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->getContainerId(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)J

    move-result-wide v11

    .line 93
    invoke-static {v11, v12}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->isContainerIdValid(J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Launcher.NewInstallIndicatorController"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRomPreintallAppsPositionInDB, preinstallAppData newContainerId don\'t exist, preinstallAppData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {v0, v7, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->queryRomPreinstallAppIdsMapFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)Landroid/util/LongSparseArray;

    move-result-object v13

    .line 99
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v15, 0x0

    .line 100
    :goto_1
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 101
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 102
    invoke-virtual {v13, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v1, "Launcher.NewInstallIndicatorController"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateRomPreintallAppsPositionInDB, preinstallAppData="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", id="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", oldContainerId="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", newContainerId="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {v7, v11, v12}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    move-object/from16 v1, p1

    move-wide v4, v11

    .line 110
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const-string v1, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    .line 112
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static {v7, v1, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {v0, v7, v11, v12, v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->insertAppShortcutToDB(Landroid/database/sqlite/SQLiteDatabase;JLcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V

    const-string v1, "Launcher.NewInstallIndicatorController"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAppShortcutToDB, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method
