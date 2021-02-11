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

.field final synthetic val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->mIsCancel:Z

    .line 84
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$targets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNewHomeViewAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    iput-boolean v1, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    return-void
.end method
