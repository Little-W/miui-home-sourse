.class public final Lcom/miui/performance/monitor/EvilMethodMonitor$start$1;
.super Ljava/lang/Object;
.source "EvilMethodMonitor.kt"

# interfaces
.implements Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/EvilMethodMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvilMethodMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvilMethodMonitor.kt\ncom/miui/performance/monitor/EvilMethodMonitor$start$1\n*L\n1#1,83:1\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(JJ[I)V
    .locals 2

    const-string v0, "trace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    invoke-static {v0}, Lcom/miui/performance/monitor/EvilMethodMonitor;->access$getEnabled$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p5

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.util.Arrays.toString(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object p2, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    invoke-static {p2}, Lcom/miui/performance/monitor/EvilMethodMonitor;->access$getTraces$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
