.class Lcom/xiaomi/analytics/internal/SdkManager$5;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/SdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/SdkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 417
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2200()Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2300(Lcom/xiaomi/analytics/internal/SdkManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 420
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1302(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 421
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$5;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "SdkManager"

    const-string v2, "pending dex init executed, unregister and clear pending"

    .line 422
    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SdkManager"

    const-string v2, "skip init dex"

    .line 424
    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    const-string v2, "dexInitTask"

    .line 428
    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
