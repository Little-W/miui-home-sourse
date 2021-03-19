.class public Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;
.super Landroid/app/Service;
.source "BackupRestoreHomeService.java"


# instance fields
.field private mBackupRestoreHomeStub:Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService$1;-><init>(Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;)V

    iput-object v0, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->mBackupRestoreHomeStub:Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;

    return-void
.end method

.method public static copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p0, :cond_1

    .line 178
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 179
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    :try_start_3
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 182
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 183
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_world_readable_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x1f6

    invoke-static {p2, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    :cond_0
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 189
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v8}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 191
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v9, v1

    move-object v1, p0

    move-object p0, v0

    move-object v0, v9

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v8, v0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v8

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v1, p0

    move-object p0, v0

    move-object v8, p0

    goto :goto_0

    :catchall_3
    move-exception p2

    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    move-object v8, p1

    goto :goto_0

    .line 176
    :cond_1
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "src pfd is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_4
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    move-object v8, v1

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 188
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 189
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v8}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    throw p2
.end method

.method public static createFileInfoBundle(Ljava/io/File;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/high16 v1, 0x10000000

    .line 143
    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Launcher.Backup"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parcelFileDescriptor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "fileName"

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "parcelFileDescriptor"

    .line 149
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 4

    .line 154
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v2}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->deleteContents(Ljava/io/File;)V

    .line 162
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->mBackupRestoreHomeStub:Lcom/miui/home/launcher/cloudbackup/IBackupRestoreHome$Stub;

    return-object p1
.end method
