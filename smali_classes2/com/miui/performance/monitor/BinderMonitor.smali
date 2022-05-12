.class public final Lcom/miui/performance/monitor/BinderMonitor;
.super Ljava/lang/Object;
.source "BinderMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinderMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinderMonitor.kt\ncom/miui/performance/monitor/BinderMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n13506#2,2:333\n1022#3:335\n1819#3,2:336\n1022#3:338\n1022#3:339\n*E\n*S KotlinDebug\n*F\n+ 1 BinderMonitor.kt\ncom/miui/performance/monitor/BinderMonitor\n*L\n196#1,2:333\n201#1:335\n201#1,2:336\n208#1:338\n221#1:339\n*E\n"
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static enableTrace:Z

.field private static final localBinderCalls:Ljava/util/concurrent/ConcurrentHashMap;
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

    .line 16
    new-instance v0, Lcom/miui/performance/monitor/BinderMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BinderMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BinderMonitor;->localBinderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinderCalls$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 16
    sget-object p0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getBinderTraces$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 16
    sget-object p0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getEnableTrace$p(Lcom/miui/performance/monitor/BinderMonitor;)Z
    .locals 0

    .line 16
    sget-boolean p0, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    return p0
.end method

.method public static final synthetic access$getLocalBinderCalls$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 16
    sget-object p0, Lcom/miui/performance/monitor/BinderMonitor;->localBinderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getLogDir$p(Lcom/miui/performance/monitor/BinderMonitor;)Ljava/io/File;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->getLogDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getLogDir()Ljava/io/File;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getLogDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final restart()V
    .locals 1

    .line 124
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 125
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 126
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->localBinderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->start()V

    return-void
.end method

.method private final start()V
    .locals 1

    .line 54
    new-instance v0, Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;-><init>()V

    .line 94
    check-cast v0, Landroid/os/Binder$ProxyTransactListener;

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 96
    new-instance v0, Lcom/miui/performance/monitor/BinderMonitor$start$observer$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BinderMonitor$start$observer$1;-><init>()V

    .line 120
    check-cast v0, Lcom/android/internal/os/BinderInternal$Observer;

    invoke-static {v0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    return-void
.end method

.method private final stop()V
    .locals 2

    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 132
    invoke-static {v0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 134
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor$stop$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    .line 149
    :cond_0
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor$stop$2;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor$stop$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    .line 173
    :cond_1
    sget-object v0, Lcom/miui/performance/monitor/BinderMonitor;->localBinderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 174
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor$stop$3;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor$stop$3;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<<BinderMonitor>>"

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binders: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Landroid/os/Binder;

    invoke-static {p3}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 193
    new-array p3, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    const-class v2, Landroid/os/Binder;

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3, p1}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object p3

    const-string v1, "instances"

    .line 194
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    xor-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 195
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 196
    aget-object p3, p3, v0

    const-string v2, "instances[0]"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    array-length v2, p3

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 197
    instance-of v5, v4, Landroid/os/Binder;

    if-eqz v5, :cond_2

    .line 198
    check-cast v4, Landroid/os/Binder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.javaClass.name"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "it.javaClass.name"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 201
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 335
    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$1;

    invoke-direct {p3}, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$1;-><init>()V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 336
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 207
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "binderCalls.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 338
    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$2;

    invoke-direct {p3}, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$2;-><init>()V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$5;

    invoke-direct {p3, p2}, Lcom/miui/performance/monitor/BinderMonitor$dump$5;-><init>(Ljava/io/PrintWriter;)V

    check-cast p3, Ljava/util/function/Consumer;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 219
    sget-boolean p1, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    if-nez p1, :cond_6

    const-string p1, ""

    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "binderTraces.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 339
    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$3;

    invoke-direct {p3}, Lcom/miui/performance/monitor/BinderMonitor$dump$$inlined$sortedByDescending$3;-><init>()V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/miui/performance/monitor/BinderMonitor$dump$7;

    invoke-direct {p3, p2}, Lcom/miui/performance/monitor/BinderMonitor$dump$7;-><init>(Ljava/io/PrintWriter;)V

    check-cast p3, Ljava/util/function/Consumer;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    const-string p1, ""

    .line 225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x52c9ea56

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x43569ca2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "binder.enabletrace"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 44
    sget-boolean v0, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    if-eq v0, p1, :cond_6

    .line 45
    sput-boolean p1, Lcom/miui/performance/monitor/BinderMonitor;->enableTrace:Z

    .line 46
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 47
    sget-object p1, Lcom/miui/performance/monitor/BinderMonitor;->binderTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :cond_2
    const-string v1, "binder"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x360802

    if-eq v0, v1, :cond_5

    const v1, 0x68ac462

    if-eq v0, v1, :cond_4

    const v1, 0x416a9e0f

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "restart"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->restart()V

    goto :goto_0

    :cond_4
    const-string v0, "start"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->start()V

    goto :goto_0

    :cond_5
    const-string v0, "stop"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/miui/performance/monitor/BinderMonitor;->stop()V

    :cond_6
    :goto_0
    return-void
.end method
