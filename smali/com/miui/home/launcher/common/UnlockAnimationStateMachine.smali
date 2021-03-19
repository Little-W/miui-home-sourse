.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;,
        Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field private mOldDisplayState:I

.field private mResetIdleStateRunnable:Ljava/lang/Runnable;

.field private mResumeShowAnimationRunnable:Ljava/lang/Runnable;

.field private mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

.field private resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    .line 78
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$l5JOGPfxcnz5WMlYqcjw5Ywh5Zc;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$c0dkhWINrtpry7Nnf8ErKRFD9fY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$c0dkhWINrtpry7Nnf8ErKRFD9fY;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 27
    new-instance p1, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;I)I
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->changeSNewInsetsModeValue(I)I

    move-result p0

    return p0
.end method

.method private changeSNewInsetsModeValue(I)I
    .locals 3

    :try_start_0
    const-string v0, "android.view.ViewRootImpl"

    .line 199
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sNewInsetsMode"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception v0

    move v2, p1

    .line 205
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method private checkLockScreenOrScreenOff()Z
    .locals 4

    .line 66
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$lBLsEHEj-tslGSWNA2TOnwaSw08;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachine$lBLsEHEj-tslGSWNA2TOnwaSw08;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 71
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

    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 67
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 66
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

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 1

    const-string v0, "onResume"

    .line 153
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private onScreenOff()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 98
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

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_1
    return-void
.end method

.method private setPrepare()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "prepare_animation"

    .line 108
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->prepareAnimationForUnlock()V

    .line 110
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    return-void
.end method

.method private setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V
    .locals 3

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showAnimation(Ljava/lang/String;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "show_animation"

    .line 127
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showPresent()V

    .line 129
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 130
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    return-void
.end method

.method private skipUnExceptTraversal()V
    .locals 4

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->changeSNewInsetsModeValue(I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    iput v0, v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;->insetsMode:I

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->resetInsetsRunnable:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onDisplayChange()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOff()V

    .line 91
    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mOldDisplayState:I

    return-void
.end method

.method public onFingerFastUnlock()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->skipUnExceptTraversal()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 46
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "remove mResumeShowAnimationRunnable"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 49
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResetIdleStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    .line 139
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_1

    .line 141
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->IDLE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->checkLockScreenOrScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "setPrepare onstop"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepare()V

    :cond_1
    return-void
.end method

.method public onUserPresent()V
    .locals 3

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "onUserPresent"

    .line 158
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocus()V
    .locals 3

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onWindowFocus"

    .line 119
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
