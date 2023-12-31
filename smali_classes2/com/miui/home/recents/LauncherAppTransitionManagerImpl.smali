.class public final Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;
.super Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.source "LauncherAppTransitionManagerImpl.java"


# instance fields
.field private isNeedResetLauncherState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNeedResetLauncherState:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNeedResetLauncherState:Z

    return p1
.end method

.method public static synthetic lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method

.method private onAnimationListener(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V
    .locals 7

    .line 131
    new-instance v6, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;ILcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {p1, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startAnim(Ljava/util/ArrayList;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;",
            "Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/recents/views/RecentsView;",
            "Lcom/miui/home/recents/views/TaskView;",
            "ZI)V"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 190
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 193
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 195
    :cond_0
    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    if-nez p7, :cond_2

    if-eqz p6, :cond_1

    const/4 p5, 0x0

    .line 198
    :cond_1
    iget-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p0, v1, p4, p5, p3}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 201
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 202
    iget-object p5, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p5, p4}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p3, p2}, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    iput-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 205
    iget-object p2, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p3, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 206
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 208
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;IIZ)V
    .locals 20

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz p8, :cond_0

    .line 80
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/miui/home/recents/views/RecentsView;

    move-object/from16 v0, p2

    move-object/from16 v4, p4

    .line 86
    invoke-static {v6, v0, v4}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v18

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v5, 0x1

    move/from16 v3, p9

    if-nez v0, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v19, v5

    .line 89
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v7, v18

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    move/from16 v14, p9

    .line 93
    invoke-static/range {v7 .. v16}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v1

    const/4 v15, 0x3

    move/from16 v8, v19

    .line 96
    invoke-static/range {v7 .. v16}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v7

    if-eqz v1, :cond_5

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object v8, v1

    move-object v1, v7

    move-object v15, v2

    move-object v2, v6

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    move v14, v5

    move/from16 v5, p9

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->onAnimationListener(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 106
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v14

    move-object v8, v15

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz p8, :cond_6

    .line 101
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_6
    return-void

    :cond_7
    move-object v15, v2

    move v14, v5

    const/16 v16, 0x1

    move-object/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    move/from16 v14, p9

    move-object v3, v15

    move/from16 v15, p10

    .line 109
    invoke-static/range {v7 .. v16}, Lcom/miui/home/recents/TaskViewUtils;->getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v7

    if-nez v7, :cond_9

    if-eqz p8, :cond_8

    .line 114
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_8
    return-void

    :cond_9
    move/from16 v0, p11

    .line 118
    invoke-virtual {v7, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsSplitLaunchAnimation(Z)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v8, v3

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    move v9, v5

    move/from16 v5, p9

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->onAnimationListener(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 120
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_3
    invoke-virtual {v6, v9}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    move-object/from16 p1, v8

    move-object/from16 p2, p8

    move-object/from16 p3, v6

    move-object/from16 p4, v17

    move-object/from16 p5, v18

    move/from16 p6, v19

    move/from16 p7, p9

    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->startAnim(Ljava/util/ArrayList;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;ZI)V

    return-void
.end method

.method protected isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/TaskViewUtils;->findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onEnterRecentsFromApp()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNeedResetLauncherState:Z

    return-void
.end method
