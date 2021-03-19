.class Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/core/LooperMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperPrinter"
.end annotation


# instance fields
.field isHasChecked:Z

.field isValid:Z

.field public origin:Landroid/util/Printer;

.field final synthetic this$0:Lcom/tencent/matrix/trace/core/LooperMonitor;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/trace/core/LooperMonitor;Landroid/util/Printer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->this$0:Lcom/tencent/matrix/trace/core/LooperMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isHasChecked:Z

    .line 172
    iput-boolean p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isValid:Z

    .line 175
    iput-object p2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->origin:Landroid/util/Printer;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->origin:Landroid/util/Printer;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->origin:Landroid/util/Printer;

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Matrix.LooperMonitor origin == this"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isHasChecked:Z

    const/16 v1, 0x3e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 188
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isValid:Z

    .line 189
    iput-boolean v2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isHasChecked:Z

    .line 190
    iget-boolean v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isValid:Z

    if-nez v0, :cond_4

    const-string v0, "Matrix.LooperMonitor"

    const-string v4, "[println] Printer is inValid! x:%s"

    .line 191
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0, v4, v5}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->isValid:Z

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;->this$0:Lcom/tencent/matrix/trace/core/LooperMonitor;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-static {v0, v2, p1}, Lcom/tencent/matrix/trace/core/LooperMonitor;->access$000(Lcom/tencent/matrix/trace/core/LooperMonitor;ZLjava/lang/String;)V

    :cond_6
    return-void
.end method
