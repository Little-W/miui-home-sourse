.class public Lcom/xiaomi/onetrack/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/a/ai$b;
.implements Lcom/xiaomi/onetrack/a/d;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaomi/onetrack/Configuration;

.field private f:Lcom/xiaomi/onetrack/a/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ag;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/ag;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/a/ai;->a()Lcom/xiaomi/onetrack/a/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ag;->f:Lcom/xiaomi/onetrack/a/ai;

    .line 36
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ag;->f:Lcom/xiaomi/onetrack/a/ai;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/a/ai;->a(Lcom/xiaomi/onetrack/a/ai$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/ag;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ag;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/ag;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ag;->e:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaomi/onetrack/a/ah;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/ah;-><init>(Lcom/xiaomi/onetrack/a/ag;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 69
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p1, "OneTrackSystemImp"

    const-string p2, "Event size exceed limitation!"

    .line 75
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/ag;)Lcom/xiaomi/onetrack/a/ai;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ag;->f:Lcom/xiaomi/onetrack/a/ai;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/ag;->b()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ag;->f:Lcom/xiaomi/onetrack/a/ai;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/ai;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/ag;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onetrack_cta_status"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/g;->a(Lcom/xiaomi/onetrack/a/d;)V

    .line 53
    :cond_2
    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "OneTrackSystemImp"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ag;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ag;->f:Lcom/xiaomi/onetrack/a/ai;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ag;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaomi/onetrack/a/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ag;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-boolean p1, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "OneTrackSystemImp"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ag;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
