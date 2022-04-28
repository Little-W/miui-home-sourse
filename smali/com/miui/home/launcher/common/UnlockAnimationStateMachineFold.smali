.class public Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;
.super Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.source "UnlockAnimationStateMachineFold.java"


# instance fields
.field private mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    return-void
.end method

.method private getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;
    .locals 1

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onDisplayChange()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->prepareAnimationForUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;->PREPARE:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachineFold;->setState(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$STATE;)V

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onDisplayChange()V

    return-void
.end method
