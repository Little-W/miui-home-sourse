.class public Lcom/xiaomi/onetrack/a/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorUploadTimer"

.field private static volatile b:Lcom/xiaomi/onetrack/a/c/b;


# instance fields
.field private c:Lcom/xiaomi/onetrack/a/c/b$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "onetrack_ad_monitor_uploader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/c/b$a;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/a/c/b;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/xiaomi/onetrack/a/c/b;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/a/c/b;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 44
    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(Lcom/xiaomi/onetrack/a/c/b$a;IJ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/a/c/b$a;->a(I)V

    return-void
.end method
