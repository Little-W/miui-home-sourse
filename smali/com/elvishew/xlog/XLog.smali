.class public Lcom/elvishew/xlog/XLog;
.super Ljava/lang/Object;
.source "XLog.java"


# static fields
.field static sIsInitialized:Z

.field static sLogConfiguration:Lcom/elvishew/xlog/LogConfiguration;

.field private static sLogger:Lcom/elvishew/xlog/Logger;

.field static sPrinter:Lcom/elvishew/xlog/printer/Printer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertInitialization()V
    .locals 2

    .line 255
    sget-boolean v0, Lcom/elvishew/xlog/XLog;->sIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do you forget to initialize XLog?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 540
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 541
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 551
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 552
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/elvishew/xlog/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 702
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 703
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 713
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 714
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/elvishew/xlog/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 594
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 595
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 605
    invoke-static {}, Lcom/elvishew/xlog/XLog;->assertInitialization()V

    .line 606
    sget-object v0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/elvishew/xlog/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs init(Lcom/elvishew/xlog/LogConfiguration;[Lcom/elvishew/xlog/printer/Printer;)V
    .locals 2

    .line 236
    sget-boolean v0, Lcom/elvishew/xlog/XLog;->sIsInitialized:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/elvishew/xlog/internal/Platform;->get()Lcom/elvishew/xlog/internal/Platform;

    move-result-object v0

    const-string v1, "XLog is already initialized, do not initialize again"

    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/internal/Platform;->warn(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 239
    sput-boolean v0, Lcom/elvishew/xlog/XLog;->sIsInitialized:Z

    if-eqz p0, :cond_1

    .line 244
    sput-object p0, Lcom/elvishew/xlog/XLog;->sLogConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    .line 246
    new-instance p0, Lcom/elvishew/xlog/printer/PrinterSet;

    invoke-direct {p0, p1}, Lcom/elvishew/xlog/printer/PrinterSet;-><init>([Lcom/elvishew/xlog/printer/Printer;)V

    sput-object p0, Lcom/elvishew/xlog/XLog;->sPrinter:Lcom/elvishew/xlog/printer/Printer;

    .line 248
    new-instance p0, Lcom/elvishew/xlog/Logger;

    sget-object p1, Lcom/elvishew/xlog/XLog;->sLogConfiguration:Lcom/elvishew/xlog/LogConfiguration;

    sget-object v0, Lcom/elvishew/xlog/XLog;->sPrinter:Lcom/elvishew/xlog/printer/Printer;

    invoke-direct {p0, p1, v0}, Lcom/elvishew/xlog/Logger;-><init>(Lcom/elvishew/xlog/LogConfiguration;Lcom/elvishew/xlog/printer/Printer;)V

    sput-object p0, Lcom/elvishew/xlog/XLog;->sLogger:Lcom/elvishew/xlog/Logger;

    return-void

    .line 242
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please specify a LogConfiguration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
