.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.source "BackupSettingsMemoryInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "miui_recents_show_mem_info"

    .line 10
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSettingsValue()Ljava/lang/Boolean;
    .locals 1

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_recents_show_mem_info"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;->getSettingsValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public putSettingsValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "miui_recents_show_mem_info"

    .line 21
    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;->putSettingsValue(Ljava/lang/Boolean;)V

    return-void
.end method
