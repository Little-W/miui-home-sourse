.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.source "BackupSettingsAssistant.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "open_personal_assistant"

    .line 12
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/Boolean;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->getBackupValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsValue()Ljava/lang/Boolean;
    .locals 3

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;->getSettingsValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Boolean;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->putBackupValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public putSettingsValue(Ljava/lang/Boolean;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 23
    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;->putSettingsValue(Ljava/lang/Boolean;)V

    return-void
.end method
