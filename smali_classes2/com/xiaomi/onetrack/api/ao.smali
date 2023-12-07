.class public Lcom/xiaomi/onetrack/api/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/ar$a;
.implements Lcom/xiaomi/onetrack/api/j;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x7d000

.field private static final d:I = 0x2


# instance fields
.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/api/ar;

.field private h:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ao;->h:Lcom/xiaomi/onetrack/util/v;

    invoke-static {}, Lcom/xiaomi/onetrack/api/ar;->a()Lcom/xiaomi/onetrack/api/ar;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/ar;->a(Lcom/xiaomi/onetrack/api/ar$a;)V

    new-instance p1, Lcom/xiaomi/onetrack/api/ap;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/api/ap;-><init>(Lcom/xiaomi/onetrack/api/ao;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ao;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "H"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "OneTrackSystemImp"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    return p0

    :cond_2
    const-string p1, "OneTrackSystemImp"

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const p3, 0x7d000

    if-le p2, p3, :cond_4

    const-string p0, "ad Event size exceed limitation!"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    const p3, 0x19000

    if-le p2, p3, :cond_4

    const-string p0, "Event size exceed limitation!"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    return p0
.end method

.method private b()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackCachedEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackSystemImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/api/aq;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/aq;-><init>(Lcom/xiaomi/onetrack/api/ao;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/ar;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ao;->h:Lcom/xiaomi/onetrack/util/v;

    const-string v2, "OneTrackSystemImp"

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/onetrack/api/ao;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onetrack_cta_status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    :cond_3
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/xiaomi/onetrack/api/ar;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lcom/xiaomi/onetrack/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "track mIOneTrackService is null! SystemImpCacheManager cache data:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method
