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

    .line 130
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/onetrack/b/l;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "app_id=?"

    .line 136
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events_cloud"

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 137
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "app_id"

    .line 140
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cloud_data"

    .line 141
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "data_hash"

    .line 142
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "timestamp"

    .line 143
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    new-instance v6, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v6}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 147
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 148
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v6, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 152
    :cond_0
    iget-object v2, v6, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/xiaomi/onetrack/b/h;->a(Lorg/json/JSONObject;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v6, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 153
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 154
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/xiaomi/onetrack/b/l;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 162
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ConfigDbManager"

    const-string v1, "getConfig  cursor.close"

    .line 164
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string v3, "ConfigDbManager"

    .line 158
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 162
    :goto_2
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    const-string v1, "ConfigDbManager"

    const-string v2, "getConfig  cursor.close"

    .line 164
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 162
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    const-string v1, "ConfigDbManager"

    const-string v2, "getConfig  cursor.close"

    .line 164
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    :goto_5
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/k;->a()Lcom/xiaomi/onetrack/b/l;

    move-result-object v0

    return-object v0
.end method
