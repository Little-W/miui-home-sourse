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

.field private mDisplay:Landroid/view/Display;

.field private mFinishLoadingTaskInfo:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIgnoreTaskSnapshotChanged:Z

.field private mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

.field private mSupportLoadTaskInfoBackground:Z

.field private mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskInfoIgnoreSplit:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    .line 185
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    .line 186
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mSupportLoadTaskInfoBackground:Z

    .line 65
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    .line 66
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    .line 68
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f0601eb

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0601ec

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 73
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    const v3, 0x7f0b002e

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b001c

    .line 75
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b001b

    .line 76
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b001e

    .line 80
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b001d

    .line 81
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 82
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 85
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/RecentsModel;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsModel;->mSupportLoadTaskInfoBackground:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/RecentsModel;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/RecentsModel;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;
    .locals 2

    .line 54
    sget-object v0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/miui/home/recents/RecentsModel;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    return-object p0
.end method

.method private getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .line 282
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSmallWindow(Ljava/util/List;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSplitPrimary(Ljava/util/List;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Ljava/util/List;

    move-result-object p1

    .line 299
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsModel;->removeOtherDisplayTask(Ljava/util/List;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsModel;->removePipTask(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 301
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "RecentsModel"

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTask   taskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRunningTaskIgnoreSmallWindow(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 311
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInFreeformMode(Landroid/app/TaskInfo;)Z

    move-result v1

    .line 312
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRunningTaskIgnoreSplitPrimary(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->removeSplitScreenPrimaryTask(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clearCurrentTaskInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 323
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 324
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskStackChanged"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const-string v0, "RecentsModel"

    const-string v1, "getRunningTask"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskContainHome()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const-string v0, "RecentsModel"

    const-string v1, "getRunningTaskContainHome"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 245
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 246
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

    .line 247
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x5

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 251
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

    .line 221
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 222
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

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 225
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 227
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

    .line 209
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 210
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

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreHomeAndSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 215
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

.method public getTaskInfoIgnoreSplit()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 233
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mFinishLoadingTaskInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    const-string v0, "RecentsModel"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfoIgnoreSplit   mTaskInfoIgnoreSplit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mTaskInfoIgnoreSplit:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x3

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreSplit   taskInfo="

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

    .line 97
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;

    iget-object v2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v1, p1, v2, p2}, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;-><init>(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeOtherDisplayTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 259
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 261
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePipTask(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 271
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 273
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInPipMode(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIgnoreTaskSnapshotChanged(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    return-void
.end method
