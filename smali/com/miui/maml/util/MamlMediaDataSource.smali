.class public Lcom/miui/maml/util/MamlMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "MamlMediaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x3200000

.field private static final MEMORY_THRESHOLD:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "MamlMediaDataSource"


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field private mFile:Landroid/os/MemoryFile;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mStream:Ljava/io/InputStream;

.field private mSupportMark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/MamlMediaDataSource$1;-><init>(Lcom/miui/maml/util/MamlMediaDataSource;)V

    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 71
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 73
    iput-object p3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 76
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, p2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource;->setMemoryFile(Landroid/os/MemoryFile;)V

    return-void
.end method

.method private closeStream()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 263
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 265
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 267
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 269
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private generateMemoryFile()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;

    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;-><init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/util/MamlMediaDataSource;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private init()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 197
    :try_start_0
    new-array v1, v1, [J

    .line 198
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    .line 199
    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 200
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    .line 202
    iget-boolean v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 208
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private isFileSizeValid()Z
    .locals 4

    .line 224
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMemoryEnough()Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 214
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 215
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 217
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v0, :cond_0

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x6400000

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetStream()Z
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 239
    :cond_0
    iget-boolean v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    .line 248
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    new-array v0, v3, [J

    .line 254
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    :goto_0
    return v3

    :catch_1
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private setMemoryFile(Landroid/os/MemoryFile;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->closeStream()V

    .line 151
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    return-wide v0
.end method

.method public onLowMemory()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    :cond_0
    return-void
.end method

.method public readAt(J[BII)I
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    int-to-long v3, p5

    add-long/2addr v3, p1

    .line 93
    :try_start_1
    iget-wide v5, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 94
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    cmp-long p5, p1, v3

    if-gez p5, :cond_1

    const-string p5, "MamlMediaDataSource"

    const-string v1, "readAt: position+size is larger than file size, read left data"

    .line 95
    invoke-static {p5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    sub-long/2addr v3, p1

    long-to-int p5, v3

    goto :goto_0

    :cond_1
    const-string p1, "MamlMediaDataSource"

    const-string p2, "readAt: position is larger than file size, return 0"

    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 102
    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    long-to-int v3, p1

    invoke-virtual {v1, p3, v3, p4, p5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v2
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 106
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 109
    monitor-exit v0

    return v2

    .line 104
    :catch_1
    monitor-exit v0

    return v2

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    .line 116
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_5

    .line 117
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->resetStream()Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v3, p1

    goto :goto_1

    .line 120
    :cond_4
    monitor-exit v0

    return v2

    .line 123
    :cond_5
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v3, p1, v3

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 128
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p3

    .line 132
    :try_start_6
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v2, :cond_8

    int-to-long p3, v2

    add-long/2addr p1, p3

    .line 138
    iput-wide p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    :cond_8
    return v2

    :catchall_0
    move-exception p1

    .line 135
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public releaseMemoryFile()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 181
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tryToGenerateMemoryFile()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/InflaterInputStream;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isMemoryEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isFileSizeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->generateMemoryFile()V

    :cond_0
    return-void
.end method
