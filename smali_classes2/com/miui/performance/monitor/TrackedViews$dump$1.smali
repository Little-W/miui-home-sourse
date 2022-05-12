.class final Lcom/miui/performance/monitor/TrackedViews$dump$1;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/TrackedViews;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/miui/performance/monitor/ViewLeakReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $now:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/performance/monitor/TrackedViews$dump$1;->$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/performance/monitor/ViewLeakReference;)Z
    .locals 5

    .line 184
    sget-object v0, Lcom/miui/performance/monitor/TrackedViews;->INSTANCE:Lcom/miui/performance/monitor/TrackedViews;

    invoke-virtual {p1}, Lcom/miui/performance/monitor/ViewLeakReference;->getCreatedUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/performance/monitor/TrackedViews$dump$1;->$now:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/performance/monitor/TrackedViews;->access$isOld(Lcom/miui/performance/monitor/TrackedViews;JJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 134
    check-cast p1, Lcom/miui/performance/monitor/ViewLeakReference;

    invoke-virtual {p0, p1}, Lcom/miui/performance/monitor/TrackedViews$dump$1;->test(Lcom/miui/performance/monitor/ViewLeakReference;)Z

    move-result p1

    return p1
.end method
