.class Lcom/xiaomi/onetrack/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/onetrack/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/f;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/onetrack/b/j;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v3, "app_id=?"

    .line 128
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/f;->a(Lcom/xiaomi/onetrack/b/f;)Lcom/xiaomi/onetrack/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events_cloud"

    const/4 v2, 0x1

    .line 129
    new-array v4, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "app_id"

    .line 132
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cloud_data"

    .line 133
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data_hash"

    .line 134
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "timestamp"

    .line 135
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    new-instance v5, Lcom/xiaomi/onetrack/b/j;

    invoke-direct {v5}, Lcom/xiaomi/onetrack/b/j;-><init>()V

    .line 139
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/xiaomi/onetrack/b/j;->a:Ljava/lang/String;

    .line 140
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v5, Lcom/xiaomi/onetrack/b/j;->d:Lorg/json/JSONObject;

    .line 144
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/xiaomi/onetrack/b/j;->c:Ljava/lang/String;

    .line 145
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/xiaomi/onetrack/b/j;->b:J

    return-object v5

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/i;->a()Lcom/xiaomi/onetrack/b/j;

    move-result-object v0

    return-object v0
.end method
