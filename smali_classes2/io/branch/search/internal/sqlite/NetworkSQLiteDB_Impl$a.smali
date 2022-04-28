.class public Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;I)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `data_usage` (`date` TEXT NOT NULL, `channel` TEXT NOT NULL, `connection_type` TEXT NOT NULL, `usage` INTEGER NOT NULL, PRIMARY KEY(`date`, `channel`, `connection_type`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"d06293dca33f06a48d8f8079e016bed6\")"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `data_usage`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v0}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->b(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v2}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->c(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v0, p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v0, p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->b(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v0}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->d(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->e(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;->a:Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;

    invoke-static {v2}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->f(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "date"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "channel"

    const-string v3, "TEXT"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "connection_type"

    const-string v3, "TEXT"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "connection_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "usage"

    const-string v3, "INTEGER"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "usage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v4, "data_usage"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "data_usage"

    invoke-static {p1, v0}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle data_usage(io.branch.search.internal.sqlite.DataUsage).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
