.class public Lcom/xiaomi/onetrack/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Lcom/xiaomi/onetrack/a/f;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/e;->a:Lcom/xiaomi/onetrack/a/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/xiaomi/onetrack/a/e;

    if-eqz v1, :cond_0

    return-void

    .line 27
    :cond_0
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/e;->a:Lcom/xiaomi/onetrack/a/f;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 36
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/e;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
