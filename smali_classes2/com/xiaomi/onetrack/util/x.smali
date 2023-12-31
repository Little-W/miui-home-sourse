.class public Lcom/xiaomi/onetrack/util/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/x$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "/api/v4/detail/config_common"

.field private static C:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "RegionDomainManager"

.field private static final b:Ljava/lang/String; = "CN"

.field private static final c:Ljava/lang/String; = "INTL"

.field private static final d:Ljava/lang/String; = "IN"

.field private static final e:Ljava/lang/String; = "RU"

.field private static final f:Ljava/lang/String; = "http://"

.field private static final g:Ljava/lang/String; = "https://"

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = ""

.field private static l:Ljava/lang/String; = ""

.field private static m:Ljava/lang/String; = ""

.field private static n:Ljava/lang/String; = ""

.field private static o:Ljava/lang/String; = ""

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B

.field private static final x:Ljava/lang/String; = "/track/v4"

.field private static final y:Ljava/lang/String; = "/track/key_get"

.field private static final z:Ljava/lang/String; = "/api/v4/detail/config"


# instance fields
.field private B:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->p:[B

    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 39
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->q:[B

    const/16 v0, 0x15

    new-array v0, v0, [B

    .line 40
    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->r:[B

    const/16 v0, 0x17

    new-array v1, v0, [B

    .line 41
    fill-array-data v1, :array_3

    sput-object v1, Lcom/xiaomi/onetrack/util/x;->s:[B

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_4

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->t:[B

    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_5

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->u:[B

    const/16 v0, 0x1d

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_6

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->v:[B

    const/16 v0, 0x1b

    new-array v0, v0, [B

    .line 45
    fill-array-data v0, :array_7

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->w:[B

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_5
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_6
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->f()V

    .line 59
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaomi/onetrack/util/x;->k:Ljava/lang/String;

    const-string v2, "IN"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/xiaomi/onetrack/util/x;->j:Ljava/lang/String;

    const-string v2, "RU"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/util/y;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/x;
    .locals 1

    .line 91
    invoke-static {}, Lcom/xiaomi/onetrack/util/x$a;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 179
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    return-object p0

    .line 181
    :cond_0
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->i:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private a([B)Ljava/lang/String;
    .locals 3

    const-string p0, "RegionDomainManager"

    const-string v0, ""

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "transmitToString host:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 81
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method private f()V
    .locals 1

    .line 65
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->p:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->q:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->i:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->r:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->j:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->s:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->k:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->t:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->l:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->u:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->m:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->v:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->n:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->w:[B

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/util/x;->a([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/x;->o:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .locals 2

    .line 97
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->h()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 0

    const-string p0, "https://"

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 172
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v0

    .line 173
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/onetrack/util/x;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result p0

    .line 191
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_0

    .line 193
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->l:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "IN"

    .line 195
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 196
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->n:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "RU"

    .line 197
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 198
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->o:Ljava/lang/String;

    return-object p0

    .line 200
    :cond_2
    sget-object p0, Lcom/xiaomi/onetrack/util/x;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "RegionDomainManager"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    sget-object v3, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "RegionDomainManager"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "RegionDomainManager"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/xiaomi/onetrack/util/x;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 138
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionDomainManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/v4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 149
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_common"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/key_get"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
