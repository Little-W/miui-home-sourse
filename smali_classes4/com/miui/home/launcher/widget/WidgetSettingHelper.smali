.class public Lcom/miui/home/launcher/widget/WidgetSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "WidgetSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;
    }
.end annotation


# static fields
.field private static final MAML_NEVER_WARN_WAIT_TIME:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x927c0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->MAML_NEVER_WARN_WAIT_TIME:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, "widgetSetting"

    .line 16
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;
    .locals 1

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;->access$000()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isMamlDownloadNeverWarn()Z
    .locals 5

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "maml_download_never_warn_start_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p0, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->MAML_NEVER_WARN_WAIT_TIME:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMamlDownloadOnlyWifi()Z
    .locals 5

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "maml_wait_wlan_never_warn_start_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p0, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->MAML_NEVER_WARN_WAIT_TIME:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMamlDownloadNeverWarn()V
    .locals 3

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "maml_download_never_warn_start_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMamlDownloadOnlyWifiWaitTime()V
    .locals 3

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "maml_wait_wlan_never_warn_start_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->putLong(Ljava/lang/String;J)V

    return-void
.end method
