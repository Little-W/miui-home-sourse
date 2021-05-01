.class public Lcom/xiaomi/onetrack/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/aj$b;
.implements Lcom/xiaomi/onetrack/api/d;


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

.field private f:Lcom/xiaomi/onetrack/api/aj;

.field private g:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ah;->g:Lcom/xiaomi/onetrack/util/v;

    .line 34
    invoke-static {}, Lcom/xiaomi/onetrack/api/aj;->a()Lcom/xiaomi/onetrack/api/aj;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    .line 35
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ah;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/ah;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 99
    new-instance v0, Lcom/xiaomi/onetrack/api/ai;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/ah;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 73
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    .line 77
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

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p1, "OneTrackSystemImp"

    const-string p2, "Event size exceed limitation!"

    .line 79
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/ah;)Lcom/xiaomi/onetrack/api/aj;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/xiaomi/onetrack/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ah;->b()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/aj;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->g:Lcom/xiaomi/onetrack/util/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "OneTrackSystemImp"

    const-string p2, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 41
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/ah;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onetrack_cta_status"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/g;->a(Lcom/xiaomi/onetrack/api/d;)V

    .line 57
    :cond_3
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "OneTrackSystemImp"

    .line 58
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

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaomi/onetrack/api/aj;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 64
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "OneTrackSystemImp"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
