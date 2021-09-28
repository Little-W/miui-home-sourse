.class public Lcom/miui/home/launcher/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"


# direct methods
.method public static getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 4

    .line 17
    iget v0, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    iget v1, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 18
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidgetSizes(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 20
    iget-object p1, p1, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 23
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, p0

    .line 24
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, p0

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;

    invoke-direct {v0, v2, p1}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;-><init>(FF)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/widget/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/miui/home/launcher/widget/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 29
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-static {p0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMinMaxSizes(Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appWidgetMinWidth"

    .line 34
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appWidgetMinHeight"

    .line 35
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appWidgetMaxWidth"

    .line 36
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appWidgetMaxHeight"

    .line 37
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetSizes"

    .line 38
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static synthetic lambda$getDefaultOptionsForWidget$0(FFLandroid/util/SizeF;)Landroid/util/SizeF;
    .locals 2

    .line 27
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 28
    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method
