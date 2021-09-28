.class public Lcom/miui/home/launcher/widget/WidgetSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "WidgetSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "widgetSetting"

    .line 15
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;->access$000()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isMamlDownloadNeverWarn()Z
    .locals 2

    const-string v0, "maml_download_never_warn"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMamlDownloadOnlyWifi()Z
    .locals 2

    const-string v0, "maml_download_only_wifi"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setMamlDownloadNeverWarn()V
    .locals 2

    const-string v0, "maml_download_never_warn"

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMamlDownloadOnlyWifi()V
    .locals 2

    const-string v0, "maml_download_only_wifi"

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
