.class public Lcom/miui/home/launcher/backup/LauncherBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "LauncherBackupAgent.java"


# static fields
.field private static sIsRestoring:Z = false


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

    .line 45
    sget-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    return v0
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

    .line 73
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 74
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 79
    invoke-super {p0}, Lmiui/app/backup/FullBackupAgent;->onCreate()V

    .line 80
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

    .line 52
    sput-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    :cond_0
    const-string v1, ".db"

    .line 58
    invoke-virtual {p7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->removeDownloadInstallInfo(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    goto :goto_0

    .line 62
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

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
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

    const-string v0, "LauncherBackupAgent"

    const-string v1, "onRestoreEnd"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
