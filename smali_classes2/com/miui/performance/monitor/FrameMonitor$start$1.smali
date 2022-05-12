.class public final Lcom/miui/performance/monitor/FrameMonitor$start$1;
.super Ljava/lang/Object;
.source "FrameMonitor.kt"

# interfaces
.implements Lcom/miui/performance/tools/ChoreographerExt$FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/FrameMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $frameIntervalNanos:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/miui/performance/monitor/FrameMonitor$start$1;->$frameIntervalNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(JJJLjava/lang/String;)V
    .locals 0

    const-string p3, "cost"

    invoke-static {p7, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object p3, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {p3}, Lcom/miui/performance/monitor/FrameMonitor;->access$getTotalFrame$p(Lcom/miui/performance/monitor/FrameMonitor;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Lcom/miui/performance/monitor/FrameMonitor;->access$setTotalFrame$p(Lcom/miui/performance/monitor/FrameMonitor;I)V

    sub-long/2addr p5, p1

    .line 45
    iget-wide p1, p0, Lcom/miui/performance/monitor/FrameMonitor$start$1;->$frameIntervalNanos:J

    cmp-long p3, p5, p1

    if-lez p3, :cond_1

    .line 46
    div-long/2addr p5, p1

    long-to-int p1, p5

    .line 47
    sget-object p2, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {p2}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget p4, p2, p3

    add-int/2addr p4, p1

    aput p4, p2, p3

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    .line 49
    sget-object p2, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {p2}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object p2

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    goto :goto_0

    .line 51
    :cond_0
    sget-object p3, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {p3}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object p3

    aget p4, p3, p2

    add-int/lit8 p4, p4, 0x1

    aput p4, p3, p2

    .line 53
    :goto_0
    sget-object p2, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {p2}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropLogs$p(Lcom/miui/performance/monitor/FrameMonitor;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-direct {p4, p5, p6}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
