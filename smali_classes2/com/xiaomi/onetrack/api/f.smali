.class public Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackExceptionHandler"

.field private static final c:Ljava/lang/String; = "tombstone"

.field private static final d:Ljava/lang/String; = ".java.xcrash"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final h:J = 0x2L


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/util/Date;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    const/16 v0, 0x32

    .line 77
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->i:I

    .line 78
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->j:I

    const/16 v0, 0xc8

    .line 79
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->k:I

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/f;->l:Z

    .line 81
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/f;->m:Z

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    const-string v2, "java"

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    .line 88
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s/%s_%020d_%s__%s%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "tombstone"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 89
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, ".java.xcrash"

    aput-object v6, v4, v5

    .line 88
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_0
    const-string v4, "OneTrackExceptionHandler"

    const-string v5, "JavaCrashHandler createLogFile failed"

    .line 95
    invoke-static {v4, v5, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    :goto_1
    :try_start_2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 104
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 105
    invoke-virtual {p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 108
    :try_start_3
    invoke-direct {p0, v0, p1, v2}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v2, v1

    :goto_2
    const-string v0, "OneTrackExceptionHandler"

    const-string v4, "JavaCrashHandler getEmergency failed"

    .line 110
    invoke-static {v0, v4, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_3
    if-eqz v3, :cond_7

    .line 117
    :try_start_4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :try_start_5
    invoke-static {v2}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backtrace feature id:\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error reason:\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz p1, :cond_1

    const-string p2, "UTF-8"

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 133
    :cond_1
    iget p1, p0, Lcom/xiaomi/onetrack/api/f;->k:I

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/xiaomi/onetrack/api/f;->i:I

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/xiaomi/onetrack/api/f;->j:I

    if-lez p1, :cond_3

    .line 134
    :cond_2
    iget p1, p0, Lcom/xiaomi/onetrack/api/f;->k:I

    iget p2, p0, Lcom/xiaomi/onetrack/api/f;->i:I

    iget v1, p0, Lcom/xiaomi/onetrack/api/f;->j:I

    invoke-static {p1, p2, v1}, Lcom/xiaomi/onetrack/util/b;->a(III)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 138
    :cond_3
    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/f;->l:Z

    if-eqz p1, :cond_4

    .line 139
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 143
    :cond_4
    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/f;->m:Z

    if-eqz p1, :cond_5

    .line 144
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 148
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    const-string p1, "foreground:\nyes\n\n"

    const-string p2, "UTF-8"

    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_4
    :try_start_7
    const-string p2, "OneTrackExceptionHandler"

    const-string v0, "JavaCrashHandler write log file failed"

    .line 154
    invoke-static {p2, v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_7

    .line 158
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    const-string p2, "OneTrackExceptionHandler"

    const-string v0, "JavaCrashHandler close RandomAccessFile failed"

    .line 160
    invoke-static {p2, v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_5
    if-eqz v0, :cond_6

    .line 158
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p2

    const-string v0, "OneTrackExceptionHandler"

    const-string v1, "JavaCrashHandler close RandomAccessFile failed"

    .line 160
    invoke-static {v0, v1, p2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :cond_6
    :goto_6
    throw p1

    :cond_7
    :goto_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/xiaomi/onetrack/api/f;

    if-eqz v1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "OneTrackExceptionHandler"

    .line 54
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash happened->stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/xiaomi/onetrack/api/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/api/g;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 63
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 64
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x2

    .line 67
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackExceptionHandler"

    .line 69
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleException error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
