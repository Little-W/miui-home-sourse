.class public Lcom/miui/home/recents/RecentsModel;
.super Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
.source "RecentsModel.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/miui/home/recents/RecentsModel;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinishLoadingTaskInfo:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIgnoreTaskSnapshotChanged:Z

.field private mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

.field private mSupportLoadTaskInfoBackground:Z

.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    .line 255
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    .line 256
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mSupportLoadTaskInfoBackground:Z

    .line 61
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TaskThumbnailIconCache"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 66
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f06019b

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f06019c

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 71
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    const v3, 0x7f0b0028

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b001b

    .line 73
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b001a

    .line 74
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 75
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    goto :goto_0

    .line 77
    :cond_0
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b001d

    .line 78
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b001c

    .line 79
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 80
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/RecentsModel;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsModel;->mSupportLoadTaskInfoBackground:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/RecentsModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/RecentsModel;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;
    .locals 2

    .line 50
    sget-object v0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/miui/home/recents/RecentsModel;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    return-object p0
.end method

.method private getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clearCurrentTaskInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 309
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public exitSplitScreen()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsModel"

    const-string v2, "Failed to notify SysUI of exitSplitScreen"

    .line 117
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskStackChanged"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 205
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const-string v0, "RecentsModel"

    const-string v1, "getRunningTask"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0
.end method

.method public getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 295
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfoIgnoreFreeform   mTaskInfoIgnoreFreeform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    .line 299
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreFreeform   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 283
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfoIgnoreHomeAndFreeform   mTaskInfoIgnoreHomeAndFreeform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    .line 287
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreHomeAndFreeform   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 271
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfoIgnoreHomeAndSplit   mTaskInfoIgnoreHomeAndSplit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreHomeAndSplit   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public onAssistantGestureCompletion()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsModel"

    const-string v2, "Failed to notify SysUI of onAssistantGestureCompletion"

    .line 175
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsModel"

    const-string v1, "Failed to notify SysUI of onAssistantProgress"

    .line 163
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsModel"

    const-string v1, "Failed to notify SysUI of onGestureLineProgress"

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;-><init>(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setIgnoreTaskSnapshotChanged(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    return-void
.end method

.method public setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsModel"

    const-string v1, "Failed to notify SysUI of startAssistant"

    .line 152
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
