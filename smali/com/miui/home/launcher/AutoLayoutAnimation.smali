.class public Lcom/miui/home/launcher/AutoLayoutAnimation;
.super Ljava/lang/Object;
.source "AutoLayoutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;,
        Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;,
        Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static sDisableAutoLayoutAnimation:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/launcher/AutoLayoutAnimation;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static setDisableAutoLayoutAnimation(Z)V
    .locals 0

    .line 41
    sput-boolean p0, Lcom/miui/home/launcher/AutoLayoutAnimation;->sDisableAutoLayoutAnimation:Z

    return-void
.end method

.method public static setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z

    move-result p0

    return p0
.end method

.method public static setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z
    .locals 4

    .line 45
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result v0

    .line 46
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result v1

    .line 47
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getRight()I

    move-result v2

    .line 48
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getBottom()I

    move-result v3

    .line 49
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->superSetFrame(IIII)Z

    move-result p1

    .line 50
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getSkipNextAutoLayoutAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 51
    invoke-interface {p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    return p1

    .line 54
    :cond_0
    sget-boolean p2, Lcom/miui/home/launcher/AutoLayoutAnimation;->sDisableAutoLayoutAnimation:Z

    if-nez p2, :cond_4

    .line 55
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->isEnableAutoLayoutAnimation()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p2

    if-ne v0, p2, :cond_1

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p2

    if-eq v1, p2, :cond_4

    :cond_1
    sub-int/2addr v3, v1

    .line 56
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getBottom()I

    move-result p2

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    if-ne v3, p2, :cond_4

    sub-int/2addr v2, v0

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getRight()I

    move-result p2

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    if-ne v2, p2, :cond_4

    .line 57
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    if-nez p5, :cond_2

    .line 59
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationX()F

    move-result p3

    add-float/2addr p2, p3

    invoke-interface {p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationX(F)V

    .line 60
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-interface {p0, p2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setTranslationY(F)V

    .line 61
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0x15e

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lcom/miui/home/launcher/AutoLayoutAnimation;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p5, p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;->animate(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;II)V

    .line 67
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 68
    invoke-interface {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object p2

    check-cast p0, Landroid/view/View;

    invoke-interface {p2, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;->updateAnimateTarget(Landroid/view/View;)V

    :cond_4
    return p1
.end method
