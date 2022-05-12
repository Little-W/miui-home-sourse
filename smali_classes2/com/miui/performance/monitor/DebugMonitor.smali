.class public final Lcom/miui/performance/monitor/DebugMonitor;
.super Ljava/lang/Object;
.source "DebugMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMonitor.kt\ncom/miui/performance/monitor/DebugMonitor\n*L\n1#1,39:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/DebugMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/miui/performance/monitor/DebugMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/DebugMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/DebugMonitor;->INSTANCE:Lcom/miui/performance/monitor/DebugMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final debugTrace(Z)V
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const-string v0, "persist.sys.perfdebug.monitor.catalog"

    const-string v1, ""

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.perfdebug.monitor.catalog"

    if-eqz p1, :cond_0

    const-string p1, "all"

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 31
    :goto_0
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->prepareMonitor()V

    const-string p1, "persist.sys.perfdebug.monitor.catalog"

    .line 33
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x642429ea

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "debug.trace"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/performance/monitor/DebugMonitor;->debugTrace(Z)V

    :cond_1
    :goto_0
    return-void
.end method
