.class public Lcom/miui/home/launcher/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"


# static fields
.field static sAnimators:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public static blockedFlingDurationFactor(F)I
    .locals 2

    .line 137
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/miui/home/launcher/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 93
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 106
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 110
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 111
    new-instance p1, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 117
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 118
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 120
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 121
    new-instance p1, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 127
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 128
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 130
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 131
    new-instance p0, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-object v0
.end method

.method public static onDestroyActivity()V
    .locals 3

    .line 82
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 84
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v2, Lcom/miui/home/launcher/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
