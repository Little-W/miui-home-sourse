.class public Lcom/xiaomi/onetrack/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DbExecutor"

.field private static b:Ljava/lang/String; = "onetrack_db"

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 14
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/xiaomi/onetrack/c/b;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/c/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()V

    .line 28
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DbExecutor"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()V

    .line 37
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DbExecutor"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
