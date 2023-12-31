.class Lcom/xiaomi/analytics/internal/SdkManager$3;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;


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

    .line 320
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApkUpdated(Ljava/lang/String;Z)V
    .locals 0

    .line 324
    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SdkManager"

    const-string p2, "download finished, use new analytics."

    .line 325
    invoke-static {p1, p2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->init()V

    .line 330
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p2, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 331
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 333
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$3;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->isForeground(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_2
    :goto_0
    return-void
.end method
