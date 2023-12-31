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

    new-array v0, p1, [I

    .line 18
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mTmpLocation:[I

    new-array v0, p1, [I

    .line 19
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
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 11

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
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->mPoivt:[I

    aget v4, p0, v1

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aget p0, p0, v3

    sub-int/2addr v2, p0

    int-to-float p0, v2

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result p0

    const v0, 0x493e0

    .line 37
    div-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    .line 38
    instance-of v2, p1, Lcom/miui/home/launcher/ItemIcon;

    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const v4, 0x3f4ccccd    # 0.8f

    :goto_0
    int-to-float v5, p0

    const v6, 0x45124000    # 2340.0f

    div-float v6, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    .line 39
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v6, 0x45bb8000    # 6000.0f

    div-float v6, v5, v6

    .line 40
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v6, v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x45fa0000    # 8000.0f

    div-float/2addr v5, v9

    .line 41
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v8

    .line 42
    invoke-static {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v3

    .line 43
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, p1, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 v8, 0x0

    .line 44
    invoke-static {v8, v6, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const v5, -0x4c4b40

    .line 45
    div-int/2addr v5, p0

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 46
    invoke-static {v7, v6, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 47
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, p1, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 48
    invoke-virtual {v5, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v5

    check-cast v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 49
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v6, p1, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 50
    invoke-virtual {v6, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 51
    new-instance v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v9, p1, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 52
    invoke-virtual {v9, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 53
    div-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1e

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v9, p0

    .line 54
    new-instance p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;

    invoke-direct {p0, v0, v5, v6, v3}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-static {p0, v9, v10}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    if-eqz v2, :cond_1

    .line 60
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    .line 62
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const p0, 0x3f666666    # 0.9f

    const v0, 0x3f333333    # 0.7f

    .line 63
    invoke-static {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v0

    invoke-static {v7, p0, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 64
    new-instance p1, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$L8HysBjpritXs5Z-_RiQzoKalAo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$L8HysBjpritXs5Z-_RiQzoKalAo;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    const-wide/16 v0, 0x2

    mul-long/2addr v9, v0

    invoke-static {p1, v9, v10}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
