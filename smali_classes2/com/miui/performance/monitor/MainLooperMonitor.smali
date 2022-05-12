.class public final Lcom/miui/performance/monitor/MainLooperMonitor;
.super Ljava/lang/Object;
.source "MainLooperMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainLooperMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainLooperMonitor.kt\ncom/miui/performance/monitor/MainLooperMonitor\n*L\n1#1,320:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/MainLooperMonitor;

.field private static final TOKEN:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/miui/performance/monitor/MainLooperMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/MainLooperMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/MainLooperMonitor;->INSTANCE:Lcom/miui/performance/monitor/MainLooperMonitor;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/MainLooperMonitor;->TOKEN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setMessageLogging(Z)V
    .locals 1

    .line 66
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    invoke-virtual {v0, p1}, Lcom/miui/performance/tools/MainLooperPrinter;->printMessage(Z)V

    return-void
.end method

.method private final setTraceTag(J)V
    .locals 1

    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Looper;->setTraceTag(J)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<<MainLooperMonitor>>"

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p3, Lcom/miui/performance/monitor/MainLooperMonitor$dump$1;

    invoke-direct {p3, p2}, Lcom/miui/performance/monitor/MainLooperMonitor$dump$1;-><init>(Ljava/io/PrintWriter;)V

    check-cast p3, Landroid/util/Printer;

    const-string p2, ""

    invoke-virtual {p1, p3, p2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x26618059    # 7.82365E-16f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x3d074e9c

    if-eq v1, v2, :cond_3

    const v2, 0x4617d14a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "mainlooper"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x360802

    if-eq v0, v1, :cond_2

    const v1, 0x68ac462

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "start"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/performance/monitor/MainLooperMonitor;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "stop"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/performance/monitor/MainLooperMonitor;->stop()V

    goto :goto_0

    :cond_3
    const-string v1, "mainlooper.messagelogging"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/MainLooperMonitor;->setMessageLogging(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "mainlooper.tracetag"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/performance/monitor/MainLooperMonitor;->setTraceTag(J)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/miui/performance/monitor/MainLooperMonitor$start$1;

    invoke-direct {v1, v0}, Lcom/miui/performance/monitor/MainLooperMonitor$start$1;-><init>(Landroid/os/Looper;)V

    check-cast v1, Landroid/os/Looper$Observer;

    invoke-static {v1}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    return-void
.end method
