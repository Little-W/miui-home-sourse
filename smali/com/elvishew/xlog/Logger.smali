.class public Lcom/elvishew/xlog/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

.field private printer:Lcom/elvishew/xlog/printer/Printer;


# direct methods
.method constructor <init>(Lcom/elvishew/xlog/LogConfiguration;Lcom/elvishew/xlog/printer/Printer;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    .line 69
    iput-object p2, p0, Lcom/elvishew/xlog/Logger;->printer:Lcom/elvishew/xlog/printer/Printer;

    return-void
.end method

.method private println(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget v0, v0, Lcom/elvishew/xlog/LogConfiguration;->logLevel:I

    if-ge p1, v0, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/elvishew/xlog/internal/SystemCompat;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, ""

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object p2, p2, Lcom/elvishew/xlog/LogConfiguration;->throwableFormatter:Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

    .line 548
    invoke-interface {p2, p3}, Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/elvishew/xlog/Logger;->printlnInternal(ILjava/lang/String;)V

    return-void
.end method

.method private printlnInternal(ILjava/lang/String;)V
    .locals 7

    .line 558
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v3, v0, Lcom/elvishew/xlog/LogConfiguration;->tag:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-boolean v0, v0, Lcom/elvishew/xlog/LogConfiguration;->withThread:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v0, v0, Lcom/elvishew/xlog/LogConfiguration;->threadFormatter:Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

    .line 560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-boolean v0, v0, Lcom/elvishew/xlog/LogConfiguration;->withStackTrace:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v0, v0, Lcom/elvishew/xlog/LogConfiguration;->stackTraceFormatter:Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 564
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v2, v2, Lcom/elvishew/xlog/LogConfiguration;->stackTraceOrigin:Ljava/lang/String;

    iget-object v5, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget v5, v5, Lcom/elvishew/xlog/LogConfiguration;->stackTraceDepth:I

    invoke-static {v1, v2, v5}, Lcom/elvishew/xlog/internal/util/StackTraceUtil;->getCroppedRealStackTrack([Ljava/lang/StackTraceElement;Ljava/lang/String;I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 563
    invoke-interface {v0, v1}, Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 569
    :goto_1
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v0, v0, Lcom/elvishew/xlog/LogConfiguration;->interceptors:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 570
    new-instance v0, Lcom/elvishew/xlog/LogItem;

    move-object v1, v0

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/elvishew/xlog/LogItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object p1, p1, Lcom/elvishew/xlog/LogConfiguration;->interceptors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/elvishew/xlog/interceptor/Interceptor;

    .line 572
    invoke-interface {p2, v0}, Lcom/elvishew/xlog/interceptor/Interceptor;->intercept(Lcom/elvishew/xlog/LogItem;)Lcom/elvishew/xlog/LogItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 579
    :cond_2
    iget-object v1, v0, Lcom/elvishew/xlog/LogItem;->tag:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/elvishew/xlog/LogItem;->msg:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 580
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interceptor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " should not remove the tag or message of a log, if you don\'t want to print this log, just return a null when intercept."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :cond_4
    iget p1, v0, Lcom/elvishew/xlog/LogItem;->level:I

    .line 589
    iget-object v3, v0, Lcom/elvishew/xlog/LogItem;->tag:Ljava/lang/String;

    .line 590
    iget-object v4, v0, Lcom/elvishew/xlog/LogItem;->threadInfo:Ljava/lang/String;

    .line 591
    iget-object v5, v0, Lcom/elvishew/xlog/LogItem;->stackTraceInfo:Ljava/lang/String;

    .line 592
    iget-object p2, v0, Lcom/elvishew/xlog/LogItem;->msg:Ljava/lang/String;

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->printer:Lcom/elvishew/xlog/printer/Printer;

    iget-object v1, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-boolean v1, v1, Lcom/elvishew/xlog/LogConfiguration;->withBorder:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget-object v1, v1, Lcom/elvishew/xlog/LogConfiguration;->borderFormatter:Lcom/elvishew/xlog/formatter/border/BorderFormatter;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const/4 v4, 0x1

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    .line 596
    invoke-interface {v1, v2}, Lcom/elvishew/xlog/formatter/border/BorderFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elvishew/xlog/internal/SystemCompat;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elvishew/xlog/internal/SystemCompat;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 595
    :goto_5
    invoke-interface {v0, p1, v3, p2}, Lcom/elvishew/xlog/printer/Printer;->println(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 239
    invoke-direct {p0, v0, p1, p2}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 386
    invoke-direct {p0, v0, p1, p2}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 288
    invoke-direct {p0, v0, p1, p2}, Lcom/elvishew/xlog/Logger;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method println(ILjava/lang/String;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/elvishew/xlog/Logger;->logConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    iget v0, v0, Lcom/elvishew/xlog/LogConfiguration;->logLevel:I

    if-ge p1, v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/elvishew/xlog/Logger;->printlnInternal(ILjava/lang/String;)V

    return-void
.end method
