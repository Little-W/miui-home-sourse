.class Lcom/xiaomi/onetrack/h/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/h/a/a/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/h/a/a/g;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/h;->a:Lcom/xiaomi/onetrack/h/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/h;->a:Lcom/xiaomi/onetrack/h/a/a/g;

    iget-object p1, p1, Lcom/xiaomi/onetrack/h/a/a/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
