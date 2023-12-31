.class Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->onAnimationListener(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

.field final synthetic val$launchType:I

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$recentsView:Lcom/miui/home/recents/views/RecentsView;

.field final synthetic val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;ILcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    iput p2, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launchType:I

    iput-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$recentsView:Lcom/miui/home/recents/views/RecentsView;

    iput-object p4, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p5, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$LauncherAppTransitionManagerImpl$1([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNewHomeViewAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNewHomeOverlayAttachedAndEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 162
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 164
    :cond_1
    iget-boolean p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    if-nez p0, :cond_2

    .line 165
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    .line 138
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->setIsOpenAnimRunning(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 153
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    .line 156
    :cond_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;-><init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->setIsOpenAnimRunning(Z)V

    .line 170
    iget-boolean p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 172
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->setIsOpenAnimRunning(Z)V

    .line 144
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-static {p1, v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->access$002(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;Z)Z

    .line 145
    iget p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launchType:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method
