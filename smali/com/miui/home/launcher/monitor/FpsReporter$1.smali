.class Lcom/miui/home/launcher/monitor/FpsReporter$1;
.super Lcom/miui/home/launcher/monitor/LooperObserver;
.source "FpsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/monitor/FpsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/monitor/FpsReporter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/monitor/FpsReporter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/LooperObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(Ljava/lang/String;JJJJJJ)V
    .locals 0

    .line 98
    invoke-super/range {p0 .. p13}, Lcom/miui/home/launcher/monitor/LooperObserver;->doFrame(Ljava/lang/String;JJJJJJ)V

    const-wide/16 p4, 0x0

    cmp-long p1, p6, p4

    if-lez p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$000(Lcom/miui/home/launcher/monitor/FpsReporter;)J

    move-result-wide p4

    const-wide/16 p6, -0x1

    cmp-long p1, p4, p6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$100(Lcom/miui/home/launcher/monitor/FpsReporter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$002(Lcom/miui/home/launcher/monitor/FpsReporter;J)J

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$000(Lcom/miui/home/launcher/monitor/FpsReporter;)J

    move-result-wide p4

    cmp-long p1, p4, p6

    if-nez p1, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$000(Lcom/miui/home/launcher/monitor/FpsReporter;)J

    move-result-wide p4

    sub-long p4, p2, p4

    const-wide/16 p6, 0x1e

    cmp-long p1, p4, p6

    if-lez p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$200(Lcom/miui/home/launcher/monitor/FpsReporter;)J

    move-result-wide p6

    add-long/2addr p6, p4

    invoke-static {p1, p6, p7}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$202(Lcom/miui/home/launcher/monitor/FpsReporter;J)J

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$308(Lcom/miui/home/launcher/monitor/FpsReporter;)I

    :cond_2
    const-wide/16 p6, 0x46

    cmp-long p1, p4, p6

    if-ltz p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$400(Lcom/miui/home/launcher/monitor/FpsReporter;)J

    move-result-wide p6

    add-long/2addr p6, p4

    invoke-static {p1, p6, p7}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$402(Lcom/miui/home/launcher/monitor/FpsReporter;J)J

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$508(Lcom/miui/home/launcher/monitor/FpsReporter;)I

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$600(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ","

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$002(Lcom/miui/home/launcher/monitor/FpsReporter;J)J

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$700(Lcom/miui/home/launcher/monitor/FpsReporter;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$800(Lcom/miui/home/launcher/monitor/FpsReporter;)V

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$1;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$900(Lcom/miui/home/launcher/monitor/FpsReporter;)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p2, p4

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$902(Lcom/miui/home/launcher/monitor/FpsReporter;I)I

    :cond_5
    return-void
.end method
