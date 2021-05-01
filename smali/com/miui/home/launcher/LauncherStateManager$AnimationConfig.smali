.class public Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationConfig"
.end annotation


# instance fields
.field public duration:J

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field private mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

.field private mTargetState:Lcom/miui/home/launcher/LauncherState;

.field public playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    return-object p0
.end method

.method public static synthetic lambda$8v-ugi0eScLLHsXcxPNF7E11lgY(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->onDetectorEnd()V

    return-void
.end method

.method private onDetectorEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method


# virtual methods
.method public getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    if-nez v0, :cond_1

    .line 439
    iget-wide v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {v2, v0, v1, p1}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    return-object p1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 448
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_1

    .line 451
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 407
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    const/4 v2, 0x0

    .line 408
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    const/4 v2, 0x0

    .line 409
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mPropertySetter:Lcom/miui/home/launcher/anim/PropertySetter;

    .line 410
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    .line 412
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 420
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 421
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->cancel()V

    .line 426
    :cond_2
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method public resetPlaybackController()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 432
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    :cond_0
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->playbackController:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 457
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mTargetState:Lcom/miui/home/launcher/LauncherState;

    .line 458
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 1

    .line 462
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 463
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->mDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p1, :cond_0

    .line 464
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherStateManager$AnimationConfig$8v-ugi0eScLLHsXcxPNF7E11lgY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherStateManager$AnimationConfig$8v-ugi0eScLLHsXcxPNF7E11lgY;-><init>(Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
