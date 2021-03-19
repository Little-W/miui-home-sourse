.class abstract Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.source "BackupSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BackupSettingsBaseString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->getBackupValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupValue()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->isBackupContains()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->putBackupValue(Ljava/lang/String;)V

    return-void
.end method

.method public putBackupValue(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
