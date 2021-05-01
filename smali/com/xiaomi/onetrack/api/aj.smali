.class public Lcom/xiaomi/onetrack/api/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/aj$c;,
        Lcom/xiaomi/onetrack/api/aj$b;,
        Lcom/xiaomi/onetrack/api/aj$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.analytics"

.field public static final b:Ljava/lang/String; = "com.miui.analytics.onetrack.OneTrackService"

.field private static final c:Ljava/lang/String; = "ServiceConnectManager"

.field private static final i:I = 0x1


# instance fields
.field private d:Lcom/miui/analytics/ITrack;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/lang/Object;

.field private h:Landroid/content/Context;

.field private j:Lcom/xiaomi/onetrack/api/aj$c;

.field private k:Landroid/content/ServiceConnection;

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/aj$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->g:Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;-><init>(Lcom/xiaomi/onetrack/api/aj;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    .line 192
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/xiaomi/onetrack/api/aj$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/api/aj$c;-><init>(Lcom/xiaomi/onetrack/api/aj;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->j:Lcom/xiaomi/onetrack/api/aj$c;

    .line 49
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/onetrack/api/aj;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaomi/onetrack/api/aj$a;->a()Lcom/xiaomi/onetrack/api/aj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/aj;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->c()V

    goto :goto_1

    :cond_1
    const-string v0, "ServiceConnectManager"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureService mConnecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBindSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAnalytics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c()V
    .locals 5

    const/4 v0, 0x0

    .line 96
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    const-string v2, "ServiceConnectManager"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService:  mConnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bindResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 108
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "ServiceConnectManager"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService e1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "ServiceConnectManager"

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private d()V
    .locals 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "ServiceConnectManager"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindService  mIsBindSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceConnectManager"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unBindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/aj;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->e()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/api/aj;)Lcom/miui/analytics/ITrack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/api/aj$b;

    .line 202
    invoke-interface {v1}, Lcom/xiaomi/onetrack/api/aj$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/aj;)Landroid/content/ServiceConnection;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->k:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/aj;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aj;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/onetrack/api/aj;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->d()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/aj;->j:Lcom/xiaomi/onetrack/api/aj$c;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/onetrack/api/aj$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/aj;->j:Lcom/xiaomi/onetrack/api/aj$c;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/aj$c;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/aj;->j:Lcom/xiaomi/onetrack/api/aj$c;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/aj$c;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/api/aj$b;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->b()V

    .line 56
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p3, v3, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/aj;->d()V

    .line 61
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    const-string p2, "ServiceConnectManager"

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :catch_1
    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aj;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aj;->d:Lcom/miui/analytics/ITrack;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "ServiceConnectManager"

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackCacheData error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
