.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;
.super Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.source "UnlockAnimationStateMachineFold.java"


# instance fields
.field private final mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 20
    new-instance p1, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    return-void
.end method

.method public static synthetic lambda$onDisplayChange$0(Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;I)Lkotlin/Unit;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 33
    sget-object p1, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PAUSE_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    const-string p1, "Launcher_UnlockAnimationStateMachine"

    const-string v0, "FoldScreenMode changed, So force re-prepare animation !"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onDisplayChange()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayState(Landroid/content/Context;)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mOldDisplayState:I

    if-ne v0, v1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    new-instance v2, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachineFold$lMgZFzG3y_voojJT7hYLMMubQ20;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/common/-$$Lambda$UnlockAnimationStateMachineFold$lMgZFzG3y_voojJT7hYLMMubQ20;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;I)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->onScreenOff()V

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mState:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    sget-object v2, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->RESUME_WAIT:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    if-ne v1, v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mResumeShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "onDisplayChange"

    .line 44
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->showAnimation(Ljava/lang/String;)V

    .line 46
    :cond_2
    iput v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mOldDisplayState:I

    return-void
.end method
