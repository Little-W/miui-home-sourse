.class public Lcom/miui/home/recents/RecentsViewStateController;
.super Ljava/lang/Object;
.source "RecentsViewStateController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsViewStateController$_lancet;
    }
.end annotation


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNeedPerformEndRunnable:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 26
    iput-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsViewStateController;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private doBlurAnim(Lcom/miui/home/launcher/LauncherState;F)V
    .locals 1

    .line 76
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusUseBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result p2

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 8

    if-eqz p1, :cond_5

    const-string v0, "RecentsViewStateController"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/RecentsViewStateController$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    const/4 v2, 0x0

    .line 39
    iput-boolean v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 40
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_2

    .line 41
    iget-boolean v3, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v2, v6, v7}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    .line 45
    :cond_0
    iget-boolean v3, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v3, :cond_1

    .line 46
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 47
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 48
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 52
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 53
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 54
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    .line 55
    invoke-virtual {v1, v4}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 57
    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/miui/home/recents/RecentsViewStateController;->doBlurAnim(Lcom/miui/home/launcher/LauncherState;F)V

    goto :goto_2

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    const/16 v3, 0x8

    .line 60
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 61
    invoke-virtual {v0, v4}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 63
    :goto_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 64
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 65
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 67
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/miui/home/recents/RecentsViewStateController;->doBlurAnim(Lcom/miui/home/launcher/LauncherState;F)V

    const-wide/16 v1, 0x0

    .line 71
    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    :goto_2
    return-void

    :cond_5
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 6

    if-eqz p1, :cond_8

    const-string p2, "RecentsViewStateController"

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState: state="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   mIsIgnoreOverviewAnim="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/home/recents/RecentsViewStateController$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    .line 96
    iget-object p3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    .line 98
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_3

    .line 99
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    .line 102
    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 103
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p3, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 105
    invoke-virtual {p3, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 106
    iget-boolean p3, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez p3, :cond_2

    .line 107
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p3, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 111
    invoke-virtual {p3, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 112
    invoke-virtual {p2, v3}, Lcom/miui/home/recents/views/RecentsView;->setAlpha(F)V

    .line 113
    invoke-virtual {p2, v3}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 114
    invoke-virtual {p2, v3}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    .line 115
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 117
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/miui/home/recents/RecentsViewStateController;->doBlurAnim(Lcom/miui/home/launcher/LauncherState;F)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v4, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v0, v4, :cond_7

    .line 119
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 120
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_5

    .line 121
    iput-boolean v5, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 123
    new-instance v0, Lcom/miui/home/recents/RecentsViewStateController$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/home/recents/RecentsViewStateController$1;-><init>(Lcom/miui/home/recents/RecentsViewStateController;Lcom/miui/home/recents/views/RecentsContainer;)V

    .line 133
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getMenuView()Lcom/miui/home/recents/views/RecentMenuView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 135
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4

    .line 136
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result p2

    goto :goto_1

    .line 138
    :cond_4
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result p2

    :goto_1
    if-nez p2, :cond_5

    .line 141
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    :cond_5
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result p2

    if-eqz p2, :cond_6

    move v1, v3

    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/RecentsViewStateController;->doBlurAnim(Lcom/miui/home/launcher/LauncherState;F)V

    const-wide/16 p1, 0x0

    const-wide/16 v0, 0xfa

    .line 146
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    return-void
.end method
