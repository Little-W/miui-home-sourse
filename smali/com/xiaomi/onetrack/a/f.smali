.class public Lcom/xiaomi/onetrack/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/f$_lancet;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/a/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/a/e;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->d:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->a(Landroid/content/Context;)V

    const-string p1, "OneTrackImp"

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTrackImp init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/a/f$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 693
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_ver_name"

    .line 694
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    .line 695
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/o;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    .line 78
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 79
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

    .line 83
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/xiaomi/onetrack/a/ae;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/onetrack/a/ae;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/xiaomi/onetrack/a/ac;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/onetrack/a/ac;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/o;->a(Z)V

    .line 91
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/a/f;)V

    goto :goto_1

    .line 96
    :cond_2
    new-instance p1, Lcom/xiaomi/onetrack/a/e;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/a/e;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->e:Lcom/xiaomi/onetrack/a/e;

    .line 97
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/f;->e:Lcom/xiaomi/onetrack/a/e;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/e;->a()V

    .line 101
    :cond_3
    :goto_1
    sget-object p1, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/g;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->k()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 428
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/m;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 408
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/l;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 303
    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/a/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/j;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 447
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/n;-><init>(Lcom/xiaomi/onetrack/a/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 581
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 583
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 585
    :goto_1
    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/h/p;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "OneTrackImp"

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .line 389
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/k;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->d()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->j()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 469
    sget-boolean v0, Lcom/xiaomi/onetrack/h/n;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 470
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

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/a/f;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()Z
    .locals 4

    .line 477
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 480
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

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static g()Z
    .locals 5

    const/4 v0, 0x0

    .line 492
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    .line 493
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 495
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
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

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceOnline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 619
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/t;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/t;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 634
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 637
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/g;->a(Z)V

    .line 638
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/u;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/u;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()V
    .locals 10

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()I

    move-result v0

    int-to-long v4, v0

    .line 668
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/a/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {}, Lcom/xiaomi/onetrack/h/v;->A()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/v;->j(Ljava/lang/String;)V

    return-void

    .line 677
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "last_ver_code"

    .line 678
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "last_ver_name"

    .line 679
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    .line 682
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/v;->j(Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()J

    move-result-wide v8

    .line 684
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/onetrack/a/c;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    const-string v2, "onetrack_upgrade"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackUpgradeEvent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 282
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/i;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 600
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/s;-><init>(Lcom/xiaomi/onetrack/a/f;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 556
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

    .line 227
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/a/aa;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/aa;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 266
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/h;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 206
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/z;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/z;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/w;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 175
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/xiaomi/onetrack/a/x;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/onetrack/a/x;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 119
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/r;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/xiaomi/onetrack/a/r;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 138
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/v;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/v;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;Ljava/lang/String;)V

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

    .line 190
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/y;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/y;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 615
    sput-boolean p1, Lcom/xiaomi/onetrack/h/n;->a:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 547
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/p;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 593
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/v;->a(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 249
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/ab;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

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

    .line 511
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/o;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
