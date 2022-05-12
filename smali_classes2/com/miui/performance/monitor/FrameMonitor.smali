.class public final Lcom/miui/performance/monitor/FrameMonitor;
.super Ljava/lang/Object;
.source "FrameMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameMonitor.kt\ncom/miui/performance/monitor/FrameMonitor\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

.field private static final dropFrames:[I

.field private static final dropLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static startTimeMillis:J

.field private static stopTimeMillis:J

.field private static totalFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/miui/performance/monitor/FrameMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/FrameMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    const/16 v0, 0xb

    .line 21
    new-array v0, v0, [I

    sput-object v0, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/performance/monitor/FrameMonitor;->dropLogs:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I
    .locals 0

    .line 11
    sget-object p0, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    return-object p0
.end method

.method public static final synthetic access$getDropLogs$p(Lcom/miui/performance/monitor/FrameMonitor;)Ljava/util/List;
    .locals 0

    .line 11
    sget-object p0, Lcom/miui/performance/monitor/FrameMonitor;->dropLogs:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLogDir$p(Lcom/miui/performance/monitor/FrameMonitor;)Ljava/io/File;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/performance/monitor/FrameMonitor;->getLogDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStartTimeMillis$p(Lcom/miui/performance/monitor/FrameMonitor;)J
    .locals 2

    .line 11
    sget-wide v0, Lcom/miui/performance/monitor/FrameMonitor;->startTimeMillis:J

    return-wide v0
.end method

.method public static final synthetic access$getStopTimeMillis$p(Lcom/miui/performance/monitor/FrameMonitor;)J
    .locals 2

    .line 11
    sget-wide v0, Lcom/miui/performance/monitor/FrameMonitor;->stopTimeMillis:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalFrame$p(Lcom/miui/performance/monitor/FrameMonitor;)I
    .locals 0

    .line 11
    sget p0, Lcom/miui/performance/monitor/FrameMonitor;->totalFrame:I

    return p0
.end method

.method public static final synthetic access$setTotalFrame$p(Lcom/miui/performance/monitor/FrameMonitor;I)V
    .locals 0

    .line 11
    sput p1, Lcom/miui/performance/monitor/FrameMonitor;->totalFrame:I

    return-void
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
    .locals 4

    const/4 v0, 0x0

    .line 60
    sput v0, Lcom/miui/performance/monitor/FrameMonitor;->totalFrame:I

    .line 61
    sget-object v1, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    array-length v1, v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 62
    sget-object v3, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/miui/performance/monitor/FrameMonitor;->dropLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    invoke-direct {p0}, Lcom/miui/performance/monitor/FrameMonitor;->start()V

    return-void
.end method

.method private final start()V
    .locals 4

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/performance/monitor/FrameMonitor;->startTimeMillis:J

    .line 40
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    invoke-virtual {v0}, Lcom/miui/performance/tools/ChoreographerExt;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 41
    sget-object v2, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    new-instance v3, Lcom/miui/performance/monitor/FrameMonitor$start$1;

    invoke-direct {v3, v0, v1}, Lcom/miui/performance/monitor/FrameMonitor$start$1;-><init>(J)V

    check-cast v3, Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    invoke-virtual {v2, v3}, Lcom/miui/performance/tools/ChoreographerExt;->addListener(Lcom/miui/performance/tools/ChoreographerExt$FrameListener;)V

    return-void
.end method

.method private final stop()V
    .locals 2

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/performance/monitor/FrameMonitor;->stopTimeMillis:J

    .line 70
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    invoke-virtual {v0}, Lcom/miui/performance/tools/ChoreographerExt;->removeListener()V

    .line 72
    sget-object v0, Lcom/miui/performance/monitor/FrameMonitor;->dropLogs:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/FrameMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor$stop$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_2

    sget-wide v0, Lcom/miui/performance/monitor/FrameMonitor;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/performance/monitor/FrameMonitor;->startTimeMillis:J

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<<FrameMonitor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    invoke-virtual {p3}, Lcom/miui/performance/tools/ChoreographerExt;->getRefreshRate()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "Hz>>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In the past "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " seconds, total "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/miui/performance/monitor/FrameMonitor;->totalFrame:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " drop "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " frames."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p1, 0x9

    const/4 p3, 0x1

    :goto_0
    if-gt p3, p1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Drop >= 10 frames: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/performance/monitor/FrameMonitor;->dropFrames:[I

    const/16 v0, 0xa

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5d2a96d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "frame"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 29
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

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/FrameMonitor;->restart()V

    goto :goto_0

    :cond_3
    const-string v0, "start"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/FrameMonitor;->start()V

    goto :goto_0

    :cond_4
    const-string v0, "stop"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/FrameMonitor;->stop()V

    :cond_5
    :goto_0
    return-void
.end method
