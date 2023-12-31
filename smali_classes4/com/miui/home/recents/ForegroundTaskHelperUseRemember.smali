.class public Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;
.super Lcom/miui/home/recents/ForegroundTaskHelper;
.source "ForegroundTaskHelperUseRemember.java"


# instance fields
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
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/miui/home/recents/ForegroundTaskHelper;-><init>()V

    .line 29
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    return-void
.end method

.method private findSmallWindows(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 3
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

    .line 138
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 139
    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    const-string v2, "ForegroundTaskHelper"

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findSmallWindows: packageName = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", lastActiveTime = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string p0, "findSmallWindows: baseComponent or taskKey is null, return"

    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getTaskViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$OBBF_g4XCg4qc73KJMvH4yJlm-o(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForegroundSmallWindow$0(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 1

    .line 51
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

.method static synthetic lambda$startForegroundSmallWindows$1(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskView;)I
    .locals 2

    .line 93
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

.method static synthetic lambda$startForegroundSmallWindows$2(Lcom/miui/home/recents/views/TaskView;)Z
    .locals 0

    .line 94
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

.method private startSmallWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    .line 104
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearForegroundSmallWindows()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearForegroundTasks()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->clearForegroundSmallWindows()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->clearFullScreenTask()V

    return-void
.end method

.method public clearFullScreenTask()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public getForegroundSmallWindows()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method public getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public synthetic lambda$startForegroundSmallWindows$3$ForegroundTaskHelperUseRemember(Ljava/util/Set;Lcom/miui/home/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 95
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->findSmallWindows(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 46
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$hR-FDgSN5Pd5oy1BVc6MyeLGFx8;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$hR-FDgSN5Pd5oy1BVc6MyeLGFx8;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "ForegroundTaskHelper"

    const-string p1, "clearForegroundSmallWindow: baseComponent or taskKey is null, return"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveForegroundSmallWinowsAndFullScreen()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getNormalSmallWindows()Ljava/util/Set;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->setForegroundSmallWindows(Ljava/util/Set;)V

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getVisibleTaskIgnoreHome()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->setFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz v0, :cond_1

    .line 129
    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performAppToRecents: fullScreen = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ForegroundTaskHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->clearFullScreenTask()V

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

    .line 34
    iget-object v0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->mFullScreenTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public startForegroundSmallWindows()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v0

    const-string v1, "ForegroundTaskHelper"

    if-eqz v0, :cond_3

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->getTaskViews()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 88
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$_A1fJWq-c38x7o08U8_qxil9ifY;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$_A1fJWq-c38x7o08U8_qxil9ifY;

    .line 93
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;

    .line 94
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;-><init>(Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;Ljava/util/Set;)V

    .line 95
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;

    .line 96
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 97
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    invoke-direct {p0, v0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->startSmallWindows(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->clearForegroundSmallWindows()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "startForegroundSmallWindows: taskViews is empty"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string p0, "startForegroundSmallWindows: startSaveSmallWindows is empty"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
