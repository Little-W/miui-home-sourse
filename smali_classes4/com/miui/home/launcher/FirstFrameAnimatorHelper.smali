.class public Lcom/miui/home/launcher/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartTime:J

    .line 48
    iput-object p2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 49
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 59
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 60
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    iget-wide v2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 90
    sget-wide v2, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 91
    iput-wide v0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartTime:J

    .line 94
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 101
    sget-wide v3, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v5, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x3e8

    if-nez v7, :cond_1

    .line 105
    iget-wide v10, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v10, v8

    cmp-long v7, v0, v10

    if-gez v7, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 109
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 114
    iget-wide v4, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v8, v4

    cmp-long v6, v0, v8

    if-gez v6, :cond_2

    iget-boolean v6, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v6, :cond_2

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 117
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 118
    iput-boolean v2, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/FirstFrameAnimatorHelper$2;-><init>(Lcom/miui/home/launcher/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    :cond_4
    return-void
.end method
