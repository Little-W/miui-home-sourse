.class public Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;
.super Lio/branch/search/internal/sqlite/SQLiteDBInner;


# instance fields
.field public volatile a:Lio/branch/search/j3;

.field public volatile b:Lio/branch/search/m3;

.field public volatile c:Lio/branch/search/z3;

.field public volatile d:Lio/branch/search/x3;

.field public volatile e:Lio/branch/search/h4;

.field public volatile f:Lio/branch/search/k4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method public static synthetic a(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static synthetic c(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lio/branch/search/z3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/z3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/z3;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/z3;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/a4;

    invoke-direct {v0, p0}, Lio/branch/search/a4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/z3;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/z3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lio/branch/search/h4;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/h4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/h4;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/h4;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/i4;

    invoke-direct {v0, p0}, Lio/branch/search/i4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/h4;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/h4;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lio/branch/search/k4;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/k4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/k4;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/k4;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/l4;

    invoke-direct {v0, p0}, Lio/branch/search/l4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/k4;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/k4;

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
    .locals 11

    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "local_packages"

    const-string v2, "local_entities"

    const-string v3, "app_clicks"

    const-string v4, "search_clicks"

    const-string v5, "app_usage_event"

    const-string v6, "app_usage_stats"

    const-string v7, "unified_virtual_requests"

    const-string v8, "unified_entities"

    const-string v9, "unified_impressions"

    const-string v10, "tracking_status_history"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl$a;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl$a;-><init>(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;I)V

    const-string p0, "cbfb6953a359e26423beb2c791cb81c2"

    const-string v2, "afa1805974ed37acf2cd3054e76ea220"

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

.method public d()Lio/branch/search/j3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/j3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/j3;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/j3;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/k3;

    invoke-direct {v0, p0}, Lio/branch/search/k3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/j3;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/j3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lio/branch/search/m3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/m3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/m3;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/m3;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/n3;

    invoke-direct {v0, p0}, Lio/branch/search/n3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/m3;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/m3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lio/branch/search/x3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/x3;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/x3;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/x3;

    if-nez v0, :cond_1

    new-instance v0, Lio/branch/search/y3;

    invoke-direct {v0, p0}, Lio/branch/search/y3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/x3;

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/x3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
