.class public Lcom/miui/home/launcher/backup/settings/BackupHideAppList;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;
.source "BackupHideAppList.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "miui_home_hide_app_list"

    .line 14
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;->getBackupValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupValue()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->getBackupValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Launcher.Backup"

    const-string v0, " restore HideAppLists with empty"

    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;->getSettingsValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSettingsValue()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_hide_app_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->putBackupValue(Ljava/lang/String;)V

    return-void
.end method

.method bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;->putSettingsValue(Ljava/lang/String;)V

    return-void
.end method

.method putSettingsValue(Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " restore HideAppLists = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.Backup"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_hide_app_list"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
