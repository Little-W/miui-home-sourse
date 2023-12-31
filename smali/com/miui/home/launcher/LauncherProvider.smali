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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/appWidgetReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 507
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery"

    goto :goto_0

    :cond_0
    const-string v0, "com.mfashiongallery.emag"

    .line 508
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/LauncherProvider;->DEFAULT_LOCK_WALLPAPER_PROVIDER_PKG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider;->loadDefaultWorkspace$___twin___(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    return-void
.end method

.method private flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 665
    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 666
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 667
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private getHomePreView(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo v0, "wallpaperColorMode"

    .line 640
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "onlyShortCut"

    const/4 v2, 0x0

    .line 641
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "hotSeatsNeedAlpha"

    const/4 v3, 0x1

    .line 642
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 643
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 645
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 646
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/WallpaperUtils;->correctHomeScreenPreview(IZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 649
    :cond_0
    :try_start_0
    new-instance v3, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v3}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;

    invoke-direct {v4, v0, v1, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;-><init>(IZZ)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 650
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 652
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 656
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const-string p1, "result_bitmap"

    .line 657
    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2
.end method

.method public static insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-string v0, "favorites"

    .line 384
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 385
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item to Favorites table without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$getHomePreView$0(IZZ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 650
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/WallpaperUtils;->correctHomeScreenPreview(IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private loadDefaultWorkspace$___twin___(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    return-void
.end method

.method private resetDatabaseIfNeeded()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->close()V

    :cond_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/LauncherProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/LauncherProvider$2;-><init>(Lcom/miui/home/launcher/LauncherProvider;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    monitor-enter p1

    .line 685
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "runOnUiThread"

    .line 687
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string v0, "safelyDeleteFromDB from db fail"

    const/4 v1, 0x0

    const-string v2, "Launcher.LauncherProvider"

    if-nez p0, :cond_0

    const-string p0, "safelyDeleteFromDB, db=null, return"

    .line 331
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 337
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 341
    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 339
    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static final safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const-string v0, "exec sql fail"

    const-string v1, "Launcher.LauncherProvider"

    if-nez p0, :cond_0

    return-void

    .line 319
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 323
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 321
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-string v0, "insert to db fail"

    const-string v1, "Launcher.LauncherProvider"

    const-wide/16 v2, -0x1

    if-nez p0, :cond_0

    return-wide v2

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 374
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 372
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v2
.end method

.method public static final safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string v0, "safelyUpdateDatabase db fail"

    const-string v1, "Launcher.LauncherProvider"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 355
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;)Z
    .locals 6

    .line 717
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 718
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v0, -0x64

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "container"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;III)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :try_start_1
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 452
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :try_start_2
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    .line 455
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 459
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 457
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 458
    throw p0

    :catchall_1
    move-exception p0

    .line 459
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string v1, "applyBatch to db fail"

    .line 465
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-object v0

    :catch_1
    move-exception p0

    .line 462
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .line 266
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
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

    .line 272
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    :try_start_3
    array-length p1, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_3

    .line 278
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v4

    invoke-static {p0, v5, v6, v7}, Lcom/miui/home/launcher/LauncherProvider;->insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 282
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_3
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 282
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    array-length p0, p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return p0

    :catchall_0
    move-exception p1

    .line 282
    :try_start_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 283
    throw p1
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 286
    :try_start_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 287
    monitor-exit v0

    return v1

    .line 289
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherProvider call method ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dumpDefaultWorkspace"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V

    :cond_0
    const-string v0, "isInRecommendFolder"

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "isInSysToolFolder"

    const-string v4, "result_boolean"

    const/4 v5, 0x0

    if-nez v2, :cond_11

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "setLockWallpaperAuthority"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "lock_wallpaper_provider_authority"

    invoke-static {p1, p3, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set authority "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider;->DEFAULT_LOCK_WALLPAPER_PROVIDER_PKG:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 549
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 548
    invoke-static {p0, p2}, Lcom/miui/home/launcher/WallpaperUtils;->setProviderClosedByUser(Landroid/content/Context;Z)V

    .line 551
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 552
    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_3
    const-string v0, "setLockWallpaperUpdateMinute"

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 556
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 555
    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperUpdateMinute(Landroid/content/Context;I)Z

    move-result p0

    .line 557
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 558
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_4
    const-string p2, "getLockScreenPath"

    .line 560
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 561
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_lock_wallpaper_path"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 563
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "result_string"

    .line 564
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string p2, "getLockWallpaperInfo"

    .line 567
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "currentWallpaperInfo"

    invoke-static {p0, p1, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 570
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "result_json"

    .line 571
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_6
    const-string p2, "getHomePreview"

    .line 574
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 575
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/LauncherProvider;->getHomePreView(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p2, "getLockScreenPreview"

    .line 576
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string/jumbo p1, "wallpaperColorMode"

    .line 577
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 578
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 580
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p3

    .line 581
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 579
    invoke-static {p3, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_8

    return-object v5

    .line 585
    :cond_8
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/LauncherProvider$1;-><init>(Lcom/miui/home/launcher/LauncherProvider;Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherProvider;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 594
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 595
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/LauncherProvider;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const-string p2, "result_bitmap"

    .line 596
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_9
    const-string p2, "getUsedClockGadgetTypeList"

    .line 598
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 599
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 600
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p0

    .line 601
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 603
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getClockTypeFromGadgetId(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 605
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    const-string p0, "result_string_arraylist"

    .line 608
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    :cond_c
    const-string p2, "android.provider.Settings.System.putString"

    .line 610
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 611
    invoke-static {p3}, Lcom/miui/home/launcher/LauncherSettings$Settings;->putSystemSettings(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p2, "get_header_image"

    .line 612
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "images/assistant/croped_header_background.png"

    if-eqz p3, :cond_f

    .line 613
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 616
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 621
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.miui.home.fileprovider"

    invoke-static {p0, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "com.miui.personalassistant"

    const/4 v2, 0x1

    .line 622
    invoke-virtual {p3, v0, p0, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p3, "pa_header_image"

    .line 623
    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 625
    invoke-static {v1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p1

    :cond_f
    const-string p2, "delete_header_image"

    .line 628
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 630
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 632
    invoke-static {v1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_2
    return-object v5

    :cond_11
    :goto_3
    const/4 p2, 0x0

    const-string v1, "componentName"

    .line 524
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 525
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 526
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 527
    invoke-static {p0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v6, -0x1

    cmp-long p3, v1, v6

    if-eqz p3, :cond_14

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const-string v5, "com.miui.home:string/default_folder_title_recommend"

    goto :goto_4

    .line 532
    :cond_12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string v5, "com.miui.home:string/new_default_folder_title_tools"

    .line 535
    :cond_13
    :goto_4
    invoke-static {p0, v1, v2, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result p2

    .line 538
    :cond_14
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 539
    invoke-virtual {p0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public createdFirstTime()Z
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createdFirstTime()Z

    move-result p0

    return p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 294
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "delete, isRestoring, return"

    .line 295
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "delete, !isReady, return"

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 304
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 306
    iget-object p1, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :try_start_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "delete, error"

    .line 309
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    monitor-exit v0

    return v1

    .line 312
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public deleteItemIfInSysToolFolder(Ljava/lang/String;)V
    .locals 4

    .line 472
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 473
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-string p1, "com.miui.home:string/new_default_folder_title_tools"

    .line 474
    invoke-static {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 476
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "favorites"

    const-string v1, "_id=?"

    .line 475
    invoke-static {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 153
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    const-string p3, "--proto"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p2, "dump"

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 158
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 159
    array-length p2, p0

    if-lez p2, :cond_0

    .line 160
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 161
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public generateNewId()J
    .locals 2

    .line 693
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 187
    new-instance p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vnd.android.cursor.item/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
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

    .line 240
    :cond_1
    :try_start_2
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 241
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v3, "favorites"

    .line 242
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "screen"

    .line 244
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "container"

    .line 245
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 247
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    .line 251
    :cond_3
    :try_start_4
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {p0, v2, v1, p2}, Lcom/miui/home/launcher/LauncherProvider;->insertDatabaseAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_4

    .line 253
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v1

    .line 255
    :cond_4
    :try_start_6
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    :try_start_7
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 258
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 259
    monitor-exit v0

    return-object v1

    .line 261
    :goto_0
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public isReady()Z
    .locals 0

    .line 697
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseReady()Z

    move-result p0

    return p0
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$_lancet;->com_miui_home_launcher_debug_LauncherLoadTrace_loadDefaultWorkspace(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    return-void
.end method

.method public mergeLayoutData()V
    .locals 4

    .line 732
    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;

    invoke-direct {v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;-><init>()V

    .line 733
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$100(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$200(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mergeLayoutData(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)V

    .line 734
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$300(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider;->resetDatabaseIfNeeded()V

    .line 173
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 198
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "preference"

    .line 206
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 207
    new-instance p1, Landroid/database/MatrixCursor;

    const-string/jumbo p3, "value"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p3, 0x0

    move p4, p3

    .line 208
    :goto_0
    array-length p5, p2

    if-ge p4, p5, :cond_1

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    .line 209
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

    .line 211
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 213
    :cond_2
    :try_start_2
    new-instance p3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {p3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 214
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 216
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 217
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    move-object v4, p2

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "query"

    .line 225
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 227
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "query"

    .line 222
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    monitor-exit v0

    return-object v1

    .line 229
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public queryFolderSize(J)I
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result p0

    return p0
.end method

.method public queryIdByLabel(Ljava/lang/String;)J
    .locals 0

    .line 713
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryIdByTitle(Ljava/lang/String;)J
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryInstalledComponentId(Ljava/lang/String;)J
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryPackageNameByItemType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2984
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$400(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 398
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "preference"

    .line 399
    iget-object p3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 400
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updatePreferenceValue(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p3

    .line 403
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p4, "packages"

    .line 406
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v3, 0x0

    if-eqz p4, :cond_3

    const-string p3, "name"

    .line 407
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 408
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "delete"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "profileId"

    .line 409
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3, v4, v5}, Lcom/miui/home/launcher/ScreenUtils;->removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v3

    :cond_3
    :try_start_4
    const-string p0, "screens"

    .line 413
    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "screenOrder"

    .line 414
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5

    const-string p1, "Launcher.LauncherProvider"

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid resorder request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_4

    const-string p0, "null"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v3

    .line 421
    :cond_5
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string p2, ","

    .line 423
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move p2, v3

    move p4, p2

    .line 424
    :goto_1
    array-length v4, p0

    if-ge p2, v4, :cond_6

    .line 425
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "screenOrder"

    .line 426
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    iget-object v5, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v6, "_id=?"

    new-array v7, p3, [Ljava/lang/String;

    aget-object v8, p0, p2

    aput-object v8, v7, v3

    invoke-static {p1, v5, v4, v6, v7}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr p4, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 429
    :cond_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 431
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 433
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return p4

    :catchall_0
    move-exception p0

    .line 431
    :try_start_a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 432
    throw p0

    .line 436
    :cond_7
    iget-object p0, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p4, v2, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-static {p1, p0, p2, p3, p4}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v0

    return p0

    .line 397
    :cond_8
    :goto_2
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update, error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v0

    return v1

    .line 441
    :goto_3
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0
.end method
