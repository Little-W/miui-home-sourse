.class public abstract Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.source "BackupSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackupSettingsBaseBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackupValue()Ljava/lang/Boolean;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->isBackupContains()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getBackupValue()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->getBackupValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public putBackupValue(Ljava/lang/Boolean;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;->putBackupValue(Ljava/lang/Boolean;)V

    return-void
.end method
