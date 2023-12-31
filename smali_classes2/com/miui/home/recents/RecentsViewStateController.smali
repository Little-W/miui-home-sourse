.class public Lcom/miui/home/recents/RecentsViewStateController;
.super Ljava/lang/Object;
.source "RecentsViewStateController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNeedPerformEndRunnable:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 28
    iput-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsViewStateController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    return p0
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 9

    if-eqz p1, :cond_4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewStateController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    const/4 v3, 0x0

    .line 41
    iput-boolean v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 42
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne p1, v4, :cond_2

    .line 43
    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v7, 0x258

    invoke-static {v1, v3, v7, v8}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 47
    :cond_0
    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v1, :cond_1

    .line 48
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 49
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 52
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 53
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 54
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 55
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    .line 56
    invoke-virtual {v2, v5}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 58
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_2

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v4, v7}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    const/16 v4, 0x8

    .line 61
    invoke-virtual {v0, v4}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    const-string v4, "set RecentsContainer GONE when setState without animation"

    .line 63
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 65
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 66
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    .line 67
    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 68
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 69
    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    const-wide/16 p0, 0x0

    .line 73
    invoke-virtual {v0, p0, p1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 74
    invoke-virtual {v0, p0, p1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setState: state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   mIsIgnoreOverviewAnim="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RecentsViewStateController"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    .line 88
    iget-object p3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    .line 90
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 91
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-wide v3, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    invoke-static {v0, v2, v3, v4}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 94
    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 95
    invoke-virtual {p3, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 96
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 98
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 99
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 100
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    const/4 p3, 0x0

    .line 101
    invoke-virtual {p2, p3}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v3, :cond_6

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    .line 106
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_5

    .line 107
    iput-boolean v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 109
    new-instance v0, Lcom/miui/home/recents/RecentsViewStateController$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/home/recents/RecentsViewStateController$1;-><init>(Lcom/miui/home/recents/RecentsViewStateController;Lcom/miui/home/recents/views/RecentsContainer;)V

    .line 120
    invoke-virtual {p3}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentMenuView()Lcom/miui/home/recents/views/RecentMenuView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 122
    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->isOneKeyCleanAnimating()Z

    move-result v3

    if-nez v3, :cond_4

    .line 123
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3

    .line 124
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v2

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 130
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    const-wide/16 p0, 0xfa

    const-wide/16 v0, 0x0

    .line 135
    invoke-virtual {p3, v0, v1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 136
    invoke-virtual {p3, v0, v1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :cond_6
    :goto_1
    return-void
.end method
