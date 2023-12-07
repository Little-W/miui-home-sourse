.class public final Lio/requery/android/database/sqlite/SQLiteStatement;
.super Lio/requery/android/database/sqlite/SQLiteProgram;

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteProgram;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public executeInsert()J
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForLong()J
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->acquireReference()V

    :try_start_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->onCorruption()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteProgram: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
