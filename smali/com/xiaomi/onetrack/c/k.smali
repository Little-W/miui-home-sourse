.class public Lcom/xiaomi/onetrack/c/k;
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

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x3e8

    .line 26
    iput p1, p0, Lcom/xiaomi/onetrack/c/k;->e:I

    const/16 p1, 0x2710

    .line 27
    iput p1, p0, Lcom/xiaomi/onetrack/c/k;->f:I

    const v0, 0x124f80

    .line 28
    iput v0, p0, Lcom/xiaomi/onetrack/c/k;->g:I

    .line 30
    iput p1, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    .line 121
    new-instance p1, Lcom/xiaomi/onetrack/c/l;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/c/l;-><init>(Lcom/xiaomi/onetrack/c/k;)V

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/k;->i:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/m;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/c/k;->removeMessages(I)V

    .line 95
    iget v2, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    .line 96
    iget v1, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    const v2, 0x124f80

    if-le v1, v2, :cond_0

    .line 97
    iput v2, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    :cond_0
    const-string v1, "UploadTimer"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will restart retry msg after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v1, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/c/k;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x2710

    .line 103
    iput v0, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    const-string v0, "UploadTimer"

    const-string v1, "retry success"

    .line 104
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(IJ)V
    .locals 3

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/k;->removeMessages(I)V

    const-string v0, "UploadTimer"

    .line 147
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

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/c/k;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/k;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "UploadTimer"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/c/k;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "UploadTimer"

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in retry mode, return, prio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/k;->removeMessages(I)V

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/c/k;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/l;->a(I)I

    move-result p2

    int-to-long v0, p2

    :goto_0
    const-string p2, "UploadTimer"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will check prio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/onetrack/c/k;->a(IJ)V

    :cond_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/k;->a()V

    return-void

    .line 76
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 77
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/c/m;->a(I)Z

    move-result v0

    const-string v2, "UploadTimer"

    .line 78
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

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p1, "UploadTimer"

    const-string v0, "handleCheckUpload failed, will check if need to send retry msg"

    .line 80
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/c/k;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 83
    iget p1, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/onetrack/c/k;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "UploadTimer"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fire retry timer after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/onetrack/c/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "UploadTimer"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u7528\u5904\u7406\u6d88\u606f, available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \u662f\u5426\u6709\u7f51="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \u6570\u636e\u5e93\u662f\u5426\u4e3a\u7a7a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/xiaomi/onetrack/b/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
