.class public final Lio/requery/android/database/sqlite/SQLiteDatabase;
.super Lio/requery/android/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteDatabase$Function;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x6

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final LIBRARY_NAME:Ljava/lang/String; = "sqlite3x"

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final OPEN_CREATE:I = 0x4

.field public static final OPEN_FULLMUTEX:I = 0x10000

.field public static final OPEN_NOMUTEX:I = 0x8000

.field public static final OPEN_PRIVATECACHE:I = 0x40000

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x2

.field public static final OPEN_SHAREDCACHE:I = 0x20000

.field public static final OPEN_URI:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

.field private final mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

.field private final mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/requery/android/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "sqlite3x"

    .line 92
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    .line 217
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V
    .locals 1

    .line 277
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    .line 107
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$1;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 140
    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    .line 278
    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance p3, Lio/requery/android/database/DefaultDatabaseErrorHandler;

    invoke-direct {p3}, Lio/requery/android/database/DefaultDatabaseErrorHandler;-><init>()V

    :goto_0
    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    .line 280
    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    return-void
.end method

.method static synthetic access$000(Lio/requery/android/database/sqlite/SQLiteDatabase;)Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    .line 85
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V
    .locals 3

    .line 535
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 537
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    .line 537
    invoke-virtual {v0, p2, p1, v1, v2}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 541
    throw p1
.end method

