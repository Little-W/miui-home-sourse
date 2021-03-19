.class public Lcom/xiaomi/onetrack/c/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "UploaderEngine"

.field private static final b:Ljava/lang/String; = "code"

.field private static final c:Ljava/lang/String; = "UTF-8"

.field private static volatile d:Lcom/xiaomi/onetrack/c/m;


# instance fields
.field private e:Lcom/xiaomi/onetrack/c/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/m;->c()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/c/m;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->b()V

    .line 38
    sget-object v0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/m;

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .locals 6

    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/x;->a()Lcom/xiaomi/onetrack/h/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/h/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UploaderEngine"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/m;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/onetrack/c/m;->a([B)[B

    move-result-object v2

    const-string v3, "UploaderEngine"

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before zip and encrypt, len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", after="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/g/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UploaderEngine"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataToServer response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/m;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UploaderEngine"

    const-string v2, "Exception while uploading "

    .line 123
    invoke-static {v1, v2, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    .line 143
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "UTF-8"

    .line 145
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 146
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    :try_start_3
    const-string v3, "UploaderEngine"

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 151
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/OutputStream;)V

    .line 152
    invoke-static {v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/OutputStream;)V

    return-object v0

    :catchall_2
    move-exception p0

    .line 151
    :goto_2
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/OutputStream;)V

    .line 152
    invoke-static {v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/io/OutputStream;)V

    throw p0
.end method

.method private a([B)[B
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UploaderEngine"

    const-string v0, "content is null"

    .line 160
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 165
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public static b()V
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/m;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/xiaomi/onetrack/c/m;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/m;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/xiaomi/onetrack/c/m;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/c/m;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/m;

    .line 47
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

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 172
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 173
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UploaderEngine"

    const-string v1, "\u6210\u529f\u53d1\u9001\u6570\u636e\u5230\u670d\u52a1\u7aef"

    .line 176
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_1

    const-string p1, "UploaderEngine"

    const-string v1, "signature expired, will update"

    .line 179
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/xiaomi/onetrack/d/f;->a()Lcom/xiaomi/onetrack/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/d/f;->c()Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "UploaderEngine"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: status code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UploaderEngine"

    const-string v2, "parseUploadingResult exception "

    .line 188
    invoke-static {v1, v2, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private c()V
    .locals 2

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mi_analytics_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Lcom/xiaomi/onetrack/c/k;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/k;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/c/m;->e:Lcom/xiaomi/onetrack/c/k;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(IZ)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/m;->e:Lcom/xiaomi/onetrack/c/k;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/m;->e:Lcom/xiaomi/onetrack/c/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/c/k;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "UploaderEngine"

    const-string p2, "*** impossible, upload timer should not be null"

    .line 55
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Z
    .locals 7

    const-string v0, "UploaderEngine"

    const-string v1, "\u5373\u5c06\u8bfb\u53d6\u6570\u636e\u5e93\u5e76\u4e0a\u4f20\u6570\u636e"

    .line 65
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()Lcom/xiaomi/onetrack/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/c/b;->a(I)Lcom/xiaomi/onetrack/c/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "UploaderEngine"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ee1\u8db3\u6761\u4ef6\u7684\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de, priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 75
    :cond_1
    iget-object v2, v0, Lcom/xiaomi/onetrack/c/f;->c:Ljava/util/ArrayList;

    .line 76
    iget-object v3, v0, Lcom/xiaomi/onetrack/c/f;->a:Lorg/json/JSONArray;

    .line 78
    invoke-direct {p0, v3}, Lcom/xiaomi/onetrack/c/m;->a(Lorg/json/JSONArray;)Z

    move-result v3

    const-string v4, "UploaderEngine"

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/c/b;->a()Lcom/xiaomi/onetrack/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "UploaderEngine"

    const-string v0, "delete DB failed!"

    .line 86
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-boolean v0, v0, Lcom/xiaomi/onetrack/c/f;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "UploaderEngine"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more records for prio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method
