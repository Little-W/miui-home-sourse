.class public final Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mFinished:Z

.field private mInitialized:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 140
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/miui/home/recents/LauncherAnimationRunner$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "finish: mFinishRunnable.run"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 157
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    .line 158
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    goto :goto_0

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 163
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 176
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :goto_0
    return-void

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation already initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
