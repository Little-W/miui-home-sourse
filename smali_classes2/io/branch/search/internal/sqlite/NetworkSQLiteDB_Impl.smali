.class public Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;
.super Lio/branch/search/internal/sqlite/NetworkSQLiteDB;
.source "SourceFile"


# instance fields
.field public volatile a:Lio/branch/search/f3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method public static synthetic a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static synthetic c(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lio/branch/search/f3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/f3;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/f3;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/g3;

    invoke-direct {v0, p0}, Lio/branch/search/g3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/f3;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/f3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "data_usage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;-><init>(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;I)V

    const-string p0, "d06293dca33f06a48d8f8079e016bed6"

    const-string v2, "64a5811d0582d0ce2cce915f424cf7c0"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method
