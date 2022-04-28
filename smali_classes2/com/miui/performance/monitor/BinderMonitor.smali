.class public final Lcom/miui/performance/monitor/BinderMonitor;
.super Ljava/lang/Object;
.source "BinderMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinderMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinderMonitor.kt\ncom/miui/performance/monitor/BinderMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1022#2:139\n*E\n*S KotlinDebug\n*F\n+ 1 BinderMonitor.kt\ncom/miui/performance/monitor/BinderMonitor\n*L\n125#1:139\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/BinderMonitor;

.field private static final binderCalls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final binderTraces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static enableTrace:Z

.field private static final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/miui/performance/monitor/BinderMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BinderMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor;

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/miui/performance/monitor/BinderMonitor;->pid:I

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinderCalls$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 14
    sget-object p0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getBinderTraces$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 14
    sget-object p0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getLogDir$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/io/File;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->getLogDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getLogDir()Ljava/io/File;
    .locals 1

    .line 20
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getLogDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final restart()V
    .locals 1

    .line 79
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 80
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->start()V

    return-void
.end method

.method private final start()V
    .locals 1

    .line 43
    new-instance v0, Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;-><init>()V

    .line 75
    check-cast v0, Landroid/os/Binder$ProxyTransactListener;

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    return-void
.end method

.method private final stop()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 87
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor$stop$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    .line 102
    :cond_0
    sget-boolean v0, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor$stop$2;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor$stop$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "<<BinderMonitor>>"

    .line 123
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "binderCalls.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 139
    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$1;

    invoke-direct {p3}, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$1;-><init>()V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$2;

    invoke-direct {p3, p2}, Lcom/miui/performance/monitor/BinderMonitor$dump$2;-><init>(Ljava/io/PrintWriter;)V

    check-cast p3, Ljava/util/function/Consumer;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, ""

    .line 134
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x52c9ea56

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x3a7373ff

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "binder.trace"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    goto :goto_0

    :cond_1
    const-string v1, "binder"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->restart()V

    goto :goto_0

    :cond_3
    const-string v0, "start"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->start()V

    goto :goto_0

    :cond_4
    const-string v0, "stop"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->stop()V

    :cond_5
    :goto_0
    return-void
.end method
