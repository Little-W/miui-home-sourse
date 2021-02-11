.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;
.super Landroid/animation/Animator;
.source "SpringLayerAnimator.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;,
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;
    }
.end annotation


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mDelay:J

.field private final mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

.field private final mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;FF)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    .line 27
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;FF)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    return-void
.end method

.method public static synthetic lambda$start$0(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->start()V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->start()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 62
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateToFinalPositionX(F)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$400(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;F)V

    return-void
.end method

.method animateToFinalPositionY(F)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$400(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;F)V

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$200(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$200(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 84
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mDelay:J

    return-wide v0
.end method

.method public getValueX()F
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$300(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)F

    move-result v0

    return v0
.end method

.method public getValueY()F
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$300(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$000(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$000(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 171
    invoke-interface {p2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;

    .line 180
    invoke-interface {p2, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mDelay:J

    return-void
.end method

.method public setValues(FFFFFF)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringX:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {v0, p1, p3, p5}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$100(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;FFF)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->mSpringY:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;

    invoke-static {p1, p2, p4, p6}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->access$100(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;FFF)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 57
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerAnimator$D3S7ReZqKFRjqhm3p-DEo9yuXyY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerAnimator$D3S7ReZqKFRjqhm3p-DEo9yuXyY;-><init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getStartDelay()J

    move-result-wide v2

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
