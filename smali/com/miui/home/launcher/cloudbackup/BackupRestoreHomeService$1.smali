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

    .line 50
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

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 60
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 64
    invoke-virtual {v8, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->backupDatabaseFile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 66
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherCategory;->backupDatabase(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string v5, "foo"

    invoke-static {v2, v5}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v5, v2, v6

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f6

    invoke-static {v7, v8}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 78
    invoke-static {v5}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v5

    .line 79
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    :cond_4
    :try_start_2
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "Launcher.Backup"

    const-string v4, "IOException when backup home files"

    .line 83
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_2
    const-string v0, "Launcher.Backup"

    const-string v2, "launcherProvider is unready"

    .line 55
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public restoreHome(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
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

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Launcher.Backup"

    const-string p2, "launcherProvider is null"

    .line 93
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;->this$0:Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;

    invoke-static {v2}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 100
    invoke-virtual {v6, v2, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->restoreDatabaseFile(Landroid/content/Context;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2, p1}, Lcom/miui/home/launcher/LauncherCategory;->restoreDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 105
    new-instance v3, Ljava/io/File;

    const-string v4, "foo"

    invoke-static {v2, v4}, Lcom/miui/launcher/utils/LauncherUtils;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "Launcher.Backup"

    const-string p2, "failed to create sp folder"

    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 110
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 111
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    .line 112
    invoke-static {v5}, Lmiui/os/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v4, v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v5, "Launcher.Backup"

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x1ed

    invoke-static {p1, v3}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "restore_icons"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p1, "Launcher.Backup"

    const-string p2, "failed to create icon folder"

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 124
    :cond_5
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 125
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1, v4}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    goto :goto_2

    .line 128
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_5
    const-string p2, "Launcher.Backup"

    const-string v1, "IOException when restore home file"

    .line 130
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
