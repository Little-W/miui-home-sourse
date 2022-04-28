.class public Lcom/miui/home/recents/ForegroundTaskInfo;
.super Ljava/lang/Object;
.source "ForegroundTaskInfo.java"


# static fields
.field private static sForegroundSmallWindowInfo:Lcom/miui/home/recents/ForegroundTaskInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSmallWindowInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    return-void
.end method

.method private findSmallWindowsToStart(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Lcom/android/systemui/shared/recents/model/Task;"
        }
    .end annotation

    .line 118
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 119
    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ForegroundTaskInfo"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSmallWindowsToStart: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastActiveTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z

    return-object p2

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    const-string p1, "ForegroundTaskInfo"

    const-string p2, "findSmallWindowsToStart: baseComponent or taskKey is null, return"

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getInstance()Lcom/miui/home/recents/ForegroundTaskInfo;
    .locals 2

    .line 39
    sget-object v0, Lcom/miui/home/recents/ForegroundTaskInfo;->sForegroundSmallWindowInfo:Lcom/miui/home/recents/ForegroundTaskInfo;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/miui/home/recents/ForegroundTaskInfo;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/ForegroundTaskInfo;->sForegroundSmallWindowInfo:Lcom/miui/home/recents/ForegroundTaskInfo;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/miui/home/recents/ForegroundTaskInfo;

    invoke-direct {v1}, Lcom/miui/home/recents/ForegroundTaskInfo;-><init>()V

    sput-object v1, Lcom/miui/home/recents/ForegroundTaskInfo;->sForegroundSmallWindowInfo:Lcom/miui/home/recents/ForegroundTaskInfo;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/ForegroundTaskInfo;->sForegroundSmallWindowInfo:Lcom/miui/home/recents/ForegroundTaskInfo;

    return-object v0
.end method

.method private getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$removeForegroundSmallWindow$1(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 1

    .line 73
    iget-object v0, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$startForegroundSmallWindows$2(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskView;)I
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$startForegroundSmallWindows$3(Lcom/miui/home/recents/views/TaskView;)Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$startForegroundSmallWindows$4(Lcom/miui/home/recents/ForegroundTaskInfo;Ljava/util/Set;Lcom/miui/home/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 111
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/ForegroundTaskInfo;->findSmallWindowsToStart(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearForegroundSmallWindows()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearForegroundTasks()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->clearForegroundSmallWindows()V

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->clearFullScreenTask()V

    return-void
.end method

.method public clearFullScreenTask()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public getForegroundSmallWindows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 68
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;

    invoke-direct {v2, v0, p1}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "ForegroundTaskInfo"

    const-string v0, "clearForegroundSmallWindow: baseComponent or taskKey is null, return"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveForegroundSmallWinowsAndFullScreen()V
    .locals 4

    .line 156
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getNormalSmallWindows()Ljava/util/Set;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ForegroundTaskInfo;->setForegroundSmallWindows(Ljava/util/Set;)V

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getVisibleTaskIgnoreHome()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ForegroundTaskInfo;->setFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz v0, :cond_1

    .line 162
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const-string v1, "ForegroundTaskInfo"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAppToRecents: fullScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->clearFullScreenTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setForegroundSmallWindows(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 59
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/recents/ForegroundTaskInfo;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public startForegroundFullScreenActivity(Landroid/app/ActivityOptions;)V
    .locals 7

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ForegroundTaskInfo"

    const-string v0, "startForegroundFullScreenActivity: fullScreenTaskInfo is null"

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(ILandroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    const-string p1, "ForegroundTaskInfo"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFullScreenActivity: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->clearFullScreenTask()V

    return-void
.end method

.method public startForegroundSmallWindows()V
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;

    .line 109
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$EP4WvyzBheOePoltK0SM8WyFNJk;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$EP4WvyzBheOePoltK0SM8WyFNJk;

    .line 110
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;-><init>(Lcom/miui/home/recents/ForegroundTaskInfo;Ljava/util/Set;)V

    .line 111
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/-$$Lambda$OBBF_g4XCg4qc73KJMvH4yJlm-o;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$OBBF_g4XCg4qc73KJMvH4yJlm-o;

    .line 112
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskInfo;->clearForegroundSmallWindows()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "ForegroundTaskInfo"

    const-string v1, "startForegroundSmallWindows: taskViews is empty"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v0, "ForegroundTaskInfo"

    const-string v1, "startForegroundSmallWindows: startSaveSmallWindows is empty"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
