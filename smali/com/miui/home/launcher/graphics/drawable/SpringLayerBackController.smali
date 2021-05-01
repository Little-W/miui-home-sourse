.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;
.super Ljava/lang/Object;
.source "SpringLayerBackController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$updateBackAnim$154(Ljava/lang/String;FLcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V
    .locals 0

    .line 17
    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->updateBackAnim(Ljava/lang/String;F)V

    return-void
.end method

.method private processBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 31
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$QDjazoqzBLdjBoDH0npBr2kltp4;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$QDjazoqzBLdjBoDH0npBr2kltp4;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->processBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$sQG-z-2o3yKqdcuBJerEF_5iYrE;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$sQG-z-2o3yKqdcuBJerEF_5iYrE;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->processBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V
    .locals 1

    .line 17
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$T3eL6CUmW6Q42qGrHWBCd3jwapE;

    invoke-direct {v0, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$T3eL6CUmW6Q42qGrHWBCd3jwapE;-><init>(Ljava/lang/String;F)V

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->processBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    return-void
.end method
