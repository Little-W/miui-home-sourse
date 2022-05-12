.class public final Lcom/miui/performance/monitor/EvilMethodMonitor;
.super Ljava/lang/Object;
.source "EvilMethodMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvilMethodMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvilMethodMonitor.kt\ncom/miui/performance/monitor/EvilMethodMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1022#2:85\n*E\n*S KotlinDebug\n*F\n+ 1 EvilMethodMonitor.kt\ncom/miui/performance/monitor/EvilMethodMonitor\n*L\n79#1:85\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

.field private static enabled:Z

.field private static listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

.field private static final traces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/miui/performance/monitor/EvilMethodMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/EvilMethodMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnabled$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Z
    .locals 0

    .line 11
    sget-boolean p0, Lcom/miui/performance/monitor/EvilMethodMonitor;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getLogDir$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Ljava/io/File;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->getLogDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTraces$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 11
    sget-object p0, Lcom/miui/performance/monitor/EvilMethodMonitor;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final getLogDir()Ljava/io/File;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getLogDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final restart()V
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 56
    invoke-direct {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->start()V

    return-void
.end method

.method private final start()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->enabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->enabled:Z

    .line 41
    sget-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/miui/performance/monitor/EvilMethodMonitor$start$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/EvilMethodMonitor$start$1;-><init>()V

    check-cast v0, Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    sput-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    .line 50
    sget-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    invoke-static {v0}, Lcom/miui/performance/tracer/MethodTracer;->start(Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;)V

    :cond_1
    return-void
.end method

.method private final stop()V
    .locals 2

    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->enabled:Z

    .line 61
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/miui/performance/monitor/EvilMethodMonitor;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<<EvilMethodMonitor: >>"

    .line 77
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/miui/performance/monitor/EvilMethodMonitor;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "traces.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 85
    new-instance p3, Lcom/miui/performance/monitor/EvilMethodMonitor$dump$$inlined$sortedByDescending$1;

    invoke-direct {p3}, Lcom/miui/performance/monitor/EvilMethodMonitor$dump$$inlined$sortedByDescending$1;-><init>()V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/miui/performance/monitor/EvilMethodMonitor$dump$2;

    invoke-direct {p3, p2}, Lcom/miui/performance/monitor/EvilMethodMonitor$dump$2;-><init>(Ljava/io/PrintWriter;)V

    check-cast p3, Ljava/util/function/Consumer;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, ""

    .line 82
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x403a2f1f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "method"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x360802

    if-eq v0, v1, :cond_4

    const v1, 0x68ac462

    if-eq v0, v1, :cond_3

    const v1, 0x416a9e0f

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "restart"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->restart()V

    goto :goto_0

    :cond_3
    const-string v0, "start"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->start()V

    goto :goto_0

    :cond_4
    const-string v0, "stop"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->stop()V

    :cond_5
    :goto_0
    return-void
.end method
