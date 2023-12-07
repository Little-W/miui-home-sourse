.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
    }
.end annotation


# instance fields
.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field protected mOldDisplayState:I

.field private mResetIdleStateRunnable:Ljava/lang/Runnable;

.field protected mResumeShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowUpdaterDialog:Z

.field private mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

.field protected mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$dV5ZBLkyKBntXkGNgrTqe0prw_I;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$dV5ZBLkyKBntXkGNgrTqe0prw_I;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 34
    new-instance p1, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method private checkLockScreenOrScreenOff()Z
    .locals 3

    .line 80
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$-FTsklMU7E0I6LZa5VyWH_KMeyQ;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$-FTsklMU7E0I6LZa5VyWH_KMeyQ;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 83
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "checkLockScreenOrScreenOff"

    .line 85
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private sendMessageToShowUpdaterDialog(Ljava/lang/String;)V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showUpdateDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 213
    new-instance p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    .line 232
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialogRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDialogState(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mShowUpdaterDialog:Z

    return-void
.end method


# virtual methods
.method public isLockScreen()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$new$0$UnlockAnimationStateMachine()V
    .locals 2

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "mResetIdleStateRunnable"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-void
.end method

.method public synthetic lambda$new$1$UnlockAnimationStateMachine()V
    .locals 1

    const-string v0, "onResume"

    .line 193
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayChange()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 97
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOldDisplayState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onDisplayChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOff()V

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "onDisplayChange"

    .line 106
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 108
    :cond_2
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 58
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    const-string p0, "remove mResumeShowAnimationRunnable"

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 62
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v2, "onResume"

    if-ne v0, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 169
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_13:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    invoke-static {v0, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    .line 177
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_3

    .line 180
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 182
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected onScreenOff()V
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenOff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "setPrepare on screen off"

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->scheduleGcIdler()V

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_0
    return-void
.end method

.method public onScreenOffFromReceiver()V
    .locals 2

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "setPrepare on screen off from receiver"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->scheduleGcIdler()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->checkLockScreenOrScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setPrepare onstop"

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AbstractFloatingView;->closeOpenViews(Lcom/miui/home/launcher/BaseDraggingActivity;ZI)V

    :goto_0
    return-void
.end method

.method public onUserPresent()V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserPresent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "onUserPresent"

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocus()V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onWindowFocus"

    .line 147
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setPrepare()V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrepare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 129
    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "prepare_animation"

    .line 133
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->prepareAnimationForUnlock()Z

    move-result v0

    .line 135
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setDialogState(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected showAnimation(Ljava/lang/String;)V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAnimation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v2, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnimation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "show_animation"

    .line 157
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showPresent()V

    .line 159
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 160
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    return-void
.end method
