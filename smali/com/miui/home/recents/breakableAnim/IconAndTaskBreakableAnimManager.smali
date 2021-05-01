.class public Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;
.super Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;
.source "IconAndTaskBreakableAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/recents/breakableAnim/BreakableAnimManager<",
        "Lcom/miui/home/recents/util/RectFSpringAnim;",
        "Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;",
        ">;"
    }
.end annotation


# static fields
.field private static sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;


# instance fields
.field private mAncestorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDescendantRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitPosRelativeToAncestor:[F

.field private mPosRelativeToAncestor:[F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;-><init>()V

    const/4 v0, 0x2

    .line 41
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    return-void
.end method

.method public static getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 34
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 35
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    .line 36
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    invoke-direct {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    return-object v0
.end method


# virtual methods
.method protected addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    .line 74
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected bridge synthetic addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public cancelAnim()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method protected getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    .line 90
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentAlpha()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;-><init>(Landroid/graphics/RectF;FF)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getCurrentAnimParam()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    move-result-object v0

    return-object v0
.end method

.method public isAnimChainOn()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    iget-object p3, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 81
    iget p2, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskRadius:F

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    check-cast p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    check-cast p3, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V

    return-void
.end method

.method public savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mDescendantRef:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    return-void
.end method

.method public transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mDescendantRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 58
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v4, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    aget v1, v4, v1

    sub-float/2addr v2, v1

    aget v0, v0, v3

    aget v1, v4, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method
