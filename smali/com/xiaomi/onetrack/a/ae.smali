.class public Lcom/xiaomi/onetrack/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/a/ag$b;
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

.field private f:Lcom/xiaomi/onetrack/a/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ae;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/ae;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/a/ag;->a()Lcom/xiaomi/onetrack/a/ag;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ae;->f:Lcom/xiaomi/onetrack/a/ag;

    .line 33
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ae;->f:Lcom/xiaomi/onetrack/a/ag;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/a/ag;->a(Lcom/xiaomi/onetrack/a/ag$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/ae;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ae;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 64
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const v0, 0x19000

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/ae;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ae;->e:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaomi/onetrack/a/af;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/af;-><init>(Lcom/xiaomi/onetrack/a/ae;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/ae;)Lcom/xiaomi/onetrack/a/ag;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ae;->f:Lcom/xiaomi/onetrack/a/ag;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/ae;->b()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ae;->f:Lcom/xiaomi/onetrack/a/ag;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/ag;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 38
    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/a/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onetrack_cta_status"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_1
    sget-boolean v0, Lcom/xiaomi/onetrack/h/n;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "OneTrackSystemImp"

    .line 49
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

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ae;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ae;->f:Lcom/xiaomi/onetrack/a/ag;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ae;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaomi/onetrack/a/ag;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ae;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-boolean p1, Lcom/xiaomi/onetrack/h/n;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "OneTrackSystemImp"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ae;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
