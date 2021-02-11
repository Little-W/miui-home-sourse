.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;,
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLooperExecutor:Lcom/miui/home/launcher/util/LooperExecutor;

.field private mOldDisplayState:I

.field private mResetIdleStateRunnable:Ljava/lang/Runnable;

.field private mResumeShowAnimationRunnable:Ljava/lang/Runnable;

.field private mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 76
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$c0dkhWINrtpry7Nnf8ErKRFD9fY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$c0dkhWINrtpry7Nnf8ErKRFD9fY;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 25
    new-instance p1, Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/launcher/util/LooperExecutor;

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private checkLockScreenOrScreenOff()Z
    .locals 4

    .line 64
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$lBLsEHEj-tslGSWNA2TOnwaSw08;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$lBLsEHEj-tslGSWNA2TOnwaSw08;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 69
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Launcher_UnlockAnimationStateMachine"

    const-string v2, "checkLockScreenOrScreenOff"

    .line 71
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$checkLockScreenOrScreenOff$0(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 65
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 2

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "mResetIdleStateRunnable"

    .line 77
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 1

    const-string v0, "onResume"

    .line 149
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private onScreenOff()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_1

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "setPrepare on screen off"

    .line 98
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_1
    return-void
.end method

.method private setPrepare()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "prepare_animation"

    .line 106
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->prepareAnimationForUnlock()V

    .line 108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 109
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    return-void
.end method

.method private setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V
    .locals 3

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showAnimation(Ljava/lang/String;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "show_animation"

    .line 123
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showPresent()V

    .line 125
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 126
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onDisplayChange()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 83
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOff()V

    .line 89
    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 44
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "remove mResumeShowAnimationRunnable"

    .line 45
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 47
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    .line 135
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->checkLockScreenOrScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "setPrepare onstop"

    .line 58
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_1
    return-void
.end method

.method public onUserPresent()V
    .locals 3

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "onUserPresent"

    .line 154
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocus()V
    .locals 3

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "onWindowFocus"

    .line 116
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public setPrepareByFinishLoading()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "setPrepareByFinishLoading"

    .line 143
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 145
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    return-void
.end method
