.class public Lcom/miui/home/launcher/anim/AlphaUpdateListener;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "AlphaUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/anim/AlphaUpdateListener$IgnoreVisibleChange;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    return-void
.end method

.method public static updateVisibility(Landroid/view/View;)V
    .locals 3

    .line 46
    instance-of v0, p0, Lcom/miui/home/launcher/anim/AlphaUpdateListener$IgnoreVisibleChange;

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 50
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method
