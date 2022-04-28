.class public Lio/branch/search/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/branch/search/d3;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/branch/search/s1;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lio/branch/search/d3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/branch/search/s1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lio/branch/search/s1;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/s1;->b:Ljava/lang/String;

    if-nez p4, :cond_1

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    :cond_1
    iput-object p4, p0, Lio/branch/search/s1;->c:Ljava/util/Set;

    sget-object p2, Lio/branch/search/d3;->l:Lio/branch/search/d3;

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p2, Lio/branch/search/s1$a;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/branch/search/s1$a;-><init>(Lio/branch/search/s1;Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    iput-object p3, p0, Lio/branch/search/s1;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/v1;)Ljava/lang/Exception;
    .locals 3

    sget-object v0, Lio/branch/search/s1;->f:Ljava/util/Map;

    iget-object v1, p0, Lio/branch/search/s1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    invoke-interface {p1, v2}, Lio/branch/search/v1;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string v2, "BRANCH_RawSQLiteDB.update"

    invoke-static {v2, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/p1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/branch/search/p1<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "BRANCH_RawSQLiteDB"

    const-string v2, "doQuery"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Got DB"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "Create cursor"

    invoke-virtual {v0, p2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p3, p1}, Lio/branch/search/p1;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p2, "Iter over rows"

    invoke-virtual {v0, p2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    invoke-interface {p3, v1}, Lio/branch/search/p1;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/s1;->a()V

    iget-object v0, p0, Lio/branch/search/s1;->e:Landroid/content/Context;

    iget-object v1, p0, Lio/branch/search/s1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/s1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/branch/search/d3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s1;->c:Ljava/util/Set;

    return-object v0
.end method
