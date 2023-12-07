.class Lcom/xiaomi/onetrack/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/onetrack/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/onetrack/b/l;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getConfig  cursor.close"

    const-string v1, "ConfigDbManager"

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "app_id=?"

    iget-object v3, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events_cloud"

    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    aput-object p0, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "app_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cloud_data"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data_hash"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "timestamp"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v7}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    :cond_0
    iget-object v3, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/h;->a(Lorg/json/JSONObject;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v7, Lcom/xiaomi/onetrack/b/l;->b:J

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v7, Lcom/xiaomi/onetrack/b/l;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    goto :goto_4

    :catch_2
    move-exception v3

    move-object p0, v2

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    :goto_2
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v2

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz p0, :cond_4

    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_5
    throw v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/k;->a()Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    return-object p0
.end method
