.class Lcom/miui/home/launcher/common/AdvertisingIdClient$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .annotation runtime Lme/ele/lancet/base/annotations/Proxy;
        value = "e"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        value = "android.util.Log"
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/aop/LogHooker;->useFileLogger()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/elvishew/xlog/XLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/AdvertisingIdClient;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
