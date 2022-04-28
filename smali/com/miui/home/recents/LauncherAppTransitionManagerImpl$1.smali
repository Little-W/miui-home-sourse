.class Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$recentsView:Lcom/miui/home/recents/views/RecentsView;

.field final synthetic val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p4, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNewHomeViewAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNewHomeOverlayAttachedAndEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 106
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    if-nez p1, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    .line 93
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 98
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;-><init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    .line 117
    invoke-static {p1, v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->access$002(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;Z)Z

    .line 118
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    .line 119
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method
