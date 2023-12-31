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

.method private setHotseatsProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;ILandroid/view/animation/Interpolator;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotseatsProperty: hotseats.Visiblity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.Alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.TranslationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.TranslationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,isInNormalEditing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 103
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager"

    .line 99
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    and-int/lit8 p4, p4, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    const/16 p1, 0x9

    cmpl-float p4, p0, v3

    if-nez p4, :cond_3

    .line 114
    sget-object p4, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object p4, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 115
    invoke-virtual {p2, v0, p0, p1}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 116
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, p0, v1, p5}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 117
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, v0, p0, v2, p5}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method static setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 8

    .line 121
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 123
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 124
    aget v2, p1, v2

    const/4 v3, 0x3

    .line 125
    aget v3, p1, v3

    const/4 v4, 0x4

    .line 126
    aget p1, p1, v4

    .line 127
    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x6

    invoke-virtual {p3, v5, v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-nez v6, :cond_0

    .line 128
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_0
    const/16 v7, 0x9

    invoke-virtual {p3, v7, v6}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v6

    invoke-virtual {p2, v6, v0, p3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 130
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

    .line 131
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

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p3, v0, v1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p0, p3, p1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V
    .locals 5

    .line 137
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result p0

    .line 138
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v0

    .line 139
    iget-boolean v1, p2, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 143
    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 144
    invoke-virtual {p3}, Lcom/miui/home/launcher/anim/PropertySetter;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const/4 v4, 0x0

    cmpl-float v4, p0, v4

    if-nez v4, :cond_0

    long-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 148
    :cond_0
    invoke-virtual {p3, v2, v3}, Lcom/miui/home/launcher/anim/PropertySetter;->setDuration(J)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShortcutMenuLayerProperty  state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   alpha="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   scale="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "StateManager"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    if-nez v4, :cond_1

    sget-object v2, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {p3, p2, p0, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p3, p2, v2, v0, v1}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p2

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p3, p2, v2, v0, v1}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p2

    invoke-virtual {p2, p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScale(FF)V

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setAlphaAndScale(FF)V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 11

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWorkspaceProperty  state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v3

    .line 76
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result v9

    and-int/lit8 v4, v9, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v6, 0x6

    .line 81
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v6, v7}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v6, 0x7

    cmpl-float v7, v4, v5

    if-nez v7, :cond_1

    .line 82
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p3, v6, v7}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/16 v7, 0x8

    cmpl-float v5, v3, v5

    if-nez v5, :cond_2

    .line 83
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p3, v7, v5}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 84
    iget-object v7, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v7, v8, v0, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, v0, v7, v1, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v0, v4, v6}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, v1, v2, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v5}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;)V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 91
    invoke-direct/range {v5 .. v10}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setHotseatsProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;ILandroid/view/animation/Interpolator;)V

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
