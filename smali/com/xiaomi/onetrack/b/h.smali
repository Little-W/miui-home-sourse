.class Lcom/xiaomi/onetrack/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/f;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/f;->a(Lcom/xiaomi/onetrack/b/f;)Lcom/xiaomi/onetrack/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "app_id=?"

    const-string v2, "events_cloud"

    const/4 v3, 0x1

    .line 105
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/onetrack/b/h;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
