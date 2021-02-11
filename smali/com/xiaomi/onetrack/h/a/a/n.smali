.class Lcom/xiaomi/onetrack/h/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/h/a/a/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/h/a/a/m;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/n;->a:Lcom/xiaomi/onetrack/h/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 105
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/n;->a:Lcom/xiaomi/onetrack/h/a/a/m;

    iget-object p1, p1, Lcom/xiaomi/onetrack/h/a/a/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/n;->a:Lcom/xiaomi/onetrack/h/a/a/m;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/onetrack/h/a/a/m;->a:Lcom/xiaomi/onetrack/h/a/b/e;

    return-void
.end method
