.class public Lcom/miui/home/launcher/animate/SpringAnimator;
.super Ljava/lang/Object;
.source "SpringAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;,
        Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    }
.end annotation


# instance fields
.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mEnd:F

.field private mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

.field private mMinVisibleChange:F

.field private mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStart:F

.field private mStartDelayRunnable:Ljava/lang/Runnable;

.field private mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x38d1b717    # 1.0E-4f

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mMinVisibleChange:F

    .line 26
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator$1;

    const-string v1, "value"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator$1;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/animate/-$$Lambda$SpringAnimator$cphN4RydtnCI9_dhO5ReT-en0Vg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/animate/-$$Lambda$SpringAnimator$cphN4RydtnCI9_dhO5ReT-en0Vg;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mMinVisibleChange:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/animate/-$$Lambda$SpringAnimator$Me0QrGfWSbyZbzT2imUtG-yPMLo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/animate/-$$Lambda$SpringAnimator$Me0QrGfWSbyZbzT2imUtG-yPMLo;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 65
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/animate/SpringAnimator;)Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/animate/SpringAnimator;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStart:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/animate/SpringAnimator;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEnd:F

    return p0
.end method

.method public static getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 116
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 117
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 118
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static stiffnessConvert(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 112
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/high16 p0, 0x3f800000    # 1.0f

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$SpringAnimator(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 53
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$SpringAnimator()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method public registerEndAnimationMessage()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    .line 158
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEndAnimationMessageHandler:Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public setDampingResponse(FF)V
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public setStartEnd(FF)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStart:F

    .line 124
    iput p2, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mEnd:F

    return-void
.end method

.method public setStartVelocity(F)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mUpdateListener:Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    return-void
.end method

.method public skipToEnd()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public startDelay(J)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/animate/SpringAnimator;->mStartDelayRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
