.class final Lcom/xiaomi/onetrack/h/f$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/h/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x7530


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/h/f$a$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/h/g;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Lcom/xiaomi/onetrack/h/f$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/f$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 796
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/h/f$a$a;->b:Z

    if-nez v0, :cond_2

    .line 797
    monitor-enter p0

    const-wide/16 v0, 0x7530

    .line 798
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 799
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/f$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 802
    monitor-exit p0

    goto :goto_0

    .line 800
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 802
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 804
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/f$a$a;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/h/f$a$a;->c:Landroid/os/IBinder;

    .line 783
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 784
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x1

    .line 788
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/h/f$a$a;->b:Z

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lcom/xiaomi/onetrack/h/f$a$a;->c:Landroid/os/IBinder;

    return-void
.end method
