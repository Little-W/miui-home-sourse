.class Lcom/xiaomi/analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/Analytics;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaomi/analytics/Analytics$1;->this$0:Lcom/xiaomi/analytics/Analytics;

    iput p2, p0, Lcom/xiaomi/analytics/Analytics$1;->val$timeout:I

    iput-object p3, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/analytics/Analytics$1;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget v4, p0, Lcom/xiaomi/analytics/Analytics$1;->val$timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/xiaomi/analytics/Analytics$1;->this$0:Lcom/xiaomi/analytics/Analytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/Analytics;->access$000(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v3, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getClientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/analytics/Analytics$1;->val$configKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->isPolicyReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
