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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Object;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isLaseEndAnim(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    return-void
.end method

.method private isLaseEndAnim(Ljava/lang/Object;)Z
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
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

    .line 33
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 37
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

    .line 38
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 43
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eq p1, v0, :cond_5

    .line 44
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private performEndRunnable()V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
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

    .line 80
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAnimation(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 92
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$1;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 105
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 106
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$2;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 115
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 117
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 118
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector$3;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public addEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 61
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    .line 137
    invoke-direct {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->performEndRunnable()V

    .line 139
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

    .line 140
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$zjwm2qOrIfZTrOeiyjm-exvVUrI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$MultiAnimationEndDetector$zjwm2qOrIfZTrOeiyjm-exvVUrI;-><init>(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 153
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public hasAnimation()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mValueAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mRectFSpringAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 53
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$cancel$0$MultiAnimationEndDetector()V
    .locals 2

    .line 146
    iget-object p0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mSpringAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 147
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeEndRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 69
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mEndRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startDetect()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->mIsStartDetect:Z

    return-void
.end method
