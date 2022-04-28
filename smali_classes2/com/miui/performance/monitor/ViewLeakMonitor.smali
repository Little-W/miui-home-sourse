.class public final Lcom/miui/performance/monitor/ViewLeakMonitor;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewLeakMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLeakMonitor.kt\ncom/miui/performance/monitor/ViewLeakMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,197:1\n13506#2,2:198\n13506#2,2:200\n1256#3,2:202\n*E\n*S KotlinDebug\n*F\n+ 1 ViewLeakMonitor.kt\ncom/miui/performance/monitor/ViewLeakMonitor\n*L\n65#1,2:198\n74#1,2:200\n86#1,2:202\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

.field private static final check:Ljava/lang/Runnable;

.field private static interval:J

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/ViewLeakMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->map:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->check:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    .line 30
    sput-wide v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->interval:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkLeak(Lcom/miui/performance/monitor/ViewLeakMonitor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->checkLeak()V

    return-void
.end method

.method public static final synthetic access$getBgHandler$p(Lcom/miui/performance/monitor/ViewLeakMonitor;)Landroid/os/Handler;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMap$p(Lcom/miui/performance/monitor/ViewLeakMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 22
    sget-object p0, Lcom/miui/performance/monitor/ViewLeakMonitor;->map:Ljava/util/HashMap;

    return-object p0
.end method

.method private final checkLeak()V
    .locals 4

    .line 114
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    invoke-virtual {v0}, Lcom/miui/performance/monitor/TrackedViews;->countOld()I

    move-result v0

    const-string v1, "ViewLeakMonitor"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLeak count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/miui/performance/util/Notifications;->Companion:Lcom/miui/performance/util/Notifications$Companion;

    invoke-virtual {v1, v0}, Lcom/miui/performance/util/Notifications$Companion;->alertLeak(I)V

    if-lez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor$checkLeak$1;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor$checkLeak$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->check:Ljava/lang/Runnable;

    sget-wide v2, Lcom/miui/performance/monitor/ViewLeakMonitor;->interval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final getBgHandler()Landroid/os/Handler;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private final start()V
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->check:Ljava/lang/Runnable;

    sget-wide v2, Lcom/miui/performance/monitor/ViewLeakMonitor;->interval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final stop()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final trackAllWindows()V
    .locals 7

    .line 73
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const-string v1, "wmg"

    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "wmg.viewRootNames"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 75
    sget-object v5, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-virtual {v0, v4}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    const-string v6, "wmg.getRootView(it)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4}, Lcom/miui/performance/monitor/ViewLeakMonitor;->trackCustomViews(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final trackCustomViews(Landroid/view/View;)V
    .locals 3

    const-string v0, "ViewLeakMonitor"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCustomViews "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 85
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/miui/performance/util/ExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->isCustomView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ViewLeakMonitor;->trackView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final trackView(Landroid/view/View;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/ViewLeakMonitor$trackView$listener$1;-><init>()V

    .line 109
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 110
    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->map:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final trackWindow(Ljava/lang/String;)V
    .locals 8

    .line 64
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const-string v1, "wmg"

    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "wmg.viewRootNames"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, "it"

    .line 66
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, p1, v3, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    sget-object v6, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-virtual {v0, v5}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    const-string v7, "wmg.getRootView(it)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5}, Lcom/miui/performance/monitor/ViewLeakMonitor;->trackCustomViews(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object p1, Lcom/miui/performance/monitor/ViewLeakMonitor;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "<<ViewLeakMonitor>>"

    .line 126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 127
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    sget-object p1, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    invoke-virtual {p1, p2}, Lcom/miui/performance/monitor/TrackedViews;->dump(Ljava/io/PrintWriter;)V

    const-string p1, ""

    .line 129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7502e89b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x18ccd06b

    if-eq v1, v2, :cond_3

    const v2, 0x4751ff88

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "viewleak"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x360802

    if-eq v0, v1, :cond_2

    const v1, 0x68ac462

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "start"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->start()V

    goto :goto_1

    :cond_2
    const-string v0, "stop"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->stop()V

    goto :goto_1

    :cond_3
    const-string v1, "viewleak.interval"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->interval:J

    goto :goto_1

    :cond_4
    const-string v1, "viewleak.track"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x179a1

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "all"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->trackAllWindows()V

    goto :goto_1

    .line 44
    :cond_6
    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ViewLeakMonitor;->trackWindow(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
