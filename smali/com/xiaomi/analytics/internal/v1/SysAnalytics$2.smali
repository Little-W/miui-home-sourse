.class Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->drainPendingEvents()V
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

    .line 113
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "com.miui.analytics.ICore"

    .line 121
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "trackEvents"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 122
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .line 123
    invoke-static {v3}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SysAnalytics"

    const-string v2, "onServiceConnected drain %d pending events"

    .line 124
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SysAnalytics"

    .line 128
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected drain pending events exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
