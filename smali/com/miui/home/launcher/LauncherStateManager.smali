.class public Lcom/miui/home/launcher/LauncherStateManager;
.super Ljava/lang/Object;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherStateManager$StateListener;,
        Lcom/miui/home/launcher/LauncherStateManager$StateHandler;,
        Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;,
        Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

.field private mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

.field private mLastStableState:Lcom/miui/home/launcher/LauncherState;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherStateManager$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRestState:Lcom/miui/home/launcher/LauncherState;

.field private mState:Lcom/miui/home/launcher/LauncherState;

.field private mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    .line 70
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    .line 71
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    return-object p0
.end method

.method private clearCurrentAnimation()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$002(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method private onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    .line 367
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getHistoryForState(Lcom/miui/home/launcher/LauncherState;)Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    .line 368
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->requestFocus()Z

    .line 373
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    if-eq p1, v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 378
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateListener;->onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, p1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherState;->onExitState(Lcom/miui/home/launcher/Launcher;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->setWindowLauncherState(Lcom/miui/home/launcher/LauncherState;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherState changed, from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateSoftInputMode()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 360
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateListener;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setWindowLauncherState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 272
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 278
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$2;-><init>(Lcom/miui/home/launcher/LauncherStateManager;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    return-void
.end method

.method public cancelPlaybackController()V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->resetPlaybackController()V

    return-void
.end method

.method public createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
    .locals 2

    .line 312
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallbackDirect()V

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    .line 315
    iput-wide p3, v0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    .line 316
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 317
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 319
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V

    iput-object v1, p1, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 320
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-object p0
.end method

.method protected createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 326
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-interface {v3, p1, p2, v4}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 330
    new-instance v0, Lcom/miui/home/launcher/LauncherStateManager$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$3;-><init>(Lcom/miui/home/launcher/LauncherStateManager;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0, p2, p1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "StateManager:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmLastStableState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLastStableState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmCurrentStableState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mCurrentStableState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmState:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmRestState:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 401
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    return-void
.end method

.method public exitOverviewStateIfNeed(ZZ)V
    .locals 1

    .line 120
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    .line 122
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getRestState()Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    :cond_0
    return-object p0
.end method

.method public getState()Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    return-object p0
.end method

.method public getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/touch/UiFactory;->getStateHandler(Lcom/miui/home/launcher/Launcher;)[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mStateHandlers:[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    return-object p0
.end method

.method public goToState(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 5

    const-string v0, "StateManager"

    if-eqz p1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToState  state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x7

    new-instance v3, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v4, "recents_show"

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->reenter(Lcom/miui/home/launcher/Launcher;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-boolean v1, v1, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$100(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    if-ne v1, p1, :cond_4

    return-void

    .line 221
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v1, :cond_5

    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherState;->back:Z

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_5

    .line 223
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->canCancel()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p0, "can not cancel"

    .line 224
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    .line 231
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v1, v2, :cond_6

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-eq p1, v2, :cond_7

    :cond_6
    const-string v2, "not taskView click newHome,config reset"

    .line 232
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->reset()V

    :cond_7
    if-nez p2, :cond_9

    .line 237
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    .line 239
    invoke-interface {v2, p1}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setState(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 247
    :cond_9
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_a

    iget v0, v1, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    goto :goto_1

    :cond_a
    iget v0, p1, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    :goto_1
    int-to-long v2, v0

    iput-wide v2, p2, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    .line 249
    new-instance p2, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 250
    invoke-virtual {p0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 254
    new-instance p2, Lcom/miui/home/launcher/LauncherStateManager$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/LauncherStateManager$1;-><init>(Lcom/miui/home/launcher/LauncherStateManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    :cond_b
    new-instance p2, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$StartAnimRunnable;-><init>(Lcom/miui/home/launcher/LauncherStateManager;Landroid/animation/AnimatorSet;)V

    .line 267
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goToStateBack(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->back:Z

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method public isAnimInPlayBack()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prepareForAtomicAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 3

    .line 294
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, p0, :cond_0

    iget-boolean p0, p2, Lcom/miui/home/launcher/LauncherState;->back:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    .line 295
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x0

    .line 296
    iput-boolean p0, p2, Lcom/miui/home/launcher/LauncherState;->back:Z

    .line 298
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-ne p1, p0, :cond_1

    .line 299
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 300
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 301
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 302
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, p0, :cond_2

    .line 303
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 304
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 305
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reApplyState()V
    .locals 5

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getStateHandlers()[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 108
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-interface {v3, v4}, Lcom/miui/home/launcher/LauncherStateManager$StateHandler;->setState(Lcom/miui/home/launcher/LauncherState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reApplyStateIfNeed()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    :cond_0
    return-void
.end method

.method public removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V
    .locals 4

    .line 160
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iget-object v3, v3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 165
    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager;->clearCurrentAnimation()V

    goto :goto_2

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager;->clearCurrentAnimation()V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mState:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherStateManager;->onStateTransitionEnd(Lcom/miui/home/launcher/LauncherState;)V

    .line 185
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->setDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public setRestState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager;->mRestState:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method

.method public setUserControlled(Z)V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager;->mConfig:Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    return-void
.end method
