.class public Lcom/miui/home/launcher/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"


# direct methods
.method public static getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 4

    .line 18
    iget v0, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    iget v1, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    iget-boolean v2, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->isMiuiWidget:Z

    .line 19
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidgetSizes(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 26
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, p0

    .line 27
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, p0

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;-><init>(FF)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 32
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 31
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMinMaxSizes(Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget v2, v0, Landroid/graphics/Rect;->left:I

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    iget v2, v0, Landroid/graphics/Rect;->top:I

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    iget v2, v0, Landroid/graphics/Rect;->right:I

    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const-string v2, "appWidgetMaxHeight"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object p1, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    const-string v0, "widgetExtraData"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "appWidgetSizes"

    .line 42
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    invoke-static {v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->miuiLargeScreenDevice(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static synthetic lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getDefaultOptionsForWidget$0(FFLandroid/util/SizeF;)Landroid/util/SizeF;
    .locals 2

    .line 30
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 31
    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method
