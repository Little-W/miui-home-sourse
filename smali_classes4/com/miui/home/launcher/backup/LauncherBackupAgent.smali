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

    .line 27
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    return-void
.end method

.method public static isRestoring()Z
    .locals 1

    .line 49
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

    .line 83
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 84
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 89
    invoke-super {p0}, Lmiui/app/backup/FullBackupAgent;->onCreate()V

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->backupSettings()V

    return-void
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    :cond_0
    const-string v1, ".db"

    .line 62
    invoke-virtual {p7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->removeDownloadInstallInfo(Landroid/content/Context;)V

    .line 65
    iput-boolean v0, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Launcher.restore"

    if-eqz v0, :cond_2

    const-string p0, "ignore download install info txt"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, ".xml"

    .line 69
    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {p7}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "miui_auto_install"

    .line 71
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "ignore miui_auto_install prefs"

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p11}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 2

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->restoreSettings()V

    .line 35
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->tellBackupManagerNeedBeKilled(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    const-string v0, "LauncherBackupAgent"

    if-eqz p1, :cond_0

    const-string p1, "onRestoreEnd : clear up widgets"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->unbindAllWidgets(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->mHasRemovedDB:Z

    .line 41
    sput-boolean p1, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->sIsRestoring:Z

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAddRecommendFolderIfNeed(Z)V

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAllModeIsCloudBackUpOrReplacement(Z)V

    const-string p0, "onRestoreEnd"

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
