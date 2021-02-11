.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatNone;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.source "UserPresentAnimationCompatNone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;-><init>()V

    return-void
.end method


# virtual methods
.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
