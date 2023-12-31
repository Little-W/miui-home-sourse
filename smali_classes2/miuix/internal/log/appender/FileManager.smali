.class public Lmiuix/internal/log/appender/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# instance fields
.field private mFileCheckStamp:J

.field protected mLogFile:Ljava/io/File;

.field private mLogLength:J

.field protected mLogName:Ljava/lang/String;

.field protected mLogRoot:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mPrepareRetryStamp:J

.field private mRetryCount:I

.field private mWriter:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lmiuix/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lmiuix/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doWrite(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 98
    iget-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    return-void
.end method

.method private prepareWriter()V
    .locals 6

    .line 127
    iget v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 129
    iget-wide v2, p0, Lmiuix/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 130
    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    goto :goto_0

    :cond_0
    return-void

    .line 135
    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    .line 137
    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->onCreateLogFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    .line 138
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 140
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    .line 141
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    .line 143
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create writer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private repairWriter()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->close()V

    .line 152
    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->prepareWriter()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    const/4 v1, 0x0

    .line 103
    iput v1, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    .line 104
    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    .line 105
    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-static {v1}, Lmiuix/internal/log/appender/FileManager;->closeQuietly(Ljava/io/Writer;)V

    .line 106
    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    return-object p0
.end method

.method public getLogSize()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    return-wide v0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateLogFile()Ljava/io/File;
    .locals 6

    const-string v0, "Fail to create LogFile: "

    .line 156
    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "FileManager"

    if-nez p0, :cond_0

    const-string p0, "Fail to build log path"

    .line 158
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 162
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LogDir is not a directory: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 170
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to create directory: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 180
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFile is not a file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 187
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_4

    .line 190
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_4
    return-object v3

    :catch_0
    move-exception v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->prepareWriter()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lmiuix/internal/log/appender/FileManager;->mFileCheckStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 64
    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mFileCheckStamp:J

    .line 65
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FileManager"

    const-string v1, "Repair writer for log file is missing"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->repairWriter()V

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_2

    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 77
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lmiuix/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FileManager"

    const-string v2, "Retry to write log"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->repairWriter()V

    .line 82
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_3

    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null when retry"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 86
    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lmiuix/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "FileManager"

    const-string v1, "Fail to append log for writer is null when retry"

    .line 88
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
