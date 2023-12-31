.class Lcom/xiaomi/analytics/internal/SdkManager$2;
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

    .line 168
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x1

    .line 172
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$400(Lcom/xiaomi/analytics/internal/SdkManager;)V

    const/4 v2, 0x0

    .line 177
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$500(Lcom/xiaomi/analytics/internal/SdkManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$700(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 179
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$800(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "SdkManager"

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sys version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SdkManager"

    const-string v4, "use system analytics only, so don\'t load asset/local analytics.apk"

    .line 190
    invoke-static {v3, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 192
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    return-void

    .line 197
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v3

    const-string v4, "SdkManager"

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets analytics null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-nez v3, :cond_4

    move v7, v0

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v4

    const-string v5, "SdkManager"

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local analytics null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_5

    move v6, v0

    :cond_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    if-eqz v4, :cond_6

    .line 202
    invoke-interface {v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    invoke-interface {v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v5

    if-lez v5, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_8

    const-string v4, "SdkManager"

    const-string v5, "use assets analytics."

    .line 206
    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v3, "SdkManager"

    const-string v5, "use local analytics."

    .line 203
    invoke-static {v3, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    if-eqz v3, :cond_9

    .line 210
    invoke-interface {v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v4

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v4

    if-lez v4, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_c

    const-string v4, "SdkManager"

    const-string v5, "use sys analytics."

    .line 218
    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v4, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1302(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 221
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1400(Lcom/xiaomi/analytics/internal/SdkManager;)V

    goto :goto_4

    :cond_a
    :goto_3
    const-string v2, "SdkManager"

    const-string v4, "use dex analytics."

    .line 211
    invoke-static {v2, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    .line 214
    invoke-interface {v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 216
    :cond_b
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1200(Lcom/xiaomi/analytics/internal/SdkManager;Z)V

    move-object v2, v3

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    .line 224
    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/analytics/internal/Constants;->MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

    invoke-virtual {v3, v4}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v3

    if-ltz v3, :cond_d

    .line 225
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 227
    :cond_d
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1500(Lcom/xiaomi/analytics/internal/SdkManager;)V

    .line 229
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 230
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "SdkManager"

    .line 232
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "heavy work exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    :goto_5
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    return-void

    :goto_6
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$2;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    throw v1
.end method
