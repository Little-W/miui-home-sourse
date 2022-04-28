.class public Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;
.super Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;
.source "HomeBreakableAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/recents/breakableAnim/BreakableAnimManager<",
        "Landroid/animation/ValueAnimator;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static sHomeBreakableAnimManager:Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->sHomeBreakableAnimManager:Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    invoke-direct {v0}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->sHomeBreakableAnimManager:Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->sHomeBreakableAnimManager:Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    return-object v0
.end method


# virtual methods
.method protected addBreakableListener(Landroid/animation/ValueAnimator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 35
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected bridge synthetic addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 6
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->addBreakableListener(Landroid/animation/ValueAnimator;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public cancelAnim()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected getCurrentAnimParam()Ljava/lang/Float;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getCurrentAnimParam()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->getCurrentAnimParam()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public isAnimChainOn()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onInitFromLastAnimParam(Landroid/animation/ValueAnimator;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, v1

    const/4 p2, 0x1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    aput p3, v0, p2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Landroid/animation/ValueAnimator;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->onInitFromLastAnimParam(Landroid/animation/ValueAnimator;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
