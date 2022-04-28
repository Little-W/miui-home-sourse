.class public Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "BaseBackupSettingHelper.java"


# instance fields
.field protected final mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "backup"

    .line 31
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method backupSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "backup settings"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 59
    invoke-virtual {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->backup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method restoreSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "restore settings"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 52
    invoke-virtual {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->restore()V

    goto :goto_0

    :cond_0
    return-void
.end method
