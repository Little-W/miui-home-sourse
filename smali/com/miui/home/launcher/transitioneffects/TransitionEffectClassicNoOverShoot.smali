.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectClassicNoOverShoot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverShotTension()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenSnapDuration()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method

.method public updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;->resetView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
