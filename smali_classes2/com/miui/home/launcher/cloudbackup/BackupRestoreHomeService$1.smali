.class Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;
.super Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;
.source "BackupRestoreHomeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-direct {p0}, Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public backupHome()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 63
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 67
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->backupSettings()V

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 74
    invoke-virtual {v7, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->backupDatabaseFile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 76
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherCategory;->backupDatabase(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "foo"

    invoke-static {p0, v4}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 87
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "launcher_sharedpreference_private.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "miui_auto_install.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v6, "Launcher.Backup"

    const-string v7, "ignore icloudBack miui_auto_install prefs"

    .line 91
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f6

    invoke-static {v7, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 95
    invoke-static {v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v6

    .line 96
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_6
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->backupMaMls(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    const-string v2, "Launcher.Backup"

    const-string v3, " ErrnoException when backup home files"

    .line 105
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 107
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Launcher.Backup"

    const-string v3, "IOException when backup home files"

    .line 102
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_3
    const-string p0, "Launcher.Backup"

    const-string v0, "launcherProvider is unready"

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public restoreHome(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Launcher.Backup"

    const-string p1, "launcherProvider is null"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 120
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v2, 0x1

    .line 122
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Launcher.Backup"

    const-string v4, "restoreHome : clear up widgets"

    .line 123
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->unbindAllWidgets(Landroid/content/Context;)V

    .line 127
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 128
    invoke-virtual {v6, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->restoreDatabaseFile(Landroid/content/Context;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherCategory;->restoreDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->restoreMaMls(Landroid/content/Context;Ljava/util/List;)V

    .line 135
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "restore_icons"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "Launcher.Backup"

    const-string p1, "failed to create icon folder"

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 140
    :cond_3
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 141
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 142
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v4, v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    goto :goto_1

    .line 145
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string v3, "foo"

    invoke-static {p0, v3}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "Launcher.Backup"

    const-string p1, "failed to create sp folder"

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 150
    :cond_5
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 151
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    .line 152
    invoke-static {v3}, Lmiuix/core/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v1, v4}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v3, "Launcher.Backup"

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1ed

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAllModeIsCloudBackUpOrReplacement(Z)V

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->restoreSettings()V

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "Launcher.Backup"

    const-string p2, " ErrnoException when restore home files"

    .line 165
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "Launcher.Backup"

    const-string p2, "IOException when restore home file"

    .line 163
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :goto_3
    monitor-exit v0

    return v2

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
