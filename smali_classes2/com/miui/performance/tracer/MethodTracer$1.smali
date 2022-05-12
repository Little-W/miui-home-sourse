.class Lcom/miui/performance/tracer/MethodTracer$1;
.super Ljava/lang/Object;
.source "MethodTracer.java"

# interfaces
.implements Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/tracer/MethodTracer;->start(Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dispatchTimeMillis:J

.field private start:I

.field private uptimeMillis:J

.field final synthetic val$listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;


# direct methods
.method constructor <init>(Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/miui/performance/tracer/MethodTracer$1;->val$listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/miui/performance/tracer/MethodTracer$1;->uptimeMillis:J

    .line 73
    iput-wide v0, p0, Lcom/miui/performance/tracer/MethodTracer$1;->dispatchTimeMillis:J

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/miui/performance/tracer/MethodTracer$1;->start:I

    return-void
.end method


# virtual methods
.method public dispatchEnd(Ljava/lang/String;)V
    .locals 10

    .line 86
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->access$200()V

    .line 87
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->access$100()I

    move-result p1

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/performance/tracer/MethodTracer$1;->uptimeMillis:J

    sub-long v7, v0, v2

    const-wide/16 v0, 0x10

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 91
    iget v0, p0, Lcom/miui/performance/tracer/MethodTracer$1;->start:I

    invoke-static {v0, p1}, Lcom/miui/performance/tracer/MethodTracer;->access$300(II)[J

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/miui/performance/tracer/MethodTracer;->access$400([J)[I

    move-result-object v9

    .line 94
    iget-object v4, p0, Lcom/miui/performance/tracer/MethodTracer$1;->val$listener:Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;

    iget-wide v5, p0, Lcom/miui/performance/tracer/MethodTracer$1;->dispatchTimeMillis:J

    invoke-interface/range {v4 .. v9}, Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;->report(JJ[I)V

    :cond_0
    return-void
.end method

.method public dispatchStart(Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->access$000()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/performance/tracer/MethodTracer$1;->dispatchTimeMillis:J

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/performance/tracer/MethodTracer$1;->uptimeMillis:J

    .line 81
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->access$100()I

    move-result p1

    iput p1, p0, Lcom/miui/performance/tracer/MethodTracer$1;->start:I

    return-void
.end method
