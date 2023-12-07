.class Lcom/xiaomi/analytics/internal/SdkManager$4;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/SdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/SdkManager$4$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/SdkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/SdkManager$4;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/SdkManager$4;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "SdkManager"

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1702(Lcom/xiaomi/analytics/internal/SdkManager;J)J

    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1900(Lcom/xiaomi/analytics/internal/SdkManager;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2000(Lcom/xiaomi/analytics/internal/SdkManager;J)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p2, "pending dex is null, unregister"

    invoke-static {p1, p2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen off : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1800(Lcom/xiaomi/analytics/internal/SdkManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "mScreenReceiver onReceive e"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/analytics/internal/SdkManager$4$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/analytics/internal/SdkManager$4;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
