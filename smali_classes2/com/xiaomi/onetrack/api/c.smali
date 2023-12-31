.class public Lcom/xiaomi/onetrack/api/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BroadcastManager"

.field private static b:Ljava/lang/String; = "onetrack_broadcast_manager"

.field private static volatile c:Lcom/xiaomi/onetrack/api/c; = null

.field private static final e:I = 0xa

.field private static final f:I = 0x64

.field private static final g:I = 0x65

.field private static volatile h:Z

.field private static volatile j:Z


# instance fields
.field private d:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/j;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/c;->l:Z

    .line 42
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/c;->m:Z

    .line 115
    new-instance v0, Lcom/xiaomi/onetrack/api/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/d;-><init>(Lcom/xiaomi/onetrack/api/c;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->n:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/xiaomi/onetrack/api/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/e;-><init>(Lcom/xiaomi/onetrack/api/c;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->o:Landroid/content/BroadcastReceiver;

    .line 63
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/onetrack/api/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Lcom/xiaomi/onetrack/api/c$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/xiaomi/onetrack/api/c$a;-><init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/d;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/api/c;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/api/c;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->b()V

    .line 48
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/api/j;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    .line 88
    invoke-interface {v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 90
    invoke-interface {v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/c;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/c;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 52
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/xiaomi/onetrack/api/c;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/xiaomi/onetrack/api/c;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/c;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 57
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

.method static synthetic c(Lcom/xiaomi/onetrack/api/c;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/c;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/c;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/c;->m:Z

    return p0
.end method

.method private g()V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "BroadcastManager"

    .line 112
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "register screen receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 2

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "BroadcastManager"

    .line 210
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "register net receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/onetrack/api/j;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/c;->l:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/c;->m:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 96
    sget-boolean v0, Lcom/xiaomi/onetrack/api/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/xiaomi/onetrack/api/c;->h:Z

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/c;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 101
    sput-boolean p0, Lcom/xiaomi/onetrack/api/c;->h:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 192
    sget-boolean v0, Lcom/xiaomi/onetrack/api/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    sput-boolean v0, Lcom/xiaomi/onetrack/api/c;->j:Z

    .line 194
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    move-result v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get network status for the first time, isNetworkConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastManager"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 201
    sput-boolean p0, Lcom/xiaomi/onetrack/api/c;->j:Z

    :cond_0
    :goto_0
    return-void
.end method
