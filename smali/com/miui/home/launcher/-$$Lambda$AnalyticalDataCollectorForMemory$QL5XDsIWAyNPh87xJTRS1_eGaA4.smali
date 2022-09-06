.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorForMemory$QL5XDsIWAyNPh87xJTRS1_eGaA4;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForMemory;->lambda$uploadHprofIfNeeded$0(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
