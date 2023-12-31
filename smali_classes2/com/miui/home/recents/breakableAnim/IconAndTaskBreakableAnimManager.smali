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
.field private static final sIgnoreTransViews:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

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

.field private mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mPosRelativeToAncestor:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/recents/breakableAnim/-$$Lambda$IconAndTaskBreakableAnimManager$LWBg6aHMJzr1xRKxEBi24R_Z5ok;->INSTANCE:Lcom/miui/home/recents/breakableAnim/-$$Lambda$IconAndTaskBreakableAnimManager$LWBg6aHMJzr1xRKxEBi24R_Z5ok;

    sput-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sIgnoreTransViews:Ljava/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 47
    iput-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    new-array v0, v0, [F

    .line 48
    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    return-void
.end method

.method public static getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 40
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 41
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    .line 42
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    invoke-direct {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sTaskBreakableAnimManger:Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 0

    .line 21
    instance-of p0, p0, Lcom/miui/home/launcher/hotseats/HotSeats;

    return p0
.end method


# virtual methods
.method protected addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    const/4 p0, 0x0

    .line 89
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected bridge synthetic addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->addBreakableListener(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public cancelAnim()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method protected getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;
    .locals 3

    .line 104
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentAlpha()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;-><init>(Landroid/graphics/RectF;FF)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic getCurrentAnimParam()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnimParam()Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    move-result-object p0

    return-object p0
.end method

.method public isAnimChainOn()Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$transformPositionRelativeToAncestor$1$IconAndTaskBreakableAnimManager()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mDescendantRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    :cond_0
    return-void
.end method

.method protected onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 97
    iget p0, p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskRadius:F

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    check-cast p2, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    check-cast p3, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->onInitFromLastAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;)V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->cancelAnim()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    return-void
.end method

.method public savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mDescendantRef:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mAncestorRef:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object v3, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    sget-object v6, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->sIgnoreTransViews:Ljava/util/function/Predicate;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    .line 56
    iget-object p1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    const/4 p2, 0x0

    aget v0, p0, p2

    aput v0, p1, p2

    const/4 p2, 0x1

    .line 57
    aget p0, p0, p2

    aput p0, p1, p2

    return-void
.end method

.method public transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/breakableAnim/-$$Lambda$IconAndTaskBreakableAnimManager$nTjWyPQ3ewS6Xk-teXB6ybNxgzU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/breakableAnim/-$$Lambda$IconAndTaskBreakableAnimManager$nTjWyPQ3ewS6Xk-teXB6ybNxgzU;-><init>(Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mPosRelativeToAncestor:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->mInitPosRelativeToAncestor:[F

    aget v1, p0, v1

    sub-float/2addr v2, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aget p0, p0, v1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
