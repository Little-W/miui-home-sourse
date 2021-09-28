.class public Lcom/xiaomi/onetrack/b/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "UploaderEngine"

.field private static final b:Ljava/lang/String; = "code"

.field private static final c:Ljava/lang/String; = "UTF-8"


# instance fields
.field private d:Lcom/xiaomi/onetrack/b/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/onetrack/b/n;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/b/o;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/onetrack/b/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/b/n;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaomi/onetrack/b/n$a;->a()Lcom/xiaomi/onetrack/b/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .locals 6

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/util/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UploaderEngine"

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/onetrack/b/n;->a([B)[B

    move-result-object v2

    const-string v3, "UploaderEngine"

    .line 99
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

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UploaderEngine"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataToServer response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/b/n;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UploaderEngine"

    const-string v2, "Exception while uploading "

    .line 112
    invoke-static {v1, v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    .line 130
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

    .line 131
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "UTF-8"

    .line 132
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 133
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 134
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

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 139
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    return-object v0

    :catchall_2
    move-exception p0

    .line 138
    :goto_2
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 139
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/OutputStream;)V

    .line 140
    throw p0
.end method

.method private a([B)[B
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UploaderEngine"

    const-string v0, "content is null"

    .line 147
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/f;->a()Lcom/xiaomi/onetrack/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/f;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 152
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/c/a;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "onetrack_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v1, Lcom/xiaomi/onetrack/b/k;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/b/k;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/b/n;->d:Lcom/xiaomi/onetrack/b/k;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 159
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 160
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UploaderEngine"

    const-string/jumbo v1, "成功发送数据到服务端"

    .line 163
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_1

    const-string p1, "UploaderEngine"

    const-string v1, "signature expired, will update"

    .line 166
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/xiaomi/onetrack/c/f;->a()Lcom/xiaomi/onetrack/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/c/f;->c()Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "UploaderEngine"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: status code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "UploaderEngine"

    const-string v2, "parseUploadingResult exception "

    .line 175
    invoke-static {v1, v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized a(IZ)V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/n;->d:Lcom/xiaomi/onetrack/b/k;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/n;->d:Lcom/xiaomi/onetrack/b/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/b/k;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "UploaderEngine"

    const-string p2, "*** impossible, upload timer should not be null"

    .line 44
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
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

    const-string/jumbo v1, "即将读取数据库并上传数据"

    .line 54
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/b;->a()Lcom/xiaomi/onetrack/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/b/b;->a(I)Lcom/xiaomi/onetrack/b/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "UploaderEngine"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "满足条件的记录为空\uff0c即将返回, priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 64
    :cond_1
    iget-object v2, v0, Lcom/xiaomi/onetrack/b/f;->c:Ljava/util/ArrayList;

    .line 65
    iget-object v3, v0, Lcom/xiaomi/onetrack/b/f;->a:Lorg/json/JSONArray;

    .line 67
    invoke-direct {p0, v3}, Lcom/xiaomi/onetrack/b/n;->a(Lorg/json/JSONArray;)Z

    move-result v3

    const-string v4, "UploaderEngine"

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/b/b;->a()Lcom/xiaomi/onetrack/b/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/b/b;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "UploaderEngine"

    const-string v0, "delete DB failed!"

    .line 75
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-boolean v0, v0, Lcom/xiaomi/onetrack/b/f;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "UploaderEngine"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more records for prio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method
