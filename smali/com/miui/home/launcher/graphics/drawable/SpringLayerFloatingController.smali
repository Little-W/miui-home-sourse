.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;
.super Ljava/lang/Object;
.source "SpringLayerFloatingController.java"


# instance fields
.field private final mAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            "Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 77
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 71
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentOffsetX(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->getCurrentOffsetX()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentOffsetY(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->getCurrentOffsetY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRunning()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 62
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onStart(FFFF)V
    .locals 10

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 33
    invoke-virtual {v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getAnimationIndex()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_1

    const v2, 0x3d23d70a    # 0.04f

    int-to-float v1, v1

    mul-float v4, v1, v2

    .line 36
    new-instance v9, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    const v3, 0x3f7d70a4    # 0.99f

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;FFLcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;)V

    .line 37
    invoke-virtual {v9, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->start(FFFF)V

    .line 38
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onUpdate(FF)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 45
    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->updateProviderOffset(FF)V

    .line 46
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->updateFinalPosition()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 83
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->removeAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method
