.class public Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/api/j;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/api/k;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Lcom/xiaomi/onetrack/util/v;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->b(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "OneTrackImp init : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "OneTrackImp sdk ver : 2.1.1"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/api/j;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "last_ver_name"

    invoke-virtual {p0, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->e(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/u;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/t;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/util/q;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    new-instance v0, Lcom/xiaomi/onetrack/util/v;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/v;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/xiaomi/onetrack/api/ao;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/api/ao;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/xiaomi/onetrack/api/am;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/am;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Z)V

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/xiaomi/onetrack/api/k;

    invoke-direct {p1}, Lcom/xiaomi/onetrack/api/k;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Lcom/xiaomi/onetrack/api/k;

    iget-object p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Lcom/xiaomi/onetrack/api/k;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/api/k;->a()V

    :cond_2
    sget-object p1, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/api/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/n;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/api/r;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/r;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->m()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/m;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/v;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->j()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "onetrack_dau"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    const-string p0, "view"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ot_login"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ot_logout"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private f(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonProperty: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/s;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/api/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    return p0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->f()V

    return-void
.end method

.method private g()Z
    .locals 2

    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportEmptyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "_isSupportAdMonitor():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic h(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/m;->l()V

    return-void
.end method

.method private h()Z
    .locals 2

    :try_start_0
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.miui.analytics"

    const-string v1, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static i()Z
    .locals 5

    const-string v0, "OneTrackImp"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.miui.analytics"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x7867b6b4

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportEmptyEvent error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private j()Z
    .locals 5

    const-string v0, "OneTrackImp"

    const/4 v1, 0x1

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.miui.analytics"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x7885ed14

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    return v3

    :catchall_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAdMonitor error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private k()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/ac;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/ad;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()I

    move-result v0

    int-to-long v4, v0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/api/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "last_ver_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "last_ver_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->f()J

    move-result-wide v8

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v10, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v11, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    iget-boolean v12, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-static/range {v1 .. v11}, Lcom/xiaomi/onetrack/api/h;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    const-string v1, "onetrack_upgrade"

    invoke-interface {p0, v1, v0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackUpgradeEvent error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string p1, "Can\'t call this method on main thread"

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->a()Lcom/xiaomi/onetrack/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/a;->c()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->a()Lcom/xiaomi/onetrack/api/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "OneTrackImp"

    const-string p1, "Not allowed to call,intent is null or Not specify the package name"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_2
    new-instance p0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string p1, "Can\'t call this method on main thread"

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/api/x;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ab;-><init>(Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ah;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ah;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/api/al;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/al;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/p;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ak;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/ak;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/xiaomi/onetrack/api/ai;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/y;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/api/y;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/af;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/af;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/ag;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/aj;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/aj;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/api/q;-><init>(Lcom/xiaomi/onetrack/api/m;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/z;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/z;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

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

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/o;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/ae;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/ae;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/aa;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/aa;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)V

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

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/api/w;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/api/w;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->j:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Z)V

    return-void
.end method

.method public d()Z
    .locals 0

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->f()Z

    move-result p0

    return p0
.end method
