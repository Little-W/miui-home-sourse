.class public Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;
.super Ljava/lang/Object;
.source "OneTrackInterfaceUtils.java"


# static fields
.field public static final IS_ENABLE:Z

.field private static mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 29
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    const-string p0, "OneTrackInterfaceUtils"

    const-string v0, "OneTrack is not enable in miuiHome"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v1, "43275"

    .line 35
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v1, "home_channel"

    .line 36
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 41
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 43
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v2, "31000000517"

    .line 44
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v2, "1"

    .line 45
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setPluginId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 46
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 49
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 50
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V

    .line 52
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v2, "31000000730"

    .line 53
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v2, "miuihome_handmode"

    .line 54
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setPluginId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 55
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 52
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 58
    sget-object p0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 59
    sget-object p0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OneTrackInterfaceUtils"

    const-string v1, "init"

    .line 61
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$trackEvent$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 79
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "OneTrackInterfaceUtils"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "OneTrackInterfaceUtils"

    const-string v0, "trackEvent fail"

    .line 83
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$trackMiuiWidgetEvent$1(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 92
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v1, "31000000517"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "OneTrackInterfaceUtils"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "OneTrackInterfaceUtils"

    const-string v0, "trackMiuiWidgetEvent trackEvent fail"

    .line 96
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$trackOneHandModeEvent$2(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 107
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v1, "miuihome_handmode"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "OneTrackInterfaceUtils"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "OneTrackInterfaceUtils"

    const-string v0, "trackOneHandModeEvent trackEvent fail"

    .line 111
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pointless"

    const-string v2, ""

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$BMOtGt6Rgxf5yD-Wei6IGpoNSno;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$BMOtGt6Rgxf5yD-Wei6IGpoNSno;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 89
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$bsauPkr0BtQoMdgnTo5Y-5GoO1E;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackOneHandModeEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$g1ItDQ62j2rzOiOuhZTyZX11BpY;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$g1ItDQ62j2rzOiOuhZTyZX11BpY;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
