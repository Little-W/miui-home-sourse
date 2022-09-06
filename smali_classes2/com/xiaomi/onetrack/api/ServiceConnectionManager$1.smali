.class Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/an;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/an;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 159
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->e(Lcom/xiaomi/onetrack/api/an;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/an;->d(Lcom/xiaomi/onetrack/api/an;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ServiceConnectManager"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "ServiceConnectManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 173
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 174
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ServiceConnectManager"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNullBinding throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 137
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->b(Lcom/xiaomi/onetrack/api/an;)V

    const-string p1, "ServiceConnectManager"

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected  mConnecting "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIOneTrackService "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/an;->c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ServiceConnectManager"

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 148
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "ServiceConnectManager"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:  mConnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/an;->a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIOneTrackService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/an;->c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ServiceConnectManager"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
