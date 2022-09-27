.class public abstract Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.super Ljava/lang/Object;
.source "TransitionEffect.java"


# instance fields
.field public mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    return-void
.end method


# virtual methods
.method public abstract getOverShotTension()F
.end method

.method public abstract getScreenSnapDuration()I
.end method

.method public abstract resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
.end method

.method protected resetTransformationView(Landroid/view/View;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected resetView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public abstract updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
.end method
