.class public Lcom/miui/home/launcher/commercial/recommend/XOutUtils;
.super Ljava/lang/Object;
.source "XOutUtils.java"


# direct methods
.method public static canRecommendSwitchShow(Landroid/content/Context;)Z
    .locals 6

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isShowXOut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->getRecommendAppsBeginDisplayTime(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p0, "Launcher.XOutUtils"

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canRecommendScreenShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "Launcher.XOutUtils"

    const-string v0, "canRecommendScreenShow, isShowXout=false"

    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static getRecommendAppsBeginDisplayTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "recommend_begin_display_time"

    const-wide/16 v1, 0x0

    .line 33
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static updateRecommendAppsBeginDisplayTime(Landroid/content/Context;)V
    .locals 4

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->getXOutProtectionInMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-string v2, "recommend_begin_display_time"

    .line 29
    invoke-static {p0, v2, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
