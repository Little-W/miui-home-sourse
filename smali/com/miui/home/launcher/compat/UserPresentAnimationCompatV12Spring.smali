.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.source "UserPresentAnimationCompatV12Spring.java"


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    const v2, -0x4019999a    # -1.8f

    const/high16 v3, -0x3d900000    # -60.0f

    const v4, 0x3df5c28f    # 0.12f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;-><init>(Lcom/miui/home/launcher/Launcher;FFFF)V

    return-void
.end method

.method private endAnimation(Landroid/view/View;I)V
    .locals 1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 45
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method private getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;IFFF)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 75
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 79
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 80
    invoke-virtual {p2, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 81
    invoke-static {p6}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 82
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 83
    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$showUserPresentAnimation$0(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;ZLandroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 63
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 64
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-nez p3, :cond_0

    .line 66
    invoke-virtual {p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 68
    :cond_0
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method


# virtual methods
.method public endAnimation(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0259

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a025a

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a025b

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a025c

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    const v0, 0x7f0a025d

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->endAnimation(Landroid/view/View;I)V

    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;IZ)V
    .locals 14

    .line 51
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x7f0a0259

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const v6, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v8

    .line 53
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x7f0a025a

    const v5, 0x3f547ae1    # 0.83f

    const v6, 0x3e6b851f    # 0.23f

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v9

    .line 55
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x7f0a025b

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v10

    .line 57
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x7f0a025c

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v12

    .line 59
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const v3, 0x7f0a025d

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;IFFF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v13

    .line 61
    new-instance v0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$R5FU2NArQhySJmDXFcVZhSf9TRc;

    move-object v7, v0

    move/from16 v11, p3

    invoke-direct/range {v7 .. v13}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$R5FU2NArQhySJmDXFcVZhSf9TRc;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;ZLandroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    move/from16 v1, p2

    int-to-long v1, v1

    move-object v3, p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
