.class final Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    .line 1375
    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteConnection$1;)V
    .locals 0

    .line 1370
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 2

    .line 1447
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    :cond_0
    return p1
.end method

.method private getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 1477
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    aget-object p0, p0, v0

    .line 1478
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 1

    .line 1458
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1462
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_1

    const-string p0, ", "

    .line 1465
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SQLiteConnection"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2

    .line 1471
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 p0, v0, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    .line 1380
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x14

    .line 1382
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1384
    new-instance v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;-><init>(Lio/requery/android/database/sqlite/SQLiteConnection$1;)V

    .line 1385
    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    aput-object v2, v3, v1

    goto :goto_0

    .line 1387
    :cond_0
    iput-boolean v4, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1388
    iput-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1389
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1390
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1393
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1394
    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1395
    iput-object p2, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 1397
    iget-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 1398
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    .line 1400
    :cond_2
    iget-object p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1402
    :goto_1
    array-length p1, p3

    :goto_2
    if-ge v4, p1, :cond_4

    aget-object p2, p3, v4

    if-eqz p2, :cond_3

    .line 1403
    instance-of v3, p2, [B

    if-eqz v3, :cond_3

    .line 1405
    iget-object p2, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->access$500()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1407
    :cond_3
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1411
    :cond_4
    invoke-direct {p0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result p1

    iput p1, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1412
    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1413
    iget p0, v2, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 3

    .line 1482
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object p0, v1, p0

    if-eqz p0, :cond_0

    .line 1484
    iget-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v1, :cond_0

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1486
    invoke-virtual {p0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1489
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 6

    .line 1494
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Most recently executed operations:"

    .line 1495
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1496
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1497
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 1501
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    .line 1502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {v2}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->access$600(Lio/requery/android/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    .line 1504
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {v2, v4, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1514
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_2
    const-string p0, "    <none>"

    .line 1517
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1519
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public endOperation(I)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1428
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1429
    invoke-direct {p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1431
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

.method public endOperationDeferLog(I)Z
    .locals 1

    .line 1435
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1436
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 1

    .line 1418
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-direct {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1421
    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1423
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

.method public logOperation(ILjava/lang/String;)V
    .locals 1

    .line 1441
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lio/requery/android/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1442
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1443
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
