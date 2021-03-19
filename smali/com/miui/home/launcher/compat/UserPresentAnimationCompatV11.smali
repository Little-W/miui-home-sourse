.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentAnimationCompatV11.java"


# instance fields
.field private final mPoivt:[I

.field private final mTmpLocation:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x2

    .line 18
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mTmpLocation:[I

    .line 19
    new-array v0, p1, [I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    div-int/2addr v1, p1

    const/4 p1, 0x0

    aput v1, v0, p1

    const/4 p1, 0x1

    const/16 v1, -0x64

    aput v1, v0, p1

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mPoivt:[I

    return-void
.end method

.method static synthetic lambda$showUserPresentAnimation$0(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 56
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 57
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 58
    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method static synthetic lambda$showUserPresentAnimation$1(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method


# virtual methods
.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 12

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 35
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mTmpLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 36
    iget-object v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mPoivt:[I

    aget v5, v4, v1

    sub-int/2addr v0, v5

    int-to-float v0, v0

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    const v2, 0x493e0

    .line 37
    div-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    .line 38
    instance-of v3, p1, Lcom/miui/home/launcher/ItemIcon;

    const v4, 0x3e4ccccd    # 0.2f

    if-eqz v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const v5, 0x3f4ccccd    # 0.8f

    :goto_0
    int-to-float v6, v0

    const v7, 0x45124000    # 2340.0f

    div-float v7, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    .line 39
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const v7, 0x45bb8000    # 6000.0f

    div-float v7, v6, v7

    .line 40
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v7, v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x45fa0000    # 8000.0f

    div-float/2addr v6, v10

    .line 41
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v4, v9

    .line 42
    invoke-static {v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v4

    .line 43
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v6, p1, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 v9, 0x0

    .line 44
    invoke-static {v9, v7, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    const v6, -0x4c4b40

    .line 45
    div-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 46
    invoke-static {v8, v7, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 47
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v6, p1, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 48
    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 49
    new-instance v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v7, p1, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 50
    invoke-virtual {v7, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v7

    check-cast v7, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 51
    new-instance v10, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v11, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v10, p1, v11}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 52
    invoke-virtual {v10, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 53
    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x1e

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    .line 54
    new-instance v5, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;

    invoke-direct {v5, v2, v6, v7, v4}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-static {v5, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    if-eqz v3, :cond_1

    .line 61
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const p1, 0x3f666666    # 0.9f

    const v3, 0x3f333333    # 0.7f

    .line 63
    invoke-static {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v3

    invoke-static {v8, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 64
    new-instance v2, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$L8HysBjpritXs5Z-_RiQzoKalAo;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$L8HysBjpritXs5Z-_RiQzoKalAo;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    const-wide/16 v3, 0x2

    mul-long/2addr v0, v3

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
