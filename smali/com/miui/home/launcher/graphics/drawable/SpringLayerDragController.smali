.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;
.super Ljava/lang/Object;
.source "SpringLayerDragController.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;

.field private final mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mAnimations:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;

    .line 28
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;FF)V
    .locals 0

    .line 57
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationX(F)V

    .line 58
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationY(F)V

    return-void
.end method

.method public onStart(FFFFLcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;

    invoke-direct {v0, p5}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;-><init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V

    .line 35
    iget-object p5, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mDrawable:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p5}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object p5

    .line 36
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 37
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getAnimationIndex()I

    move-result v1

    if-lez v1, :cond_0

    const v3, 0x3f666666    # 0.9f

    const v4, -0x425c28f6    # -0.08f

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    .line 41
    new-instance v7, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    move-object v1, v7

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;FFLcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;)V

    .line 42
    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->start(FFFF)V

    .line 43
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdate()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;

    .line 50
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->updateFinalPosition()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;->invalidateLayerAdaptiveIconDrawable()V

    return-void
.end method
