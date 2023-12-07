.class Lcom/xiaomi/onetrack/api/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/c$a;-><init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const-string v2, "BroadcastManager"

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "screenReceiver exception: "

    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-gt v0, v3, :cond_4

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    move v4, v1

    :cond_3
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result p1

    if-nez p1, :cond_5

    move v4, v1

    :cond_5
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    move v4, p1

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only one of allowed NetworkInfo :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isRestrictGetNetworkInfo()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,network status changed, isNetworkConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->c(Lcom/xiaomi/onetrack/api/c;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/a/c/b;->a(Z)V

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->d(Lcom/xiaomi/onetrack/api/c;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/xiaomi/onetrack/c/s;->a()Lcom/xiaomi/onetrack/c/s;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/c/s;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_BROADCAST_NET_RECEIVER throwable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9
    return-void
.end method
