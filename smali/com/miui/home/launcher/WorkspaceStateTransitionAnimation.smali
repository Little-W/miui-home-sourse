.class public Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method static setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 8

    .line 102
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 104
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 105
    aget v2, p1, v2

    const/4 v3, 0x3

    .line 106
    aget v3, p1, v3

    const/4 v4, 0x4

    .line 107
    aget p1, p1, v4

    .line 108
    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x6

    invoke-virtual {p3, v5, v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-nez v6, :cond_0

    .line 109
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_0
    const/16 v7, 0x9

    invoke-virtual {p3, v7, v6}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v6

    invoke-virtual {p2, v6, v0, p3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p3

    cmpl-float v0, v2, v5

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p2, p3, v2, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p2, p3, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p3, v0, v1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p0, p3, p1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V
    .locals 7

    .line 118
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    .line 119
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 120
    iget-boolean v2, p2, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 122
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 124
    new-instance v2, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v3, 0x3f7d70a4    # 0.99f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 125
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

    .line 129
    :cond_0
    invoke-virtual {p3, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setDuration(J)V

    const-string v3, "StateManager"

    .line 130
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

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    if-nez v5, :cond_1

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p3, p2, v0, v3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p3, p2, v3, v1, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p3, p2, v3, v1, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScale(FF)V

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setAlphaAndScale(FF)V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "StateManager"

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWorkspaceProperty  state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v4, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v4

    .line 73
    iget-object v5, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v5

    .line 74
    iget-object v6, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v6

    .line 75
    iget-object v7, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v7}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v7

    .line 76
    iget-object v8, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v8}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v8

    .line 77
    iget-object v9, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v9}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v9

    .line 78
    iget-object v10, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v10}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    .line 82
    iget-object v10, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v10}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v10

    .line 83
    iget-object v12, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/LauncherState;->getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v12

    goto :goto_0

    :cond_0
    move v10, v11

    move v12, v10

    :goto_0
    const/4 v13, 0x6

    .line 85
    sget-object v14, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v13, v14}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v13

    const/4 v14, 0x7

    cmpl-float v15, v10, v11

    if-nez v15, :cond_1

    .line 86
    sget-object v15, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v15, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v14, v15}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v14

    const/16 v15, 0x8

    cmpl-float v16, v9, v11

    if-nez v16, :cond_2

    .line 87
    sget-object v16, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v16, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    move-object/from16 v11, v16

    invoke-virtual {v3, v15, v11}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v11

    const/16 v15, 0x9

    const/16 v16, 0x0

    cmpl-float v16, v12, v16

    if-nez v16, :cond_3

    .line 88
    sget-object v16, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_3
    sget-object v16, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_3
    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 89
    iget-object v15, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2, v15, v3, v4, v13}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v3, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v2, v3, v4, v5, v13}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v3, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v3, v10, v14}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v3, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v3

    invoke-virtual {v2, v3, v12, v1}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v1

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2, v1, v3, v6, v13}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v1

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v2, v1, v3, v7, v13}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v1

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2, v1, v3, v8, v13}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 96
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v9, v11}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static {v1, v3, v2, v4}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 98
    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 64
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method
