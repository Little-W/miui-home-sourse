.class Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    const-string p1, "SysAnalytics"

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const-string v0, "onServiceConnected %s, pid:%d, tid:%d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "SysAnalytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected notifyAll exception:"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$400(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "SysAnalytics"

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "onServiceDisconnected, pid:%d, tid:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p1, v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p0, v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    return-void
.end method
