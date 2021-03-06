.class public Lcom/miui/home/launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherProvider$SqlArguments;,
        Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;,
        Lcom/miui/home/launcher/LauncherProvider$_lancet;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field private static final DEFAULT_LOCK_WALLPAPER_PROVIDER_PKG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mLock:Ljava/lang/Object;

.field private mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.home.launcher.settings/appWidgetReset"

    .line 127
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 523
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery"

    goto :goto_0

    :cond_0
    const-string v0, "com.mfashiongallery.emag"

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/LauncherProvider;->DEFAULT_LOCK_WALLPAPER_PROVIDER_PKG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getScreenInfo(Ljava/util/ArrayList;J)Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;J)",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 694
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 695
    iget-wide v1, v0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-string v0, "favorites"

    .line 391
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 392
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_id"

    .line 393
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 394
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item to Favorites table without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 397
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
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

    .line 686
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 687
    invoke-static {p1}, Lcom/miui/home/launcher/ScreenUtils;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 689
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static moveDataBaseForDirectBoot(Landroid/content/Context;)V
    .locals 6

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 169
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 173
    invoke-static {v2, v4}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetDatabaseIfNeeded()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->close()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/LauncherProvider$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/LauncherProvider$3;-><init>(Lcom/miui/home/launcher/LauncherProvider;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    monitor-enter p1

    .line 676
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.LauncherProvider"

    const-string v2, "runOnUiThread"

    .line 678
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "safelyDeleteFromDB, db=null, return"

    .line 338
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 344
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "safelyDeleteFromDB from db fail"

    .line 348
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "safelyDeleteFromDB from db fail"

    .line 346
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static final safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "exec sql fail"

    .line 330
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "exec sql fail"

    .line 328
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 377
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "insert to db fail"

    .line 381
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "insert to db fail"

    .line 379
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v0
.end method

.method public static final safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 360
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "safelyUpdateDatabase db fail"

    .line 364
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "safelyUpdateDatabase db fail"

    .line 362
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;)Z
    .locals 4

    .line 724
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    .line 725
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "container"

    const/16 v2, -0x64

    .line 726
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :try_start_1
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 474
    :try_start_2
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    .line 475
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 477
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p1

    .line 479
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    .line 279
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    :try_start_3
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 285
    iget-object v6, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v5

    invoke-static {p1, v6, v7, v8}, Lcom/miui/home/launcher/LauncherProvider;->insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 289
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 287
    :cond_3
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 291
    array-length p1, p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return p1

    :catchall_0
    move-exception p2

    .line 289
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 293
    :try_start_a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 294
    monitor-exit v0

    return v1

    .line 296
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "dumpDefaultWorkspace"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V

    :cond_0
    const-string v0, "isInRecommendFolder"

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    const-string v0, "isInSysToolFolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "setLockWallpaperAuthority"

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "lock_wallpaper_provider_authority"

    invoke-static {p1, p3, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 555
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Launcher.LauncherProvider"

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set authority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider;->DEFAULT_LOCK_WALLPAPER_PROVIDER_PKG:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 559
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 560
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 559
    invoke-static {p3, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setProviderClosedByUser(Landroid/content/Context;Z)V

    .line 562
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "result_boolean"

    .line 563
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :cond_3
    const-string v0, "setLockWallpaperUpdateMinute"

    .line 565
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 567
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 566
    invoke-static {p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z

    move-result p1

    .line 568
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "result_boolean"

    .line 569
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :cond_4
    const-string v0, "getLockScreenPath"

    .line 571
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "pref_key_lock_wallpaper_path"

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 574
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "result_string"

    .line 575
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_5
    const-string v0, "getLockWallpaperInfo"

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 579
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "currentWallpaperInfo"

    invoke-static {p1, p2, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 581
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "result_json"

    .line 582
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_6
    const-string v0, "getHomePreview"

    .line 585
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "wallpaperColorMode"

    .line 586
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 587
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    .line 588
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 587
    invoke-static {p2, p3, v0}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 589
    new-instance p3, Lcom/miui/home/launcher/LauncherProvider$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$1;-><init>(Lcom/miui/home/launcher/LauncherProvider;ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/LauncherProvider;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 595
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 596
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    const-string p3, "result_bitmap"

    .line 597
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_7
    const-string v0, "getLockScreenPreview"

    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "wallpaperColorMode"

    .line 600
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 601
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 603
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p3

    .line 604
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 602
    invoke-static {p3, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_8

    return-object v2

    .line 608
    :cond_8
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/LauncherProvider$2;-><init>(Lcom/miui/home/launcher/LauncherProvider;Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherProvider;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 617
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 618
    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    const-string p3, "result_bitmap"

    .line 619
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_9
    const-string v0, "getUsedClockGadgetTypeList"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 622
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 623
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p2

    .line 624
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getClockTypeFromGadgetId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 628
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    const-string p2, "result_string_arraylist"

    .line 631
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    :cond_c
    const-string v0, "android.provider.Settings.System.putString"

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 634
    invoke-static {p3}, Lcom/miui/home/launcher/LauncherSettings$Settings;->putSystemSettings(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p3, "setScreenCellCount"

    .line 635
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x2

    .line 636
    new-array p1, p1, [I

    .line 637
    invoke-static {p2, p1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 638
    aget p3, p1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v3, 0x1

    if-ne p3, v0, :cond_f

    aget p3, p1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    if-eq p3, v0, :cond_e

    goto :goto_1

    :cond_e
    const-string p1, "Launcher.LauncherProvider"

    .line 651
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cell count not change:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 639
    :cond_f
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    aget v0, p1, v1

    aget p1, p1, v3

    invoke-static {p3, v0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCells(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "Launcher.LauncherProvider"

    .line 640
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set cell count success:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 642
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenCellsChanged()V

    const-string p1, "Launcher.LauncherProvider"

    .line 643
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update launcher ui success:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    const-string p1, "Launcher.LauncherProvider"

    .line 645
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launcher not lunched:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_11
    const-string p1, "Launcher.LauncherProvider"

    .line 648
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set cell count error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_12
    const-string p1, "Launcher.LauncherProvider"

    .line 654
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse cells size error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_2
    return-object v2

    :cond_14
    :goto_3
    const-string p2, "componentName"

    .line 535
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 536
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_17

    .line 537
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 538
    invoke-static {p3, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_17

    const-string p2, "isInRecommendFolder"

    .line 541
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    const-string v2, "com.miui.home:string/default_folder_title_recommend"

    goto :goto_4

    :cond_15
    const-string p2, "isInSysToolFolder"

    .line 543
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string v2, "com.miui.home:string/default_folder_title_tools"

    .line 546
    :cond_16
    :goto_4
    invoke-static {p3, v3, v4, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result v1

    .line 549
    :cond_17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "result_boolean"

    .line 550
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public createdFirstTime()Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createdFirstTime()Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "delete, isRestoring, return"

    .line 302
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "delete, !isReady, return"

    .line 308
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 311
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 313
    iget-object p2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :try_start_3
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.LauncherProvider"

    const-string p3, "delete, error"

    .line 316
    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    monitor-exit v0

    return v1

    .line 319
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public deleteItemIfInSysToolFolder(Ljava/lang/String;)V
    .locals 6

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 489
    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const-string p1, "com.miui.home:string/default_folder_title_tools"

    .line 490
    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "favorites"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    .line 491
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 492
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 491
    invoke-static {v0, p1, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 139
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    const-string p3, "--proto"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "dump"

    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 144
    invoke-static {p2}, Lmiui/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 145
    array-length p3, p2

    if-lez p3, :cond_0

    .line 146
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 147
    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public generateNewId()J
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    iget-object p1, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 241
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 242
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "favorites"

    .line 243
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "screen"

    .line 245
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "container"

    .line 246
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, -0x64

    if-ne v5, v6, :cond_4

    .line 251
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/miui/home/launcher/LauncherProvider;->getScreenInfo(Ljava/util/ArrayList;J)Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 252
    iget v4, v4, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 253
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->portraitCellPosition(Landroid/content/ContentValues;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 248
    :cond_3
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    .line 258
    :cond_4
    :goto_1
    :try_start_4
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3, v2, v1, p2}, Lcom/miui/home/launcher/LauncherProvider;->insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gtz p2, :cond_5

    .line 260
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v1

    .line 262
    :cond_5
    :try_start_6
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    :try_start_7
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 266
    monitor-exit v0

    return-object v1

    .line 268
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public isReady()Z
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseReady()Z

    move-result v0

    return v0
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider;->resetDatabaseIfNeeded()V

    .line 159
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "preference"

    .line 207
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 208
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p3, "value"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p3, 0x0

    move p4, p3

    .line 209
    :goto_0
    array-length p5, p2

    if-ge p4, p5, :cond_1

    const/4 p5, 0x1

    .line 210
    new-array p5, p5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    aget-object v3, p2, p4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, p3

    invoke-virtual {p1, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 212
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 214
    :cond_2
    :try_start_2
    new-instance p3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {p3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 215
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 217
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 218
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    move-object v4, p2

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :try_start_3
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Launcher.LauncherProvider"

    const-string p3, "query"

    .line 226
    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 228
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception p1

    const-string p2, "Launcher.LauncherProvider"

    const-string p3, "query"

    .line 223
    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    monitor-exit v0

    return-object v1

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public queryFolderSize(J)I
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result p1

    return p1
.end method

.method public queryIdByTitle(Ljava/lang/String;)J
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryInstalledComponentId(Ljava/lang/String;)J
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 405
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "preference"

    .line 406
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updatePreferenceValue(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p4

    .line 410
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "packages"

    .line 413
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string p3, "name"

    .line 414
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 415
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "delete"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "profileId"

    .line 416
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3, v2, v3}, Lcom/miui/home/launcher/ScreenUtils;->removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v4

    :cond_3
    :try_start_4
    const-string v3, "screens"

    .line 420
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p3, "screenOrder"

    .line 421
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    const-string p1, "Launcher.LauncherProvider"

    .line 423
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid resorder request: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const-string p2, "null"

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v4

    .line 428
    :cond_5
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string p3, ","

    .line 430
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move p3, v4

    move v3, p3

    .line 431
    :goto_1
    array-length v5, p2

    if-ge p3, v5, :cond_6

    .line 432
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "screenOrder"

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    iget-object v6, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v7, "_id=?"

    new-array v8, p4, [Ljava/lang/String;

    aget-object v9, p2, p3

    aput-object v9, v8, v4

    invoke-static {p1, v6, v5, v7, v8}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 436
    :cond_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 438
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    .line 441
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return v3

    :catchall_0
    move-exception p2

    .line 438
    :try_start_a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    :cond_7
    const-string v3, "favorites"

    .line 443
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p3, :cond_8

    if-eqz p2, :cond_8

    const-string p3, "container"

    .line 445
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    const-string p3, "screen"

    .line 446
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 448
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->getScreenInfo(Ljava/util/ArrayList;J)Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 449
    iget p3, p3, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    if-ne p3, p4, :cond_8

    .line 450
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->portraitCellPosition(Landroid/content/ContentValues;)V

    .line 456
    :cond_8
    iget-object p3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-static {p1, p3, p2, p4, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v0

    return p1

    .line 404
    :cond_9
    :goto_2
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "Launcher.LauncherProvider"

    .line 458
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update, error"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v0

    return v1

    .line 461
    :goto_3
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method
