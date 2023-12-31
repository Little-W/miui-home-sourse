.class public Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
.super Ljava/lang/Object;
.source "FloatValueAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;,
        Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;
    }
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field endListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 45
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    .line 47
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public build()Landroid/animation/ValueAnimator;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->endListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$2;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$2;-><init>(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public delayBy(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method public duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->endListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;

    return-object p0
.end method

.method public onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;-><init>(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public repeat(I)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object p0
.end method
