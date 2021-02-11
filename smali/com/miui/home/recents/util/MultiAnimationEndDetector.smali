.class public Lcom/miui/home/recents/util/MultiAnimationEndDetector;
.super Ljava/lang/Object;
.source "MultiAnimationEndDetector.java"


# instance fields
.field mEndRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIsStartDetect:Z

.field mRectFSpringAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field mSpringAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mValueAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isLaseEndAnim(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    return-void
.end method

.method private isLaseEndAnim(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    iget-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eq p1, v2, :cond_1

    .line 30
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eq p1, v2, :cond_3

    .line 35
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    if-eq p1, v2, :cond_5

    .line 41
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private performEndRunnable()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimation(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    instance-of v0, p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 81
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 92
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 93
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 104
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 105
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public addEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 124
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 129
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 135
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_2

    .line 140
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 50
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startDetect()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method
