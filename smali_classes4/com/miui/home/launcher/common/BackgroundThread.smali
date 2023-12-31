.class public final Lcom/miui/home/launcher/common/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/BackgroundThread$BackgroundThreadFactory;,
        Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sUnsafetyHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

.field private static sUnsafetySingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "Launcher.Background"

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    new-instance p0, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundThreadFactory;

    const-string v0, "Launcher.Background-pool-"

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/common/BackgroundThread;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance p0, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundThreadFactory;

    const-string v0, "Background-unsafety-pool-"

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/common/BackgroundThread;->sUnsafetySingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/common/BackgroundThread;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/common/BackgroundThread;->sUnsafetySingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 4

    .line 39
    const-class v0, Lcom/miui/home/launcher/common/BackgroundThread;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/BackgroundThread;->sHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/miui/home/launcher/common/BackgroundThread;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/BackgroundThread;-><init>()V

    .line 42
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->start()V

    .line 43
    new-instance v2, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;-><init>(Landroid/os/Looper;Z)V

    sput-object v2, Lcom/miui/home/launcher/common/BackgroundThread;->sHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    .line 45
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/common/BackgroundThread;->sHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getUnsafetyHandler()Landroid/os/Handler;
    .locals 4

    .line 57
    const-class v0, Lcom/miui/home/launcher/common/BackgroundThread;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/BackgroundThread;->sUnsafetyHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/miui/home/launcher/common/BackgroundThread;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/BackgroundThread;-><init>()V

    .line 60
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->start()V

    .line 61
    new-instance v2, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;-><init>(Landroid/os/Looper;Z)V

    sput-object v2, Lcom/miui/home/launcher/common/BackgroundThread;->sUnsafetyHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    .line 63
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/common/BackgroundThread;->sUnsafetyHandler:Lcom/miui/home/launcher/common/BackgroundThread$BackgroundHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
