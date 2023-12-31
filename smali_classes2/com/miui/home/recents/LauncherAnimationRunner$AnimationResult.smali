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
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 145
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 148
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "finish: mFinishRunnable.run"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 165
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    .line 166
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    goto :goto_0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 171
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 184
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :goto_0
    return-void

    .line 162
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
