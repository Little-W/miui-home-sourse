.class public Lcom/miui/home/launcher/monitor/FpsReporter;
.super Ljava/lang/Object;
.source "FpsReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/miui/home/launcher/monitor/FpsReporter;


# instance fields
.field private mBufferedWriter:Ljava/io/BufferedWriter;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mHandler:Landroid/os/Handler;

.field private mIsDown:Z

.field private mIsUp:Z

.field private mLastFrameStartTime:J

.field private mLooperObserver:Lcom/miui/home/launcher/monitor/LooperObserver;

.field private mOver30ms:J

.field private mOver30msCount:I

.field private mOver70ms:J

.field private mOver70msCount:I

.field private mRecordRunnable:Ljava/lang/Runnable;

.field private mReportFile:Ljava/io/File;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTotalCountStringBuilder:Ljava/lang/StringBuilder;

.field private mTotalFrameTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLastFrameStartTime:J

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    .line 61
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsUp:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsDown:Z

    .line 89
    iput v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    const-wide/16 v2, 0x0

    .line 90
    iput-wide v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30ms:J

    .line 91
    iput v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    .line 92
    iput-wide v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70ms:J

    .line 93
    iput v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    .line 95
    new-instance v1, Lcom/miui/home/launcher/monitor/FpsReporter$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/monitor/FpsReporter$1;-><init>(Lcom/miui/home/launcher/monitor/FpsReporter;)V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLooperObserver:Lcom/miui/home/launcher/monitor/LooperObserver;

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Lcom/miui/home/launcher/monitor/-$$Lambda$FpsReporter$0Rro5UoS9IwFEXYWae8PhpuMuSw;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/monitor/-$$Lambda$FpsReporter$0Rro5UoS9IwFEXYWae8PhpuMuSw;-><init>(Lcom/miui/home/launcher/monitor/FpsReporter;)V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mRecordRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/home_fps_reporter.csv"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    .line 26
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    iput-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/monitor/FpsReporter;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLastFrameStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/monitor/FpsReporter;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLastFrameStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/monitor/FpsReporter;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsDown:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mBufferedWriter:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/monitor/FpsReporter;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mBufferedWriter:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/monitor/FpsReporter;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30ms:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/monitor/FpsReporter;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30ms:J

    return-wide p1
.end method

.method static synthetic access$308(Lcom/miui/home/launcher/monitor/FpsReporter;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/monitor/FpsReporter;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70ms:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/monitor/FpsReporter;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70ms:J

    return-wide p1
.end method

.method static synthetic access$508(Lcom/miui/home/launcher/monitor/FpsReporter;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/lang/StringBuilder;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/monitor/FpsReporter;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsUp:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/monitor/FpsReporter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/FpsReporter;->postRecoredRunnable()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/monitor/FpsReporter;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    return p0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/monitor/FpsReporter;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    return p1
.end method

.method public static getInstance()Lcom/miui/home/launcher/monitor/FpsReporter;
    .locals 2

    .line 46
    sget-object v0, Lcom/miui/home/launcher/monitor/FpsReporter;->sInstance:Lcom/miui/home/launcher/monitor/FpsReporter;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/miui/home/launcher/monitor/FpsReporter;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/monitor/FpsReporter;->sInstance:Lcom/miui/home/launcher/monitor/FpsReporter;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-direct {v1}, Lcom/miui/home/launcher/monitor/FpsReporter;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/monitor/FpsReporter;->sInstance:Lcom/miui/home/launcher/monitor/FpsReporter;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/monitor/FpsReporter;->sInstance:Lcom/miui/home/launcher/monitor/FpsReporter;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/monitor/FpsReporter;)V
    .locals 3

    .line 131
    iget v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "Fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 136
    iget v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "Pass,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "Warning,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, ">30:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30ms:J

    long-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, ">70:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70ms:J

    long-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Launcher_FpsReporter"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 153
    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->DEBUG_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;-><init>(Lcom/miui/home/launcher/monitor/FpsReporter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const-wide/16 v0, -0x1

    .line 156
    iput-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLastFrameStartTime:J

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private postRecoredRunnable()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mRecordRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalCountStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 67
    iput-boolean v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsUp:Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsDown:Z

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLastFrameStartTime:J

    .line 70
    iput v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30msCount:I

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver30ms:J

    .line 72
    iput v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70msCount:I

    .line 73
    iput-wide v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mOver70ms:J

    .line 74
    iput v2, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mTotalFrameTime:I

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "down,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onTouchUp()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/FpsReporter;->postRecoredRunnable()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsUp:Z

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mIsDown:Z

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "up,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public startMonitor()V
    .locals 2

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->getMonitor()Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLooperObserver:Lcom/miui/home/launcher/monitor/LooperObserver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addObserver(Lcom/miui/home/launcher/monitor/LooperObserver;)V

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mReportFile:Ljava/io/File;

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->getMonitor()Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter;->mLooperObserver:Lcom/miui/home/launcher/monitor/LooperObserver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->removeObserver(Lcom/miui/home/launcher/monitor/LooperObserver;)V

    return-void
.end method
