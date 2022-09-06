.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$BNfImsYoLnaVLV8iLc13kBmbS5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$BNfImsYoLnaVLV8iLc13kBmbS5c;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$BNfImsYoLnaVLV8iLc13kBmbS5c;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->lambda$dumpHprofData$1(Ljava/io/File;)V

    return-void
.end method
