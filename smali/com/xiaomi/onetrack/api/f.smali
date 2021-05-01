.class public Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/api/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/api/e;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Lcom/xiaomi/onetrack/util/v;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    new-instance v0, Lcom/xiaomi/onetrack/api/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/w;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->j:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/f;->d:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->b(Landroid/content/Context;)V

    const-string p1, "OneTrackImp"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTrackImp init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 715
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_ver_name"

    .line 716
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    .line 717
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 718
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;J)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 455
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/m;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 433
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/l;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    .line 82
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()V

    .line 84
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    .line 85
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 91
    :cond_0
    new-instance v0, Lcom/xiaomi/onetrack/util/v;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/v;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    .line 92
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 94
    new-instance v0, Lcom/xiaomi/onetrack/api/ah;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/api/ah;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Lcom/xiaomi/onetrack/api/d;

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    .line 97
    new-instance v0, Lcom/xiaomi/onetrack/api/af;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/af;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Lcom/xiaomi/onetrack/api/d;

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Z)V

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->c(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V

    .line 105
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/xiaomi/onetrack/api/e;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/api/e;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->e:Lcom/xiaomi/onetrack/api/e;

    .line 107
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->e:Lcom/xiaomi/onetrack/api/e;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/e;->a()V

    .line 111
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/f;->d(Landroid/content/Context;)V

    .line 112
    sget-object p1, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/api/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/g;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->j()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 330
    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/api/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/j;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 474
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/n;-><init>(Lcom/xiaomi/onetrack/api/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    .line 533
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v2, "OneTrackImp"

    const-string v3, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 535
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 597
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 599
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 603
    :goto_1
    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "OneTrackImp"

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 414
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/k;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 729
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 730
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 731
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/f;->b:Lcom/xiaomi/onetrack/api/d;

    return-object p0
.end method

.method private e()Z
    .locals 3

    .line 496
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSupportEmptyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/f;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/api/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->d()V

    return-void
.end method

.method private f()Z
    .locals 4

    .line 504
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 507
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/f;->i()V

    return-void
.end method

.method private static g()Z
    .locals 5

    const/4 v0, 0x0

    .line 519
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.analytics"

    .line 520
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 521
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x7867b6b4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "OneTrackImp"

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 527
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private h()V
    .locals 2

    .line 659
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/u;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/u;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 674
    invoke-static {}, Lcom/xiaomi/onetrack/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/v;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 12

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->c()I

    move-result v0

    int-to-long v4, v0

    .line 690
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/api/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->A()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    return-void

    .line 699
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "last_ver_code"

    .line 700
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "last_ver_name"

    .line 701
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    .line 704
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->e()J

    move-result-wide v8

    .line 706
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v10, p0, Lcom/xiaomi/onetrack/api/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v11, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    move-object v10, v11

    invoke-static/range {v1 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->b:Lcom/xiaomi/onetrack/api/d;

    const-string v2, "onetrack_upgrade"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackUpgradeEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 631
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 632
    :cond_0
    new-instance p1, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p1, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 2

    .line 564
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/p;-><init>(Lcom/xiaomi/onetrack/api/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .locals 1

    .line 723
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    .line 724
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 641
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/t;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/t;-><init>(Lcom/xiaomi/onetrack/api/f;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 573
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/q;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/q;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/api/ad;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/ad;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 290
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/h;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 231
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ac;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/ac;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 184
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/z;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .line 200
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/xiaomi/onetrack/api/aa;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/onetrack/api/aa;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/r;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/api/r;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/y;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ab;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/i;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/i;-><init>(Lcom/xiaomi/onetrack/api/f;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 655
    sput-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 624
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 625
    :cond_0
    new-instance v0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v1, "Can\'t call this method on main thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 611
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/s;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ae;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ae;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/x;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/x;-><init>(Lcom/xiaomi/onetrack/api/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 544
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/o;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
