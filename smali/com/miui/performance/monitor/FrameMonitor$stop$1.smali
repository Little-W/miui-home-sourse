.class final Lcom/miui/performance/monitor/FrameMonitor$stop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FrameMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/FrameMonitor;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameMonitor.kt\ncom/miui/performance/monitor/FrameMonitor$stop$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1819#2,2:112\n*E\n*S KotlinDebug\n*F\n+ 1 FrameMonitor.kt\ncom/miui/performance/monitor/FrameMonitor$stop$1\n*L\n74#1,2:112\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/FrameMonitor$stop$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/monitor/FrameMonitor$stop$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/FrameMonitor$stop$1;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/FrameMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor$stop$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/miui/performance/monitor/FrameMonitor$stop$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 70
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v3}, Lcom/miui/performance/monitor/FrameMonitor;->access$getLogDir$p(Lcom/miui/performance/monitor/FrameMonitor;)Ljava/io/File;

    move-result-object v3

    const-string v4, "frame.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/sql/Timestamp;

    sget-object v4, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v4}, Lcom/miui/performance/monitor/FrameMonitor;->access$getStartTimeMillis$p(Lcom/miui/performance/monitor/FrameMonitor;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/sql/Timestamp;

    sget-object v4, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v4}, Lcom/miui/performance/monitor/FrameMonitor;->access$getStopTimeMillis$p(Lcom/miui/performance/monitor/FrameMonitor;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 73
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 74
    sget-object v1, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v1}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropLogs$p(Lcom/miui/performance/monitor/FrameMonitor;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 112
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    invoke-virtual {v2}, Lcom/miui/performance/tools/ChoreographerExt;->getRefreshRate()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total drop frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v2}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    const/16 v1, 0x9

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v4}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop >= 10 frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    invoke-static {v2}, Lcom/miui/performance/monitor/FrameMonitor;->access$getDropFrames$p(Lcom/miui/performance/monitor/FrameMonitor;)[I

    move-result-object v2

    const/16 v3, 0xa

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "FrameMonitor"

    const-string v2, "save2Local"

    .line 91
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
