.class public Lcom/xiaomi/onetrack/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/a$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "disable_log"

.field public static final b:Ljava/lang/String; = "event"

.field public static final c:Ljava/lang/String; = "events"

.field public static final d:Ljava/lang/String; = "level"

.field public static final e:Ljava/lang/String; = "sample"

.field public static final f:Ljava/lang/String; = "needIds"

.field public static final g:Ljava/lang/String; = "bannedParams"

.field public static final h:Ljava/lang/String; = "version"

.field private static final i:Ljava/lang/String; = "AppConfigUpdater"

.field private static final j:J = 0xa4cb800L

.field private static final k:Ljava/lang/String; = "hash"

.field private static final l:Ljava/lang/String; = "appId"

.field private static final m:Ljava/lang/String; = "apps"

.field private static final n:Ljava/lang/String; = "type"

.field private static final o:Ljava/lang/String; = "status"

.field private static final p:Ljava/lang/String; = "deleted"

.field private static final q:Ljava/lang/String; = "Android"

.field private static r:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x64

.field private static w:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:J = 0x1b7740L

.field private static y:Lcom/xiaomi/onetrack/b/a$a;

.field private static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Lcom/xiaomi/onetrack/b/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/b/a$a;-><init>(Landroid/os/Looper;Lcom/xiaomi/onetrack/b/b;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$a;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move p0, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 339
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_5

    .line 340
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "event"

    .line 341
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 343
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "event"

    .line 344
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 347
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const-string v3, "status"

    .line 352
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleted"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 354
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v3

    .line 356
    :cond_3
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppConfigUpdater"

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeEventsElement error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 322
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    const-string v1, "events"

    .line 326
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string v1, "events"

    .line 328
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "events"

    .line 329
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "AppConfigUpdater"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaomi/onetrack/b/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/b/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 173
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 174
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/a;->d(Ljava/util/List;)V

    const-string p0, "data"

    .line 175
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "apps"

    .line 176
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 177
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppConfigUpdater"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveAppCloudData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "version"

    .line 221
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 222
    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    move-result p0

    const-string v1, "AppConfigUpdater"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", server version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_1

    if-gt v0, p0, :cond_1

    .line 225
    invoke-static {p1, p2, p3}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONObject;J)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "type"

    .line 229
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    const-string v1, "AppConfigUpdater"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 234
    invoke-static {p1, p2, p3}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;J)V

    goto :goto_3

    :cond_4
    const-string p0, "AppConfigUpdater"

    const-string p1, "handleData do nothing!"

    .line 236
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 232
    :cond_5
    :goto_2
    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONObject;JI)V

    :goto_3
    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/util/List;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 381
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 382
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 383
    new-instance v2, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v2}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 384
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    const-wide/16 v3, 0x64

    .line 385
    iput-wide v3, v2, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 386
    iput-wide p1, v2, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 387
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "AppConfigUpdater"

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleError"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static a(Ljava/util/List;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 370
    invoke-interface {p0, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 371
    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppConfigUpdater"

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleInvalidAppIds error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "AppConfigUpdater"

    const-string v1, "updateDataToDb start"

    .line 200
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x5265c00

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    if-eqz p0, :cond_3

    .line 202
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 204
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 205
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    const-string v5, "appId"

    .line 206
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v6, "AppConfigUpdater"

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 209
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {v5, v4, v0, v1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;JLjava/util/List;)V

    goto :goto_2

    .line 216
    :cond_3
    invoke-static {p1, v0, v1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V

    :goto_2
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    .line 396
    new-instance v0, Lcom/xiaomi/onetrack/b/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/b/c;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;J)V
    .locals 3

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 244
    new-instance v1, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v2, "appId"

    .line 245
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 246
    iput-wide p1, v1, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 251
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string p0, "AppConfigUpdater"

    const-string p1, "updateMinVersionData no timestamp can be updated!"

    .line 253
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 259
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 261
    new-instance v0, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v1, "hash"

    .line 262
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    const-string v1, "appId"

    .line 263
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 264
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 265
    iput-wide p1, v0, Lcom/xiaomi/onetrack/b/l;->c:J

    const-string p1, "events"

    .line 266
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 267
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p1

    iget-object p2, v0, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p2, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    const-string v1, "events"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 269
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    const-string p2, "events"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "events"

    .line 270
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_0
    iput-object p0, v0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 275
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 278
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const-string p0, "AppConfigUpdater"

    const-string p1, "handleFullOrNoNewData no configuration can be updated!"

    .line 280
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)I
    .locals 4

    const/16 v0, 0x64

    :try_start_0
    const-string v1, "sample"

    .line 309
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AppConfigUpdater"

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonSample Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic b()Lcom/xiaomi/onetrack/b/a$a;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p0, "AppConfigUpdater"

    const-string v0, "AppConfigUpdater Does not meet prerequisites for request"

    .line 90
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppConfigUpdater"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullCloudData start, appIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AppConfigUpdater"

    .line 114
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v3

    const-string v4, "oa"

    .line 121
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ov"

    .line 122
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ob"

    .line 123
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ii"

    .line 124
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    goto :goto_0

    :cond_1
    const-string v4, "0"

    :goto_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sv"

    const-string v4, "2.0.3"

    .line 125
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appVer"

    .line 126
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "av"

    .line 127
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ml"

    .line 128
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "re"

    .line 129
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ail"

    .line 130
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sender"

    .line 131
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platform"

    const-string v4, "Android"

    .line 132
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "supTip"

    const-string v4, "1"

    .line 133
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/x;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppConfigUpdater"

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pullData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v3, v0, v1}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigUpdater"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "AppConfigUpdater"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullCloudData error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_1
    sget-object p0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :goto_2
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method private static b(Lorg/json/JSONObject;J)V
    .locals 5

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "events"

    .line 287
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v1, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v2, "hash"

    .line 289
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    const-string v2, "appId"

    .line 290
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    iput-object v2, v1, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 292
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 293
    iput-wide p1, v1, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 294
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "AppConfigUpdater"

    const-string p1, "handleIncrementalUpdate config is not change!"

    .line 297
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 300
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    const-string p0, "AppConfigUpdater"

    const-string p1, "handleIncrementalUpdate no configuration can be updated!"

    .line 302
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 152
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 153
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 154
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "appId"

    .line 155
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hash"

    .line 156
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 6

    .line 95
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AppConfigUpdater"

    const-string v0, "net is not connected!"

    .line 96
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 100
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    .line 104
    :cond_1
    iget-wide v2, p0, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 4

    .line 431
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_1

    .line 434
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
