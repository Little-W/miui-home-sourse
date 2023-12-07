.class public Lcom/xiaomi/onetrack/api/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/ar$b;,
        Lcom/xiaomi/onetrack/api/ar$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.analytics"

.field public static final b:Ljava/lang/String; = "com.miui.analytics.onetrack.OneTrackService"

.field private static final c:Ljava/lang/String; = "ServiceConnectManager"

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static volatile k:Lcom/xiaomi/onetrack/api/ar; = null

.field private static l:Ljava/lang/String; = "onetrack_service_connect"


# instance fields
.field private volatile d:Lcom/miui/analytics/ITrack;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Landroid/content/Context;

.field private j:Lcom/xiaomi/onetrack/api/ar$b;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Landroid/content/ServiceConnection;

.field private o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/ar$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;-><init>(Lcom/xiaomi/onetrack/api/ar;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/onetrack/api/ar;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/xiaomi/onetrack/api/ar$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/onetrack/api/ar$b;-><init>(Lcom/xiaomi/onetrack/api/ar;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/api/ar$b;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ar;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/onetrack/api/ar;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/api/ar;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/ar;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/api/ar;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/onetrack/api/ar;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/ar;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

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

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->g()V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/ar;)Lcom/miui/analytics/ITrack;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->e()V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureService mConnecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsBindSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAnalytics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private e()V
    .locals 6

    const-string v0, "ServiceConnectManager"

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.miui.analytics"

    const-string v5, "com.miui.analytics.onetrack.OneTrackService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbindService e1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService:  mConnecting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bindResult:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService e1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/api/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/ar;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private f()V
    .locals 4

    const-string v0, "ServiceConnectManager"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ar;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unBindService Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindService  mIsBindSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/ar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/api/ar$a;

    invoke-interface {v0}, Lcom/xiaomi/onetrack/api/ar$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/xiaomi/onetrack/api/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->f()V

    return-void
.end method

.method static synthetic i(Lcom/xiaomi/onetrack/api/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->d()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/api/ar$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/ar$b;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/api/ar$b;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/api/ar$a;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceConnectManager"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCacheData: appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_eventName:_data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1, p2, p3}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackCacheData error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p3, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ar;->f()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "track throwable: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/ar$b;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return v1
.end method
