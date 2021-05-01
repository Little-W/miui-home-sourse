.class public Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "AllAppsTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# static fields
.field private static final ALL_APPS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/allapps/AllAppsTransitionController;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDragging:Z

.field private mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

.field private mContainerVelocity:F

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mProgress:F

.field private mScrimView:Lcom/miui/home/launcher/view/ScrimView;

.field private mShiftRange:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "allAppsProgress"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$W_ip1t4KFQ4HKdBcD50Hpx9VDI0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$W_ip1t4KFQ4HKdBcD50Hpx9VDI0;-><init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationStart()V

    return-void
.end method

.method private onProgressAnimationEnd()V
    .locals 2

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->reset()V

    .line 204
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScrollUpEnd()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onProgressAnimationStart()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    return-void
.end method

.method private setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 1

    if-nez p2, :cond_0

    .line 165
    sget-object p2, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;

    move-result-object p2

    .line 167
    :goto_0
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 170
    :goto_1
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3, p1, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setProgress(F)V
    .locals 4

    .line 110
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/ScrimView;->setProgress(F)V

    .line 112
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v0, p1

    .line 114
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setTranslationY(F)V

    float-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mContainerVelocity:F

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->updateCaret(FFZ)V

    return-void
.end method


# virtual methods
.method public getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 174
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;-><init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    return-object v0
.end method

.method public getShiftRange()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    return v0
.end method

.method public isShow()Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 94
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    return-void
.end method

.method public onDrag(F)V
    .locals 1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    .line 224
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mContainerVelocity:F

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    return-void
.end method

.method public onDragStart()V
    .locals 2

    .line 216
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    .line 218
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->onDragStart()V

    .line 219
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 133
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 134
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    .line 145
    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 148
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void

    .line 152
    :cond_0
    iget-boolean v1, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 153
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 154
    iget-wide v2, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    invoke-virtual {p2, v5, v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 160
    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 2

    .line 189
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 190
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f0a0168

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/ScrimView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    .line 192
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;-><init>(Lcom/miui/home/launcher/pageindicators/CaretDrawable;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    return-void
.end method
