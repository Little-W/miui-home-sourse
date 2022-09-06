.class final Lcom/xiaomi/onetrack/a/c/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(IJ)V
    .locals 3

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/c/b$a;->removeMessages(I)V

    const-string v0, "AdMonitorUploadTimer"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "will post msg, prio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/c/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/a/c/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/c/b$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "AdMonitorUploadTimer"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "will check prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(IJ)V

    goto :goto_0

    :cond_0
    const-string v0, "AdMonitorUploadTimer"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has message\u3000prio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "AdMonitorUploadTimer"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMonitorUploadTimer.handleMessage, msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 83
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    const-string v0, "AdMonitorUploadTimer"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMonitorUploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(IJ)V

    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/d;->a()V

    return-void
.end method
