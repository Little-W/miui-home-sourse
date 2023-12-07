.class public Lcom/xiaomi/onetrack/api/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "action"

.field private static final b:Ljava/lang/String; = "AppActiveBroadcastManager"

.field private static volatile c:Lcom/xiaomi/onetrack/api/a; = null

.field private static final d:Ljava/lang/String; = "content://com.miui.analytics.OneTrackProvider/traceId"

.field private static final e:Ljava/lang/String; = "traceId"

.field private static final f:Ljava/lang/String; = "pkg"

.field private static final g:Ljava/lang/String; = "sign"

.field private static j:Ljava/lang/String; = null

.field private static final k:Ljava/lang/String; = "package"

.field private static final l:Ljava/lang/String; = "installer"

.field private static final m:Ljava/lang/String; = "userId"

.field private static final n:Ljava/lang/String; = "miuiActiveId"

.field private static final o:Ljava/lang/String; = "miuiActiveTime"

.field private static final p:Ljava/lang/String; = "activeTime"

.field private static final q:Ljava/lang/String; = "queryTime"

.field private static final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.market"

    const-string v3, "com.miui.packageinstaller"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/a;->r:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/a;->h:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/a;->i:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/api/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/api/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/onetrack/api/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/a;->c:Lcom/xiaomi/onetrack/api/a;

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

.method static synthetic d()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Z
    .locals 5

    const-string v0, "AppActiveBroadcastManager"

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

    const v3, 0x7894affc

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support getTraceId versionCode: "

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


# virtual methods
.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    const-string v0, "  _tid:"

    const-string v1, "packageName:"

    const-string v2, "AppActiveBroadcastManager"

    const-string v3, ""

    new-instance v4, Lcom/xiaomi/onetrack/api/b;

    invoke-direct {v4, p0, p1}, Lcom/xiaomi/onetrack/api/b;-><init>(Lcom/xiaomi/onetrack/api/a;Landroid/content/Intent;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x5

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v6, v7, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " _start ------getTraceId:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTraceId error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/onetrack/api/a;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _end ------getTraceId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diffTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Z
    .locals 1

    sget-object p0, Lcom/xiaomi/onetrack/api/a;->r:Ljava/util/Set;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
