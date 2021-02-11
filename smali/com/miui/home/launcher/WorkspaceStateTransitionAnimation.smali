.class public Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation$_lancet;
    }
.end annotation


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setOverviewBackgroundProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseSimpleRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p2, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewBackgroundAnim:Z

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getOverviewBackgroundAlpha()F

    move-result p2

    .line 101
    new-instance v0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 102
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object p1

    invoke-virtual {p3, p1, p2, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    :cond_1
    return-void
.end method

.method static setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 7

    .line 107
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 109
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 110
    aget v2, p1, v2

    const/4 v3, 0x3

    .line 111
    aget p1, p1, v3

    .line 112
    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x6

    invoke-virtual {p3, v4, v3}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-nez v5, :cond_0

    .line 113
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_0
    const/16 v6, 0x9

    invoke-virtual {p3, v6, v5}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v5

    invoke-virtual {p2, v5, v0, p3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p3

    cmpl-float v0, v2, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p2, p3, v2, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p3

    cmpl-float v0, p1, v4

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p2, p3, p1, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p0, p1, v1, v3}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V
    .locals 7

    .line 121
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    .line 122
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 124
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 126
    new-instance v2, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v3, 0x3f7d70a4    # 0.99f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 127
    invoke-virtual {p3}, Lcom/miui/home/launcher/anim/PropertySetter;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    long-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 131
    :cond_0
    invoke-virtual {p3, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setDuration(J)V

    const-string v3, "StateManager"

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShortcutMenuLayerProperty  state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   alpha="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   scale="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    if-nez v5, :cond_1

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p3, p2, v0, v3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p3, p2, v0, v1, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "StateManager"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWorkspaceProperty  state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslation(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorTranslation(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    .line 74
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v3

    .line 75
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v4

    .line 80
    iget-object v6, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v6}, Lcom/miui/home/launcher/LauncherState;->getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v4

    :goto_0
    const/4 v7, 0x6

    .line 82
    sget-object v8, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v7, v8}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/4 v8, 0x7

    cmpl-float v9, v4, v5

    if-nez v9, :cond_2

    .line 83
    sget-object v9, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p3, v8, v9}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/16 v9, 0x8

    cmpl-float v10, v3, v5

    if-nez v10, :cond_3

    .line 84
    sget-object v10, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    sget-object v10, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p3, v9, v10}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v9

    const/16 v10, 0x9

    cmpl-float v5, v6, v5

    if-nez v5, :cond_4

    .line 85
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {p3, v10, v5}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 86
    iget-object v10, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v10, v11, v0, v7}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v0, v4, v8}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    invoke-virtual {p2, v0, v6, v5}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, v4, v1, v7}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, v1, v2, v7}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v9}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 93
    iget-object p3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V

    .line 94
    iget-object p3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setOverviewBackgroundProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 61
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method
