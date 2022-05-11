.class public Lcom/miui/home/launcher/backup/LauncherBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "LauncherBackupAgent.java"


# static fields
.field private static sIsRestoring:Z


# instance fields
.field private mHasRemovedDB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    return-void
.end method

.method public static isRestoring()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    return v0
.end method

.method private resetTransformationTypeIfInFoldDevice()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "pref_key_transformation_type"

    const/4 v2, 0x1

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 87
    invoke-super {p0}, Lmiui/app/backup/FullBackupAgent;->onCreate()V

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->backupSettings()V

    return-void
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    :cond_0
    const-string v1, ".db"

    .line 66
    invoke-virtual {p7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->removeDownloadInstallInfo(Landroid/content/Context;)V

    .line 69
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Launcher.restore"

    const-string p2, "ignore download install info txt"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p11}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->restoreSettings()V

    .line 32
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->tellBackupManagerNeedBeKilled(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LauncherBackupAgent"

    const-string v0, "onRestoreEnd : clear up widgets"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->unbindAllWidgets(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    .line 38
    sput-boolean p1, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAddRecommendFolderIfNeed(Z)V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->resetTransformationTypeIfInFoldDevice()V

    const-string v0, "LauncherBackupAgent"

    const-string v1, "onRestoreEnd"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
