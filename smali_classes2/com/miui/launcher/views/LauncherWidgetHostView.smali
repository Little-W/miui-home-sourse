.class public Lcom/miui/launcher/views/LauncherWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherWidgetHostView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 38
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 11
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    .line 11
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 5

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->correctFrame(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 27
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->onSetFrame(IIII)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherWidgetHostView;->overrideSetFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherWidgetHostView;->doSetFrame(IIII)Z

    move-result p0

    return p0

    .line 31
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method
