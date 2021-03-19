.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;
.source "BackupSettingsPullDown.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "launcher_pulldown_gesture"

    .line 10
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->getBackupValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;->getSettingsValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsValue()Ljava/lang/String;
    .locals 3

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    const-string v2, "notification_bar"

    invoke-static {v0, v1, v2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->putBackupValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;->putSettingsValue(Ljava/lang/String;)V

    return-void
.end method

.method public putSettingsValue(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    invoke-static {v0, v1, p1}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
