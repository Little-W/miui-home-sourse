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

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIgnoreTaskSnapshotChanged:Z

.field private mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    .line 67
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    .line 68
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    .line 70
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f06032f

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f060330

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 75
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    const v3, 0x7f0b003d

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0029

    .line 77
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b0028

    .line 78
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 79
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b002b

    .line 82
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0b002a

    .line 83
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 84
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;
    .locals 2

    .line 56
    sget-object v0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/miui/home/recents/RecentsModel;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 63
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    return-object p0
.end method

.method private getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 246
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSmallWindow(Ljava/util/List;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->filterTasks(Ljava/util/List;II)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Ljava/util/List;

    move-result-object v0

    .line 263
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsModel;->removeOtherDisplayTask(Ljava/util/List;)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsModel;->removePipTask(Ljava/util/List;)V

    if-eqz v0, :cond_5

    .line 265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "RecentsModel"

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTask   taskInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRunningTaskIgnoreSmallWindow(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 278
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_0

    .line 280
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInFreeformMode(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 285
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel;->removeInVisibleTask(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 303
    const-class v0, Landroid/app/TaskInfo;

    const-string v1, "isVisible"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 304
    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v0, p1, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private removeInVisibleTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 293
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RecentsModel"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInVisibleTask   baseActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskStackChanged"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 136
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const-string v0, "RecentsModel"

    const-string v1, "getRunningTask"

    .line 177
    .line 178
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskContainHome()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const-string v0, "RecentsModel"

    const-string v1, "getRunningTaskContainHome"

    .line 185
    .line 186
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x5

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreFreeform   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v0
.end method

.method public getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreHomeAndFreeform   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v0
.end method

.method public getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreHomeAndSplit   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v0
.end method

.method public getTaskInfoIgnoreSplit()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x3

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, "RecentsModel"

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfoIgnoreSplit   taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v0
.end method

.method public getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    if-nez v0, :cond_0

    .line 113
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

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
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

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 223
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 225
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 226
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

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 235
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 237
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInPipMode(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIgnoreTaskSnapshotChanged(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    return-void
.end method
