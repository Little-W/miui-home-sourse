.class Lcom/xiaomi/onetrack/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/b/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/b;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/e;->a:Lcom/xiaomi/onetrack/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 280
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/e;->a:Lcom/xiaomi/onetrack/b/b;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/b;->a(Lcom/xiaomi/onetrack/b/b;)Lcom/xiaomi/onetrack/b/b$a;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/e;->a:Lcom/xiaomi/onetrack/b/b;

    invoke-static {v2}, Lcom/xiaomi/onetrack/b/b;->a(Lcom/xiaomi/onetrack/b/b;)Lcom/xiaomi/onetrack/b/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/b/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x6

    .line 286
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v11, 0x0

    .line 288
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 289
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 290
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 291
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v12, "timestamp < ? "

    const/4 v13, 0x1

    .line 294
    new-array v14, v13, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v11

    const-string v4, "events"

    const-string v3, "timestamp"

    .line 295
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp ASC"

    move-object v3, v2

    move-object v6, v12

    move-object v7, v14

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "events"

    .line 305
    invoke-virtual {v2, v3, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "EventManager"

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** deleted obsolete item count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/b;->a()Lcom/xiaomi/onetrack/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/b/b;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    move v11, v13

    .line 310
    :cond_1
    invoke-static {v11}, Lcom/xiaomi/onetrack/a/l;->a(Z)V

    const-string v4, "EventManager"

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after delete obsolete record remains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 316
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "EventManager"

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove obsolete events failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 319
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_2
    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_3
    throw v2

    :catchall_1
    move-exception v1

    .line 319
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
