.class public Lcom/xiaomi/onetrack/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/a/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/a/e;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    new-instance v0, Lcom/xiaomi/onetrack/a/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/w;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->i:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->d:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 80
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Landroid/content/Context;)V

    const-string p1, "OneTrackImp"

    .line 81
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

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 748
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_ver_name"

    .line 749
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    .line 750
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 751
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 457
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/m;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 437
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/l;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    .line 85
    invoke-static {}, Lcom/xiaomi/onetrack/h/q;->a()V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/r;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    .line 88
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 93
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/Boolean;)V

    .line 95
    new-instance v0, Lcom/xiaomi/onetrack/a/ag;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/onetrack/a/ag;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/Boolean;)V

    .line 98
    new-instance v0, Lcom/xiaomi/onetrack/a/ae;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/onetrack/a/ae;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/r;->a(Z)V

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/a/f;)V

    .line 106
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lcom/xiaomi/onetrack/a/e;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/a/e;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->e:Lcom/xiaomi/onetrack/a/e;

    .line 108
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->e:Lcom/xiaomi/onetrack/a/e;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/e;->a()V

    .line 112
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Landroid/content/Context;)V

    .line 113
    sget-object p1, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/g;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->l()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 476
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/n;-><init>(Lcom/xiaomi/onetrack/a/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 331
    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/a/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/j;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/r;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    .line 551
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v2, "OneTrackImp"

    const-string v3, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 553
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 631
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 633
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 635
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 637
    :goto_1
    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/h/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "OneTrackImp"

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 418
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/k;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 761
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 762
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 763
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->d()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 498
    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isServiceOnline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->k()V

    return-void
.end method

.method private f()Z
    .locals 4

    .line 506
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 509
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

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/a/f;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g()Z
    .locals 5

    const/4 v0, 0x0

    .line 521
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    .line 522
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "OneTrackImp"

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceOnline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static h()Z
    .locals 5

    const/4 v0, 0x0

    .line 537
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.analytics"

    .line 538
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 539
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x7867b6b4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "OneTrackImp"

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 545
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 693
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/u;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/u;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 708
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/v;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/v;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .locals 11

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 722
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()I

    move-result v0

    int-to-long v4, v0

    .line 723
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/a/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->A()Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/aa;->j(Ljava/lang/String;)V

    return-void

    .line 732
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "last_ver_code"

    .line 733
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "last_ver_name"

    .line 734
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    .line 737
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/aa;->j(Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()J

    move-result-wide v8

    .line 739
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v10, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    invoke-static/range {v1 .. v9}, Lcom/xiaomi/onetrack/a/c;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;)Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    const-string v2, "onetrack_upgrade"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackUpgradeEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 665
    invoke-static {}, Lcom/xiaomi/onetrack/h/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/h;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 666
    :cond_0
    new-instance p1, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p1, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 2

    .line 598
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/p;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 675
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/t;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/t;-><init>(Lcom/xiaomi/onetrack/a/f;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 607
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/q;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/q;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

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

    .line 252
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/a/ac;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/ac;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 291
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/h;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 232
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ab;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/ab;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 185
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/y;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 201
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/xiaomi/onetrack/a/z;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/onetrack/a/z;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

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

    .line 141
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/r;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/a/r;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

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

    .line 161
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/x;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/util/Map;)V

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

    .line 216
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/aa;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/aa;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

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

    .line 307
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/i;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/i;-><init>(Lcom/xiaomi/onetrack/a/f;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 689
    sput-boolean p1, Lcom/xiaomi/onetrack/h/q;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 658
    invoke-static {}, Lcom/xiaomi/onetrack/h/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/h/p;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    new-instance v0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v1, "Can\'t call this method on main thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 645
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/s;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

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

    .line 275
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ad;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/ad;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

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

    .line 562
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/o;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
