.class abstract Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.source "BackupSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BackupSettingsBaseInteger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackupValue()Ljava/lang/Integer;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->isBackupContains()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupValue()Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->getBackupValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public putBackupValue(Ljava/lang/Integer;)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->putBackupValue(Ljava/lang/Integer;)V

    return-void
.end method
