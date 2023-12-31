.class public Lcom/miui/home/recents/RecentsSoscController;
.super Ljava/lang/Object;
.source "RecentsSoscController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;


# static fields
.field private static sInstance:Lcom/miui/home/recents/RecentsSoscController;


# instance fields
.field private mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mPreSoscState:I

.field private mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

.field private mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/miui/home/recents/RecentsSoscStateHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mState:I

    .line 26
    iput v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mPreSoscState:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    iput-object v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method private fromRecentsToHome(II)V
    .locals 2

    .line 114
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsSoscController$4lx6Gx9GN2TlycdK5u7sk36Ag5Q;-><init>(Lcom/miui/home/recents/RecentsSoscController;II)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/RecentsSoscController;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/recents/RecentsSoscController;->sInstance:Lcom/miui/home/recents/RecentsSoscController;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/miui/home/recents/RecentsSoscController;

    invoke-direct {v0}, Lcom/miui/home/recents/RecentsSoscController;-><init>()V

    sput-object v0, Lcom/miui/home/recents/RecentsSoscController;->sInstance:Lcom/miui/home/recents/RecentsSoscController;

    .line 38
    :cond_0
    sget-object v0, Lcom/miui/home/recents/RecentsSoscController;->sInstance:Lcom/miui/home/recents/RecentsSoscController;

    return-object v0
.end method

.method private isHalfSplitMode(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isNeedPreChangedRecent(I)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private isNormalMode(I)Z
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpenAnimRunning(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 139
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isOpenAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private preloadTasks()V
    .locals 3

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    .line 236
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    return-void
.end method

.method private resetSoscFirstSplitScreenTaskNull(I)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getPreSoScState()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 75
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->resetSoscFirstSplitScreenTaskNull()V

    .line 76
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsSoscController;->preloadTasks()V

    const-string p0, "RecentsSoscController"

    const-string p1, "resetSoscFirstSplitScreenTaskNull"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateFirstSplitTask(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getState()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 209
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSameTaskId(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p3, p5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSameTaskId(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsSoscController;->resetSoscFirstSplitScreenTaskNull(I)V

    const/4 p2, -0x1

    const-string p3, "RecentsSoscController"

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const-string p0, "updateFirstSplitTask: state is unknown"

    .line 230
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setSoscFirstSplitRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateFirstSplitTask: rightOrBottomTopTaskInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsSoscController;->preloadTasks()V

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setSoscFirstSplitRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 217
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsSoscController;->preloadTasks()V

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateFirstSplitTask: leftOrTopTaskInfo = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "updateFirstSplitTask, already resetSoscFirstSplitScreenTaskNull when onPreSoScStateChanged"

    .line 227
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addSoscSplitScreenListener()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V

    return-void
.end method

.method public getLaunchHalfSplitTaskPosition()I
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getPreSoScState()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/miui/home/recents/RecentsSoscController;->mPreSoscState:I

    return p0
.end method

.method public getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/miui/home/recents/RecentsSoscController;->mState:I

    return p0
.end method

.method public isHalfSplitMode()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$fromRecentsToHome$0$RecentsSoscController(II)V
    .locals 3

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "RecentsSoscController"

    if-nez v0, :cond_0

    const-string p0, "fromRecentsToHome: launcher is null"

    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "fromRecentsToHome: baseRecents is null"

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsSoscController;->isHalfSplitMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    invoke-direct {p0, p2}, Lcom/miui/home/recents/RecentsSoscController;->isNormalMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsSoscController;->isOpenAnimRunning(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 130
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->isLauncherOnTop()Z

    move-result p0

    if-nez p0, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    const-string p0, "fromRecentsToHome: "

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onInitSoscSplitScreen()V
    .locals 0

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 9

    move-object v0, p0

    move v4, p4

    .line 62
    invoke-direct {p0, p4}, Lcom/miui/home/recents/RecentsSoscController;->isNeedPreChangedRecent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0, p4}, Lcom/miui/home/recents/RecentsSoscController;->resetSoscFirstSplitScreenTaskNull(I)V

    .line 64
    iput v4, v0, Lcom/miui/home/recents/RecentsSoscController;->mPreSoscState:I

    .line 65
    iget-object v0, v0, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/RecentsSoscStateHelper;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    :cond_0
    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 10

    move-object v6, p0

    move v7, p4

    .line 102
    iget-object v2, v6, Lcom/miui/home/recents/RecentsSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v6, Lcom/miui/home/recents/RecentsSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v0, p0

    move v1, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/RecentsSoscController;->updateFirstSplitTask(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 103
    iget v0, v6, Lcom/miui/home/recents/RecentsSoscController;->mState:I

    invoke-direct {p0, v0, p4}, Lcom/miui/home/recents/RecentsSoscController;->fromRecentsToHome(II)V

    .line 104
    iput v7, v6, Lcom/miui/home/recents/RecentsSoscController;->mState:I

    .line 105
    iput v7, v6, Lcom/miui/home/recents/RecentsSoscController;->mPreSoscState:I

    move-object v5, p5

    .line 106
    iput-object v5, v6, Lcom/miui/home/recents/RecentsSoscController;->mLeftOrTopRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v8, p6

    .line 107
    iput-object v8, v6, Lcom/miui/home/recents/RecentsSoscController;->mRightOrBottomRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    iget-object v0, v6, Lcom/miui/home/recents/RecentsSoscController;->mRecentsSoscStateHelper:Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/recents/RecentsSoscStateHelper;->setSoScState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 0

    return-void
.end method
