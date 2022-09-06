.class public Lcom/xiaomi/onetrack/api/an;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/an$c;,
        Lcom/xiaomi/onetrack/api/an$b;,
        Lcom/xiaomi/onetrack/api/an$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.analytics"

.field public static final b:Ljava/lang/String; = "com.miui.analytics.onetrack.OneTrackService"

.field private static final c:Ljava/lang/String; = "ServiceConnectManager"

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private d:Lcom/miui/analytics/ITrack;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Landroid/content/Context;

.field private i:Lcom/xiaomi/onetrack/api/an$c;

.field private j:Landroid/content/ServiceConnection;

.field private k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/an$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;-><init>(Lcom/xiaomi/onetrack/api/an;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    .line 182
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/xiaomi/onetrack/api/an$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/api/an$c;-><init>(Lcom/xiaomi/onetrack/api/an;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    .line 48
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/onetrack/api/an;
    .locals 1

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/api/an$a;->a()Lcom/xiaomi/onetrack/api/an;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    const-string v0, "ServiceConnectManager"

    const-string v1, "ensureService start..."

    .line 89
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->c()V

    goto :goto_1

    :cond_0
    const-string v0, "ServiceConnectManager"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureService mConnecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAnalytics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/an;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->e()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    return-object p0
.end method

.method private c()V
    .locals 5

    const/4 v0, 0x0

    .line 99
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    const-string v2, "ServiceConnectManager"

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService:  mConnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 111
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "ServiceConnectManager"

    .line 114
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

    .line 116
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

.method static synthetic d(Lcom/xiaomi/onetrack/api/an;)Landroid/content/ServiceConnection;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceConnectManager"

    .line 127
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

.method static synthetic e(Lcom/xiaomi/onetrack/api/an;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/api/an$b;

    .line 192
    invoke-interface {v1}, Lcom/xiaomi/onetrack/api/an$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/an;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->d()V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/an;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/onetrack/api/an$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/an$c;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/an$c;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/api/an$b;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 57
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    iget-object p3, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->d()V

    .line 62
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "ServiceConnectManager"

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "track error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaomi/onetrack/api/an$c;->sendEmptyMessage(I)Z

    :catch_1
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)V
    .locals 1

    .line 78
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 80
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    iget-object p3, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ServiceConnectManager"

    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "trackCacheData error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
