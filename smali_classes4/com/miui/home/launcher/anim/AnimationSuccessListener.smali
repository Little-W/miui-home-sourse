.class public abstract Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationSuccessListener.java"


# instance fields
.field protected mCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/AnimationSuccessListener;->mCancelled:Z

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;->onAnimationSuccess(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public abstract onAnimationSuccess(Landroid/animation/Animator;)V
.end method
