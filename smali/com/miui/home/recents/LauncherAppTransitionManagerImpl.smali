.class public final Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;
.super Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.source "LauncherAppTransitionManagerImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    const/4 v1, 0x1

    xor-int/2addr p4, v1

    .line 67
    invoke-static {p1, p2, p3}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p2

    if-nez p4, :cond_2

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v1

    .line 70
    :goto_1
    invoke-static {p2, p4, p3, v0}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;Z[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    if-nez v2, :cond_3

    .line 73
    invoke-virtual {p5}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void

    .line 77
    :cond_3
    new-instance v3, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    new-instance p3, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {p3}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    if-eqz p4, :cond_4

    const/4 p2, 0x0

    .line 104
    :cond_4
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 106
    invoke-virtual {p3, v2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p3, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {p3}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    return-void
.end method

.method protected isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v1, v2, :cond_0

    .line 52
    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
