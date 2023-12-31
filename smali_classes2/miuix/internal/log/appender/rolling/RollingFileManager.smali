.class public Lmiuix/internal/log/appender/rolling/RollingFileManager;
.super Lmiuix/internal/log/appender/FileManager;
.source "RollingFileManager.java"


# instance fields
.field private mLogPath:Ljava/lang/String;

.field private mRolloverStrategy:Lmiuix/internal/log/appender/rolling/RolloverStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lmiuix/internal/log/appender/FileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkRollover()V
    .locals 1

    .line 38
    iget-object v0, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lmiuix/internal/log/appender/rolling/RolloverStrategy;

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0, p0}, Lmiuix/internal/log/appender/rolling/RolloverStrategy;->rollover(Lmiuix/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lmiuix/internal/log/appender/rolling/RollingFileManager;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onBuildLogPath()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0}, Lmiuix/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized setRolloverStrategy(Lmiuix/internal/log/appender/rolling/RolloverStrategy;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    iput-object p1, p0, Lmiuix/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lmiuix/internal/log/appender/rolling/RolloverStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0}, Lmiuix/internal/log/appender/rolling/RollingFileManager;->checkRollover()V

    .line 34
    invoke-super {p0, p1}, Lmiuix/internal/log/appender/FileManager;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
