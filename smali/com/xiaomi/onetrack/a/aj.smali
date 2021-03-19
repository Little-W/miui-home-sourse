.class Lcom/xiaomi/onetrack/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/ai;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/ai;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/ai;->a(Lcom/xiaomi/onetrack/a/ai;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->b(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->c(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/a/ai;->a(Lcom/xiaomi/onetrack/a/ai;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 131
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/ai;->d(Lcom/xiaomi/onetrack/a/ai;)V

    const-string p1, "ServiceConnectManager"

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected  mConnecting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->b(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mIOneTrackService "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->e(Lcom/xiaomi/onetrack/a/ai;)Lcom/miui/analytics/ITrack;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 131
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/ai;->a(Lcom/xiaomi/onetrack/a/ai;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/ai;->a(Lcom/xiaomi/onetrack/a/ai;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 140
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->b(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ai;->c(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "ServiceConnectManager"

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:  mConnecting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/ai;->b(Lcom/xiaomi/onetrack/a/ai;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIOneTrackService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/ai;->e(Lcom/xiaomi/onetrack/a/ai;)Lcom/miui/analytics/ITrack;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 142
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