.method public static blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 2601
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2602
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 2285
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2286
    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    .line 2287
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 2289
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 2

    const-string v0, ":memory:"

    const/4 v1, 0x6

    .line 873
    invoke-static {v0, p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 759
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 760
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 761
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 762
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 764
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-mj"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 767
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteDatabase$2;

    invoke-direct {v2, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 774
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 755
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dispose(Z)V
    .locals 3

    .line 300
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 303
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    .line 305
    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->close()V

    .line 308
    :cond_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v2, 0x0

    .line 309
    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    .line 313
    sget-object p1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 314
    :try_start_1
    sget-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 318
    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 315
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 310
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 2

    .line 2311
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2312
    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 2313
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2314
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    .line 2316
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 2

    .line 2305
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 2306
    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static ensureFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SQLiteDatabase"

    .line 831
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 834
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    .line 837
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t mkdirs "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 840
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t ensure file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1920
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1922
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1924
    :try_start_1
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1926
    :try_start_2
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1929
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1926
    :try_start_3
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1927
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1929
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1930
    throw p1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1023
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x20

    .line 1025
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2c

    .line 1026
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_1

    .line 1029
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v1, :cond_3

    if-lt v1, v0, :cond_2

    if-gez v0, :cond_3

    .line 1031
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 1035
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid tables"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .line 2293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2294
    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 2295
    :try_start_0
    sget-object v2, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2296
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .line 2277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteDatabase;

    .line 2279
    invoke-direct {v2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hasCodec()Z
    .locals 1

    .line 2489
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->hasCodec()Z

    move-result v0

    return v0
.end method

.method private static isMainThread()Z
    .locals 2

    .line 400
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadOnlyLocked()Z
    .locals 1

    .line 1961
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 0

    .line 2552
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private open()V
    .locals 3

    .line 813
    :try_start_0
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->ensureFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 818
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 820
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 821
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->close()V

    .line 826
    throw v0
.end method

.method public static openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 719
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    .line 720
    invoke-direct {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    .line 668
    invoke-static {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 693
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    .line 694
    new-instance p0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    .line 695
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object p0
.end method

.method private openInner()V
    .locals 3

    .line 849
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->open(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 852
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/CloseGuard;->open(Ljava/lang/String;)V

    .line 853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 855
    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 856
    :try_start_1
    sget-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 853
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 728
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 735
    invoke-static {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x6

    .line 743
    invoke-static {p0, p1, v0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static releaseMemory()I
    .locals 1

    .line 330
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2574
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    .line 2417
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    return-void

    .line 2418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not open."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 2

    .line 644
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 646
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroidx/core/os/CancellationSignal;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 649
    throw p1
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;

    invoke-direct {v0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 891
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 892
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 894
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :try_start_1
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    :try_start_2
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    .line 898
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 899
    throw p2

    :catchall_0
    move-exception p0

    .line 901
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;)V
    .locals 1

    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    return-void
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V
    .locals 1

    .line 929
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    .line 931
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 932
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 934
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :try_start_1
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    :try_start_2
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    .line 938
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 939
    throw p2

    :catchall_0
    move-exception p0

    .line 941
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public beginTransaction()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 427
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionDeferred()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 459
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 452
    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x2

    .line 501
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerDeferred(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 531
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public blobFileDescriptorForQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 2585
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 2587
    :try_start_0
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2589
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2590
    throw p1
.end method

.method public bridge synthetic compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1057
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1060
    throw p1
.end method

.method createSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .locals 1

    .line 374
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 376
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteSession;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteSession;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 377
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3

    .line 1692
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1694
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1697
    :try_start_1
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    :try_start_2
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1702
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1699
    :try_start_3
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1700
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1702
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1703
    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1663
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1665
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1668
    :try_start_1
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    :try_start_2
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1673
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    .line 1670
    :try_start_3
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1671
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1673
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1674
    throw p1
.end method

.method public disableWriteAheadLogging()V
    .locals 5

    .line 2238
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2239
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2241
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2242
    monitor-exit v0

    return-void

    .line 2245
    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2252
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 2249
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2250
    throw v1

    :catchall_0
    move-exception p0

    .line 2252
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method enableLocalizedCollators()V
    .locals 0

    .line 2493
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->enableLocalizedCollators()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 5

    .line 2198
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2201
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2202
    monitor-exit v0

    return v3

    .line 2205
    :cond_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2208
    monitor-exit v0

    return v4

    .line 2211
    :cond_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "SQLiteDatabase"

    const-string v1, "can\'t enable WAL for memory databases."

    .line 2212
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    monitor-exit v0

    return v4

    .line 2216
    :cond_2
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v4

    iput v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2218
    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    :try_start_2
    monitor-exit v0

    return v3

    :catch_0
    move-exception v1

    .line 2220
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2221
    throw v1

    :catchall_0
    move-exception p0

    .line 2223
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public endTransaction()V
    .locals 2

    .line 550
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransaction(Landroidx/core/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 555
    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1865
    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1916
    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1914
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty bindArgs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 287
    :try_start_0
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 290
    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2330
    :try_start_0
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2331
    monitor-exit v1

    return-object v3

    .line 2334
    :cond_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2335
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "pragma database_list;"

    .line 2341
    invoke-virtual {p0, v1, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v3

    .line 2342
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2348
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 2352
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2357
    :cond_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 2352
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2354
    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 2357
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2358
    throw v0

    :catchall_2
    move-exception p0

    .line 2335
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method getLabel()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaximumSize()J
    .locals 4

    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    .line 971
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 972
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    .line 1001
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 2006
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_0
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2008
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 391
    :goto_0
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    return p0
.end method

.method getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .locals 0

    .line 369
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/requery/android/database/sqlite/SQLiteSession;

    return-object p0
.end method

.method public getVersion()I
    .locals 2

    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method public inTransaction()Z
    .locals 1

    .line 584
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 589
    throw v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1582
    invoke-virtual {p0, p1, v0, p3, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x0

    .line 1490
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 1492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error inserting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteDatabase"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1516
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 5

    .line 1608
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1610
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT"

    .line 1611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p4, v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " INTO "

    .line 1613
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    .line 1615
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 1618
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1619
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    const/16 v2, 0x29

    if-lez v1, :cond_4

    .line 1621
    new-array p1, v1, [Ljava/lang/Object;

    .line 1623
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, p4

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez p3, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1624
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p3, 0x1

    .line 1626
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, p3

    move p3, v4

    goto :goto_1

    .line 1628
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " VALUES ("

    .line 1629
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge p4, v1, :cond_5

    if-lez p4, :cond_3

    const-string p2, ",?"

    goto :goto_4

    :cond_3
    const-string p2, "?"

    .line 1631
    :goto_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 1634
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") VALUES (NULL"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1638
    new-instance p2, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1640
    :try_start_1
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    :try_start_2
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1645
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-wide p3

    :catchall_0
    move-exception p1

    .line 1642
    :try_start_3
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1643
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1645
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1646
    throw p1
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 6

    .line 2376
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2380
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2382
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "databaselist for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 2387
    :catch_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    new-instance v1, Landroid/util/Pair;

    const-string v2, "main"

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2391
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 2394
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".integrity_check(1);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2395
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    .line 2396
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "SQLiteDatabase"

    .line 2398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA integrity_check on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " returned: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 2402
    :try_start_3
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2406
    :cond_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :cond_3
    if-eqz v2, :cond_1

    .line 2402
    :try_start_4
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2403
    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2406
    :cond_5
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    const/4 p0, 0x1

    return p0

    :goto_2
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2407
    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 606
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 611
    throw v0
.end method

.method public isInMemoryDatabase()Z
    .locals 1

    .line 1971
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_0
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1973
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isOpen()Z
    .locals 1

    .line 1983
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1984
    :try_start_0
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1985
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1955
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1957
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 2

    .line 2265
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2266
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2268
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public longForQuery(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    .line 2539
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 2541
    :try_start_0
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2543
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2544
    throw p1
.end method

.method public needUpgrade(I)Z
    .locals 0

    .line 1996
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V

    return-void
.end method

.method onCorruption()V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x124fc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 348
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Lio/requery/android/database/DatabaseErrorHandler;->onCorruption(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 1342
    check-cast v0, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    if-eqz p2, :cond_0

    .line 1359
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 1360
    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$3;

    invoke-direct {v1, p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase$3;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p2, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1366
    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 1368
    check-cast p2, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .line 1383
    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$4;

    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase$4;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 1394
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    new-array v3, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 1383
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1316
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1330
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1265
    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1303
    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1097
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1138
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryNumEntries(Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 2502
    invoke-virtual {p0, p1, v0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 2514
    invoke-virtual {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .line 2530
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2531
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select count(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1178
    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9

    .line 1221
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1223
    :try_start_0
    invoke-static/range {v1 .. v8}, Lio/requery/android/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1227
    invoke-static {p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v5, p6

    move-object/from16 v7, p11

    .line 1226
    invoke-virtual/range {v2 .. v7}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1230
    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1407
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 1424
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1441
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 1461
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1463
    :try_start_0
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1465
    :cond_0
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    :goto_0
    invoke-interface {v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->query(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1469
    throw p1
.end method

.method public reopenReadWrite()V
    .locals 4

    .line 792
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 795
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    monitor-exit v0

    return-void

    .line 800
    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 801
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :try_start_1
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    .line 805
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 806
    throw v2

    :catchall_0
    move-exception p0

    .line 808
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x5

    .line 1536
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 1539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error inserting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteDatabase"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1562
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 3

    .line 2105
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2106
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2108
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2109
    monitor-exit v0

    return-void

    .line 2112
    :cond_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    :try_start_1
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2119
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 2116
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2117
    throw v1

    :catchall_0
    move-exception p0

    .line 2119
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2026
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2027
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2029
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2030
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    :try_start_1
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2037
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 2034
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2035
    throw p1

    :catchall_0
    move-exception p0

    .line 2037
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 2023
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "locale must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 3

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2060
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2061
    :try_start_0
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2063
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2064
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    :try_start_1
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2071
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 2068
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2069
    throw p1

    :catchall_0
    move-exception p0

    .line 2071
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 2056
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "expected value between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumSize(J)J
    .locals 6

    .line 984
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    .line 985
    div-long v2, p1, v0

    .line 987
    rem-long/2addr p1, v0

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    .line 990
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PRAGMA max_page_count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public setPageSize(J)V
    .locals 2

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 569
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 574
    throw v0
.end method

.method public setVersion(I)V
    .locals 2

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public stringForQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2561
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 2563
    :try_start_0
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2565
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 2566
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    if-eqz p3, :cond_5

    .line 1740
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1744
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1746
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 1747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 1750
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p5, :cond_0

    move p2, p1

    goto :goto_0

    .line 1754
    :cond_0
    array-length p2, p5

    add-int/2addr p2, p1

    .line 1755
    :goto_0
    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1757
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1758
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 1760
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    .line 1761
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    move p3, p1

    :goto_3
    if-ge p3, p2, :cond_3

    sub-int v2, p3, p1

    .line 1765
    aget-object v2, p5, v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 1768
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " WHERE "

    .line 1769
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    :cond_4
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1775
    :try_start_1
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    :try_start_2
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1780
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p2

    :catchall_0
    move-exception p2

    .line 1777
    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1778
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1780
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1781
    throw p1

    .line 1741
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1720
    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 5

    if-eqz p2, :cond_5

    .line 1800
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1804
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1806
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 1807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p5, v1, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 1810
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p4, :cond_0

    move p5, p1

    goto :goto_0

    .line 1814
    :cond_0
    array-length p5, p4

    add-int/2addr p5, p1

    .line 1815
    :goto_0
    new-array v1, p5, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1817
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    const-string v4, ","

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 1818
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 1820
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    .line 1821
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    move p2, p1

    :goto_3
    if-ge p2, p5, :cond_3

    sub-int v2, p2, p1

    .line 1825
    aget-object v2, p4, v2

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1828
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " WHERE "

    .line 1829
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :cond_4
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1835
    :try_start_1
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    :try_start_2
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1840
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p2

    :catchall_0
    move-exception p2

    .line 1837
    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    .line 1838
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1840
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1841
    throw p1

    .line 1801
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public validateSql(Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V
    .locals 2

    .line 1944
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x1

    .line 1945
    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p0

    const/4 v1, 0x0

    .line 1944
    invoke-virtual {v0, p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V

    return-void
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    .line 624
    invoke-direct {p0, v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    const/4 v0, 0x1

    .line 640
    invoke-direct {p0, v0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result p0

    return p0
.end method
