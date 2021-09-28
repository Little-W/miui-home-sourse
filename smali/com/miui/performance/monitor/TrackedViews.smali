.class public final Lcom/miui/performance/monitor/TrackedViews;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewLeakMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLeakMonitor.kt\ncom/miui/performance/monitor/TrackedViews\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n1819#2,2:198\n1819#2,2:200\n*E\n*S KotlinDebug\n*F\n+ 1 ViewLeakMonitor.kt\ncom/miui/performance/monitor/TrackedViews\n*L\n166#1,2:198\n185#1,2:200\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

.field private static final VIEW_COLLECTION_DEADLINE_MILLIS:J

.field private static final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final viewLeakRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/performance/monitor/ViewLeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    new-instance v0, Lcom/miui/performance/monitor/TrackedViews;

    invoke-direct {v0}, Lcom/miui/performance/monitor/TrackedViews;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/performance/monitor/TrackedViews;->VIEW_COLLECTION_DEADLINE_MILLIS:J

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    .line 137
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/TrackedViews;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isOld(Lcom/miui/performance/monitor/TrackedViews;JJ)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/performance/monitor/TrackedViews;->isOld(JJ)Z

    move-result p0

    return p0
.end method

.method private final cleanUpViewRefs()V
    .locals 2

    .line 145
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    sget-object v1, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "viewLeakRefs.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/performance/monitor/ViewLeakReference;

    invoke-virtual {v1}, Lcom/miui/performance/monitor/ViewLeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final isOld(JJ)Z
    .locals 2

    .line 175
    sget-wide v0, Lcom/miui/performance/monitor/TrackedViews;->VIEW_COLLECTION_DEADLINE_MILLIS:J

    add-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final declared-synchronized countOld()I
    .locals 8

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/miui/performance/monitor/TrackedViews;->cleanUpViewRefs()V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 166
    sget-object v3, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    check-cast v3, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/performance/monitor/ViewLeakReference;

    .line 167
    sget-object v5, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    invoke-virtual {v4}, Lcom/miui/performance/monitor/ViewLeakReference;->getCreatedUptimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/miui/performance/monitor/TrackedViews;->isOld(JJ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/performance/monitor/TrackedViews;->countOld()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 182
    sget-object v2, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/miui/performance/monitor/TrackedViews$dump$1;

    invoke-direct {v3, v0, v1}, Lcom/miui/performance/monitor/TrackedViews$dump$1;-><init>(J)V

    check-cast v3, Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 184
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "viewLeakRefs.stream()\n  …lect(Collectors.toList())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/performance/monitor/ViewLeakReference;

    .line 186
    invoke-virtual {v1}, Lcom/miui/performance/monitor/ViewLeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized track(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/miui/performance/monitor/TrackedViews;->cleanUpViewRefs()V

    .line 141
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->viewLeakRefs:Ljava/util/HashSet;

    new-instance v1, Lcom/miui/performance/monitor/ViewLeakReference;

    sget-object v2, Lcom/miui/performance/monitor/TrackedViews;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Lcom/miui/performance/monitor/ViewLeakReference;-><init>(Landroid/view/View;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
