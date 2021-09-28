.class public Lcom/xiaomi/onetrack/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:Z = false

.field private static final c:I = 0x32000

.field private static final d:I = 0x4b000

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "priority ASC, _id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/b/b;

.field private static j:Landroid/content/BroadcastReceiver;


# instance fields
.field private i:Lcom/xiaomi/onetrack/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/xiaomi/onetrack/b/c;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/b/c;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/b/b;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/xiaomi/onetrack/b/b$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/b/b$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/b/b;)Lcom/xiaomi/onetrack/b/b$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/b/b;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaomi/onetrack/b/b;->h:Lcom/xiaomi/onetrack/b/b;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/b;->a(Landroid/content/Context;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/b/b;->h:Lcom/xiaomi/onetrack/b/b;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 337
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 338
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/c/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/c/a;->b([B[B)[B

    move-result-object p0

    .line 340
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaomi/onetrack/b/b;->h:Lcom/xiaomi/onetrack/b/b;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/xiaomi/onetrack/b/b;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/b/b;->h:Lcom/xiaomi/onetrack/b/b;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/xiaomi/onetrack/b/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/b/b;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/b/b;->h:Lcom/xiaomi/onetrack/b/b;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 62
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/b/b;Lcom/xiaomi/onetrack/e/b;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/b/b;->b(Lcom/xiaomi/onetrack/e/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .line 330
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 331
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/c/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/c/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/xiaomi/onetrack/b/b;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Lcom/xiaomi/onetrack/e/b;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->h()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EventManager"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEventToDatabase event is inValid, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    monitor-exit v0

    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/b/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 121
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "appid"

    .line 123
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package"

    .line 124
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_name"

    .line 125
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "priority"

    .line 126
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "timestamp"

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 129
    array-length v4, v3

    const v5, 0x32000

    if-le v4, v5, :cond_1

    const-string p1, "EventManager"

    const-string v1, "Too large data, discard ***"

    .line 130
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v0

    return-void

    :cond_1
    const-string v4, "data"

    .line 134
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "events"

    const/4 v4, 0x0

    .line 135
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v3, "EventManager"

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB-Thread: EventManager.addEventToDatabase , row="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 138
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "EventManager"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "添加后\uff0cDB 中事件个数为 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/b;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "onetrack_active"

    .line 143
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/e/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(J)V

    :cond_3
    const/4 p1, 0x0

    .line 147
    invoke-static {p1}, Lcom/xiaomi/onetrack/a/l;->a(Z)V

    .line 149
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

.method private d()V
    .locals 3

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/b/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "EventManager"

    const-string v1, "delete table events"

    .line 347
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 239
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 244
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/b/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 248
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 252
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_1

    const-string v7, ","

    .line 256
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 258
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "EventManager"

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted events count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/xiaomi/onetrack/b/b;->a()Lcom/xiaomi/onetrack/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/b/b;->c()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 265
    :goto_1
    invoke-static {v4}, Lcom/xiaomi/onetrack/a/l;->a(Z)V

    const-string v4, "EventManager"

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after delete DB record remains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    const-string v2, "EventManager"

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    monitor-exit v0

    return v1

    .line 240
    :cond_3
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 273
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(I)Lcom/xiaomi/onetrack/b/f;
    .locals 20

    move/from16 v1, p1

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p0

    .line 158
    :try_start_0
    iget-object v0, v11, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/b/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "priority ASC, _id ASC"

    .line 159
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "_id"

    .line 162
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "appid"

    .line 163
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "package"

    .line 164
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "event_name"

    .line 165
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "priority"

    .line 166
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "data"

    .line 167
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "timestamp"

    .line 168
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 170
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 171
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 177
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 178
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 179
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 180
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 181
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    if-eqz v18, :cond_0

    .line 185
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/onetrack/b/b;->a([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    goto :goto_1

    :cond_0
    move-object v12, v10

    :goto_1
    if-eqz v0, :cond_3

    .line 190
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_2

    const-string v3, "EventManager"

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No records of priority["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], first record priority="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    move/from16 v19, v0

    .line 197
    :goto_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :try_start_3
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 200
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v13, "EventManager"

    const-string v10, "*** error ***"

    .line 203
    invoke-static {v13, v10, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v15, v0

    const v0, 0x4b000

    if-lt v15, v0, :cond_4

    const-string v0, "EventManager"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reached max len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 v0, v19

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 213
    :cond_5
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 214
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "EventManager"

    const-string v1, "cursor isAfterLast"

    .line 215
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_5

    .line 218
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    .line 222
    :goto_5
    new-instance v0, Lcom/xiaomi/onetrack/b/f;

    invoke-direct {v0, v8, v14, v9, v12}, Lcom/xiaomi/onetrack/b/f;-><init>(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_8

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v10, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v10, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_b

    :catch_3
    move-exception v0

    const/4 v10, 0x0

    :goto_6
    :try_start_5
    const-string v1, "EventManager"

    const-string v2, ""

    .line 228
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_a

    .line 231
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_8
    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v10, 0x0

    :goto_9
    :try_start_6
    const-string v1, "EventManager"

    const-string v2, "blob too big ***"

    .line 225
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/b/b;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v10, :cond_a

    goto :goto_7

    :goto_a
    return-object v1

    :catchall_2
    move-exception v0

    move-object v2, v10

    :goto_b
    if-eqz v2, :cond_b

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_b
    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/onetrack/e/b;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/b/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/d;-><init>(Lcom/xiaomi/onetrack/b/b;Lcom/xiaomi/onetrack/e/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 277
    new-instance v0, Lcom/xiaomi/onetrack/b/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/b/e;-><init>(Lcom/xiaomi/onetrack/b/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->i:Lcom/xiaomi/onetrack/b/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/b/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    .line 326
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
