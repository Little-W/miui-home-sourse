.class public Lcom/xiaomi/onetrack/f/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackApp"

.field private static b:Lcom/xiaomi/onetrack/f/f;

.field private static e:Landroid/content/BroadcastReceiver;


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaomi/onetrack/f/j;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/f/j;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/f/f;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lcom/xiaomi/onetrack/f/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/f/h;-><init>(Lcom/xiaomi/onetrack/f/f;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/f;->d:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/xiaomi/onetrack/f/g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/f/g;-><init>(Lcom/xiaomi/onetrack/f/f;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaomi/onetrack/f/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 0

    .line 64
    invoke-static {}, Lcom/xiaomi/onetrack/b/c;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaomi/onetrack/f/f;->b:Lcom/xiaomi/onetrack/f/f;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/xiaomi/onetrack/f/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/f/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/onetrack/f/f;->b:Lcom/xiaomi/onetrack/f/f;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/f/f;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/f/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/xiaomi/onetrack/f/f;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/f/f;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/f;->a()V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/xiaomi/onetrack/f/f;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/xiaomi/onetrack/f/f;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OneTrackApp"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
