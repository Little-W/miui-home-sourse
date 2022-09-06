.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/io/File;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$No63sYy-qJXLOfogJrNwvPIUumM;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->lambda$dumpHprofData$2(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
