.class public Lcom/miui/home/launcher/graphics/drawable/MamlCompat;
.super Ljava/lang/Object;
.source "MamlCompat.java"


# direct methods
.method public static synthetic lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onPause()V

    return-void
.end method

.method public static synthetic lambda$WgOldcLX0rHeRrMUHpJUjXbuD_k(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onPresent()V

    return-void
.end method

.method public static synthetic lambda$slpPOlm3h9Nboz5HoFCy8nGeEDc(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onResume()V

    return-void
.end method

.method public static onPause(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$Ej2igOHdTCxqUj6Tcfunks0QDSE;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$Ej2igOHdTCxqUj6Tcfunks0QDSE;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->processLayer(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static onPresent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$WgOldcLX0rHeRrMUHpJUjXbuD_k;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$WgOldcLX0rHeRrMUHpJUjXbuD_k;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->processLayer(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "present"

    .line 35
    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onResume(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 17
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$slpPOlm3h9Nboz5HoFCy8nGeEDc;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$MamlCompat$slpPOlm3h9Nboz5HoFCy8nGeEDc;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->processLayer(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static processLayer(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/util/function/Consumer;)V
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

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 47
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
