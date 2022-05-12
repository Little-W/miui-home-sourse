.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.source "UserPresentAnimationCompatV12Spring.java"


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    const v0, -0x3b448000    # -1500.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x41a00000    # 20.0f

    .line 23
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;-><init>(Lcom/miui/home/launcher/Launcher;FFF)V

    return-void
.end method

.method private endAnimation(Landroid/view/View;I)V
    .locals 1

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getSpringAnimator(Landroid/view/View;IFFFF)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 1

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0, p5, p6, p3, p4}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$showUserPresentAnimation$0(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;IILandroid/view/View;F)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->conversionValueFrom3DTo2D(IIF)[F

    move-result-object p1

    const/4 p2, 0x0

    .line 58
    aget p2, p1, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p2, 0x1

    .line 59
    aget p2, p1, p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x2

    .line 60
    aget p4, p1, p2

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleX(F)V

    .line 61
    aget p1, p1, p2

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public endAnimation(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a02d6

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a02db

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->resetView(Landroid/view/View;)V

    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;IZ)V
    .locals 10

    const p3, 0x7f0a02d0

    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    invoke-virtual {p1, p3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const p3, 0x7f0a02d1

    .line 48
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 50
    invoke-virtual {p1, p3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const v5, 0x7f0a02db

    const v6, -0x3b448000    # -1500.0f

    const/4 v7, 0x0

    const v8, 0x3f47ae14    # 0.78f

    const v9, 0x3eb33333    # 0.35f

    move-object v3, p0

    move-object v4, p1

    .line 52
    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimator(Landroid/view/View;IFFFF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p3

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    :goto_1
    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartVelocity(F)V

    .line 56
    new-instance v1, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;IILandroid/view/View;)V

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    int-to-long v0, p2

    .line 63
    invoke-virtual {p3, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    const v4, 0x7f0a02d6

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const v8, 0x3dcccccd    # 0.1f

    move-object v2, p0

    move-object v3, p1

    .line 65
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimator(Landroid/view/View;IFFFF)Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p2

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/miui/home/launcher/compat/-$$Lambda$Ha1Zt_z4-25WcwQGPzDUEZW5QkY;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/compat/-$$Lambda$Ha1Zt_z4-25WcwQGPzDUEZW5QkY;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 67
    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    return-void
.end method
