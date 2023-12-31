.class public Lcom/miui/home/recents/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;,
        Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTaskId:I

.field private mInitialTaskIntent:Landroid/content/Intent;

.field private mInitialTaskPackageName:Ljava/lang/String;

.field private mInitialTaskUserId:I

.field private mRecentsAnimationRunning:Z

.field private mSecondIntent:Landroid/content/Intent;

.field private mSecondPackageName:Ljava/lang/String;

.field private mSecondTaskId:I

.field private mSecondTaskStagePosition:I

.field private mSecondUser:Landroid/os/UserHandle;

.field private mSecondUserId:I

.field private final mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/home/launcher/LauncherStateManager;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    .line 80
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 81
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    .line 84
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    .line 91
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p3, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;IZLjava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/recents/util/SplitSelectStateController;->startSplitLaunchAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;IZLjava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/SplitSelectStateController;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/util/SplitSelectStateController;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return p0
.end method

.method private isSameApp()Z
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    iget p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSecondTaskIntentSet()Z
    .locals 2

    .line 417
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startSplitLaunchAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;IZLjava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "IZ",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    .line 313
    iget-object v9, v1, Lcom/miui/home/recents/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p5

    move v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$xe1viNrt_207IhtF0nCPlAAcszk;-><init>(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-static {v9, v10}, Lcom/miui/home/recents/util/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getInitialTaskPackageName()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getInitialTaskUserId()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    return p0
.end method

.method public isBothSplitAppsConfirmed()Z
    .locals 2

    .line 413
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->isSecondTaskIntentSet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$startSplitLaunchAnimation$0$SplitSelectStateController([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 4

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    :cond_0
    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isDoAnimationFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SplitSelectStateController"

    const-string v2, "startSplitLaunchAnimation showDockDivider = false"

    .line 330
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 335
    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 337
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    if-eqz p3, :cond_3

    .line 339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetState()V

    return-void
.end method

.method public synthetic lambda$startSplitLaunchAnimation$1$SplitSelectStateController([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 12

    move-object v0, p0

    move-object v4, p1

    .line 314
    array-length v1, v4

    const/4 v2, 0x0

    :goto_0
    const-string v3, "SplitSelectStateController"

    if-ge v2, v1, :cond_0

    aget-object v5, v4, v2

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startSplitLaunchAnimation: mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", taskId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isTranslucent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_0
    new-instance v8, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;

    move-object v6, p2

    move-object v2, p3

    move-object/from16 v5, p4

    invoke-direct {v1, p0, p2, p3, v5}, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$jYg1BNKjEQnGghslbfzMLAQaS2w;-><init>(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    invoke-direct {v8, v1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;)V

    if-nez p5, :cond_1

    .line 346
    invoke-virtual {v8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void

    .line 350
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v5, :cond_2

    .line 354
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    :cond_2
    if-nez v2, :cond_3

    .line 357
    invoke-virtual {v8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    const-string v0, "startSplitLaunchAnimation: appTransitionManagerImpl is null, return"

    .line 358
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v3, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 363
    iget v9, v0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, v2

    move-object v2, v3

    move/from16 v3, p6

    move-object v4, p1

    move-object/from16 v5, p7

    move-object v6, p2

    invoke-virtual/range {v0 .. v11}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;IIZ)V

    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {v8}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    const-string v0, "startSplitLaunchAnimation: laucher is null"

    .line 368
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public launchSplitTasks(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->isSameApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetSecondState()V

    return-void

    .line 129
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    iget-object v2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    const/high16 v5, 0x2000000

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v3, 0x1

    .line 136
    iget v4, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    iget v7, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchTasks(ZILandroid/app/PendingIntent;Landroid/content/Intent;ILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTasks(ZIILjava/util/function/Consumer;ZF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    const/4 v1, 0x1

    .line 166
    iput v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 167
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/util/SplitSelectStateController;->launchTasks(ZILandroid/app/PendingIntent;Landroid/content/Intent;ILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTasks(ZILandroid/app/PendingIntent;Landroid/content/Intent;ILjava/util/function/Consumer;ZF)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 179
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    if-eqz p7, :cond_0

    .line 181
    invoke-static {v8}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setFreezeRecentTasksReordering(Landroid/app/ActivityOptions;)V

    .line 184
    :cond_0
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v9, :cond_6

    .line 186
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    new-instance v6, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;-><init>(Lcom/miui/home/recents/util/SplitSelectStateController;ZIILjava/util/function/Consumer;)V

    .line 188
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/content/ContextWrapper;)V

    .line 190
    iget v1, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    if-nez v1, :cond_2

    .line 191
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v11, p2

    move/from16 v13, p5

    move/from16 v16, p8

    move-object/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto/16 :goto_0

    .line 194
    :cond_1
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    iget v14, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move/from16 v10, p2

    move/from16 v12, p5

    move/from16 v15, p8

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto/16 :goto_0

    .line 200
    :cond_2
    iget v11, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 201
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    iget v1, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    move/from16 v13, p2

    move/from16 v16, v1

    move/from16 v17, p8

    move-object/from16 v18, v0

    .line 200
    invoke-virtual/range {v9 .. v18}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto/16 :goto_0

    .line 205
    :cond_3
    new-instance v17, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;-><init>(Lcom/miui/home/recents/util/SplitSelectStateController;ZILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V

    .line 206
    new-instance v22, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const-wide/16 v18, 0x12c

    const-wide/16 v20, 0x96

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    .line 208
    iget v0, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    if-nez v0, :cond_5

    .line 209
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p2

    move/from16 v3, p5

    move/from16 v6, p8

    move-object/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    iget v14, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move/from16 v10, p2

    move/from16 v12, p5

    move/from16 v15, p8

    move-object/from16 v16, v22

    invoke-virtual/range {v9 .. v16}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v7, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p2

    move/from16 v16, p8

    move-object/from16 v17, v22

    .line 219
    invoke-virtual/range {v9 .. v17}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public resetSecondState()V
    .locals 2

    const/4 v0, -0x1

    .line 392
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    .line 394
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    .line 395
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 396
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    return-void
.end method

.method public resetState()V
    .locals 2

    const/4 v0, -0x1

    .line 377
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, 0x0

    .line 378
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 379
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    .line 380
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 381
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    .line 382
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    .line 383
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    .line 384
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 385
    iput-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 386
    iput v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    .line 387
    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    .line 388
    iput-boolean v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return-void
.end method

.method public setInitialTaskSelect(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetState()V

    .line 102
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskId:I

    .line 103
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskPackageName:Ljava/lang/String;

    .line 105
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mInitialTaskUserId:I

    .line 106
    iput p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskStagePosition:I

    return-void
.end method

.method public setSecondIntent(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondIntent:Landroid/content/Intent;

    .line 152
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUserId:I

    .line 153
    iput-object p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondUser:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 156
    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    return-void
.end method

.method public setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 146
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController;->mType:I

    return-void
.end method
