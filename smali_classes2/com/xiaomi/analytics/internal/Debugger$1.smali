.class Lcom/xiaomi/analytics/internal/Debugger$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/Debugger$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/Debugger;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/Debugger;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/Debugger$1;->this$0:Lcom/xiaomi/analytics/internal/Debugger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/Debugger$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/Debugger$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Debugger"

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    sput-boolean p2, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    goto :goto_0

    :cond_1
    const-string p1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sput-boolean v0, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    goto :goto_0

    :cond_2
    const-string p1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sput-boolean p2, Lcom/xiaomi/analytics/internal/Debugger;->sUseStaging:Z

    goto :goto_0

    :cond_3
    const-string p1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sput-boolean v0, Lcom/xiaomi/analytics/internal/Debugger;->sUseStaging:Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/analytics/internal/Debugger$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/analytics/internal/Debugger$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
