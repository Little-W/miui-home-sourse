.class public Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
.super Ljava/lang/Object;
.source "AnimatorPlaybackController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;
    }
.end annotation


# instance fields
.field protected final mAnim:Landroid/animation/AnimatorSet;

.field private final mAnimationPlayer:Landroid/animation/ValueAnimator;

.field private mChildAnimations:[Landroid/animation/ValueAnimator;

.field private mController:Lcom/miui/home/launcher/util/LauncherStateSwitch;

.field protected mCurrentFraction:F

.field private final mDuration:J

.field private mEndAction:Ljava/lang/Runnable;

.field private mTargetCancelled:Z


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    .line 56
    iput-wide p2, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mDuration:J

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 58
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController$1;-><init>(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p2, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mChildAnimations:[Landroid/animation/ValueAnimator;

    .line 83
    iput-object p4, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mController:Lcom/miui/home/launcher/util/LauncherStateSwitch;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private dispatchOnCancelRecursively(Landroid/animation/Animator;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 176
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 179
    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 180
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 181
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancelRecursively(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dispatchOnStartRecursively(Landroid/animation/Animator;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 160
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 163
    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 164
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 165
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStartRecursively(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    .line 195
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 196
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 198
    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    :cond_2
    instance-of v4, v3, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 204
    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_3
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 206
    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static nonNullList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public canCancel()Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mController:Lcom/miui/home/launcher/util/LauncherStateSwitch;

    if-eqz p0, :cond_0

    .line 188
    invoke-interface {p0}, Lcom/miui/home/launcher/util/LauncherStateSwitch;->canCancel()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected clampDuration(F)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mDuration:J

    long-to-float p0, v0

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    float-to-long p0, p0

    .line 150
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dispatchOnCancel()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancelRecursively(Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchOnStart()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStartRecursively(Landroid/animation/Animator;)V

    return-void
.end method

.method public getAnimationPlayer()Landroid/animation/ValueAnimator;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getInterpolatedProgress()F
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method

.method public getProgressFraction()F
    .locals 0

    .line 125
    iget p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    return p0
.end method

.method public getTarget()Landroid/animation/AnimatorSet;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public setEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPlayFraction(F)V
    .locals 6

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mCurrentFraction:F

    .line 115
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v0

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->mChildAnimations:[Landroid/animation/ValueAnimator;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p0, v2

    .line 120
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
