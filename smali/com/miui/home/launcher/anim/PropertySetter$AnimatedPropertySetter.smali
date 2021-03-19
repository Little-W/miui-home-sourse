.class public Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;
.super Lcom/miui/home/launcher/anim/PropertySetter;
.source "PropertySetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/PropertySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedPropertySetter"
.end annotation


# instance fields
.field private mDuration:J

.field private final mStateAnimator:Lcom/miui/home/launcher/anim/AnimatorSetBuilder;


# direct methods
.method public constructor <init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/PropertySetter;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mDuration:J

    .line 58
    iput-object p3, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mStateAnimator:Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mDuration:J

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mDuration:J

    return-void
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 93
    iget-wide p2, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    iget-object p2, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mStateAnimator:Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 77
    invoke-static {p1}, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void

    .line 80
    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 81
    new-instance v0, Lcom/miui/home/launcher/anim/AlphaUpdateListener;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    iget-wide v0, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mDuration:J

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->mStateAnimator:Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void
.end method
