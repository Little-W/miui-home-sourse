.class public final Lcom/miui/performance/monitor/ViewLeakReference;
.super Ljava/lang/ref/WeakReference;
.source "ViewLeakMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final createdUptimeMillis:J


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/performance/monitor/ViewLeakReference;->clazz:Ljava/lang/Class;

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/performance/monitor/ViewLeakReference;->createdUptimeMillis:J

    return-void
.end method


# virtual methods
.method public final getCreatedUptimeMillis()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/miui/performance/monitor/ViewLeakReference;->createdUptimeMillis:J

    return-wide v0
.end method
