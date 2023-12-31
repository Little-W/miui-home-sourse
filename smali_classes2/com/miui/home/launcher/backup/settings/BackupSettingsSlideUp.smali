.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;
.source "BackupSettingsSlideUp.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "launcher_slideup_gesture"

    .line 10
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/String;
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->getBackupValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;->getSettingsValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsValue()Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;->putSettingsValue(Ljava/lang/String;)V

    return-void
.end method

.method public putSettingsValue(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "launcher_slideup_gesture"

    invoke-static {p0, v0, p1}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
