.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;
.super Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.source "UnlockAnimationStateMachineFold.java"


# instance fields
.field private mIsForcePrepare:Z

.field private mIsUpdateScreenMode:Z

.field private final mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    .line 24
    new-instance p1, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    return-void
.end method

.method private checkForceRepepareAnim()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInLargeScreen(Landroid/content/Context;)Z

    move-result v0

    .line 60
    iget-boolean v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    sget-object v2, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachineFold$udObhcCYHHgWEnyQcvQxhRwJ_iM;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachineFold$udObhcCYHHgWEnyQcvQxhRwJ_iM;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    if-eqz v1, :cond_2

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsForcePrepare:Z

    :cond_2
    return-void
.end method

.method private forceRepepareAnim(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsForcePrepare:Z

    if-eqz p1, :cond_0

    .line 71
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    .line 73
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsForcePrepare:Z

    const-string p1, "Launcher_UnlockAnimationStateMachine"

    const-string v0, "FoldScreenMode change,so force reprepare lock animation!"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkForceRepepareAnim$0()Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onDisplayChange()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->checkForceRepepareAnim()V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsForcePrepare:Z

    if-nez v1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->forceRepepareAnim(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->onScreenOff()V

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v1, v2, :cond_2

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "onDisplayChange"

    .line 52
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->showAnimation(Ljava/lang/String;)V

    .line 54
    :cond_2
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mOldDisplayState:I

    return-void
.end method

.method protected showAnimation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsUpdateScreenMode:Z

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mIsForcePrepare:Z

    .line 32
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->showAnimation(Ljava/lang/String;)V

    return-void
.end method
