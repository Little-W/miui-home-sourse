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

    .line 35
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsNoWord;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsOnlyWidgetNoWord;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsOnlyWidgetNoWord;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupHideAppList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isSupportMonochrome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeEnable;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeEnable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;

    invoke-direct {v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public backupSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "backup settings"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 68
    invoke-virtual {v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->backup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "restore settings"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;

    .line 61
    invoke-virtual {v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->restore()V

    goto :goto_0

    :cond_0
    return-void
.end method
