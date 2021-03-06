.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.source "UserPresentAnimationCompatV10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10$BackEaseOutInterpolator;
    }
.end annotation


# instance fields
.field private mLastStartedView:Landroid/view/View;

.field private mScreenDiagonalDistance:I

.field private mTmpLocation:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;-><init>()V

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mTmpLocation:[I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mLastStartedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getLastStartedView()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mLastStartedView:Landroid/view/View;

    return-object v0
.end method

.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 9

    .line 30
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mScreenDiagonalDistance:I

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mScreenDiagonalDistance:I

    .line 34
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 37
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mTmpLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 39
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 40
    iget-object v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mTmpLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v0

    sub-int/2addr v4, v1

    int-to-float v0, v2

    int-to-float v1, v4

    .line 43
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    mul-int/lit16 v1, v0, 0x1f4

    .line 45
    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mScreenDiagonalDistance:I

    div-int/2addr v1, v5

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v0, v5

    const v5, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    if-nez v1, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    neg-int v2, v2

    int-to-float v2, v2

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v2, v7

    :goto_0
    if-nez v1, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    neg-int v4, v4

    int-to-float v4, v4

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v4, v7

    .line 50
    :goto_1
    instance-of v5, p1, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    .line 51
    invoke-interface {v5}, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;->needReset()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    :goto_2
    add-float/2addr v2, v5

    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, -0x32

    .line 59
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10$BackEaseOutInterpolator;

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v7, 0xfa

    .line 64
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mLastStartedView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 73
    :cond_5
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->mLastStartedView:Landroid/view/View;

    :cond_6
    return-void
.end method
