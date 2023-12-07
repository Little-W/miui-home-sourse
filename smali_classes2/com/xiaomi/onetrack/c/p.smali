.class public Lcom/xiaomi/onetrack/c/p;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String; = "UploadTimer"

.field private static final b:I = 0x1388

.field private static final c:I = 0x3a98

.field private static final d:I = 0x124f80


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->e:I

    const/16 p1, 0x2710

    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->f:I

    const v0, 0x124f80

    iput v0, p0, Lcom/xiaomi/onetrack/c/p;->g:I

    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/c/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/p;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will post msg, prio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/c/p;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/s;->a(I)Z

    move-result v0

    const-string v2, "UploadTimer"

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/c/p;->removeMessages(I)V

    iget v3, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    iget v1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    const v3, 0x124f80

    if-le v1, v3, :cond_0

    iput v3, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will restart retry msg after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/c/p;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    const-string p0, "retry success"

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/c/r;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/c/r;-><init>(Lcom/xiaomi/onetrack/c/p;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IZ)V
    .locals 4

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/c/p;->hasMessages(I)Z

    move-result v0

    const-string v1, "UploadTimer"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "in retry mode, return, prio="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/p;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/p;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result p2

    int-to-long v2, p2

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "will check prio="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", delay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/onetrack/c/p;->a(IJ)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/c/q;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/q;-><init>(Lcom/xiaomi/onetrack/c/p;Z)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    move-result v0

    const-string v1, "UploadTimer"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/p;->b()V

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/c/s;->a(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckUpload ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p1, "handleCheckUpload failed, will check if need to send retry msg"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/onetrack/c/p;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/onetrack/c/p;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fire retry timer after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u4e0d\u7528\u5904\u7406\u6d88\u606f, available="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", \u662f\u5426\u6709\u7f51="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", \u6570\u636e\u5e93\u662f\u5426\u4e3a\u7a7a="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
