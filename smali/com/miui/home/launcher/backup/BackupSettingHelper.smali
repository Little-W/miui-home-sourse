.class public Lcom/miui/home/launcher/backup/BackupSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "BackupSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;
    }
.end annotation


# instance fields
.field private final mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "backup"

    .line 28
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAutoFill;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsAssistant;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPullDown;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;

    invoke-direct {v1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsSlideUp;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/backup/BackupSettingHelper$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/backup/BackupSettingHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;
    .locals 1

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->access$100()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method backupSettings()V
    .locals 2

    const-string v0, "Launcher.Backup"

    const-string v1, "backup settings"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/miui/home/launcher/backup/BackupSettingHelper;->mSettings:Ljava/util/ArrayList;

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
