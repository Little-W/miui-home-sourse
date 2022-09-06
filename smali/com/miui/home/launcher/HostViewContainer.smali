.class public interface abstract Lcom/miui/home/launcher/HostViewContainer;
.super Ljava/lang/Object;
.source "HostViewContainer.java"


# virtual methods
.method public abstract clear()V
.end method

.method public getCornerRadius()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHostView()Landroid/view/View;
.end method

.method public getHostViewBoundsOnScreen([ILandroid/graphics/Rect;)V
    .locals 2

    .line 24
    invoke-interface {p0}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 29
    aget v1, p1, v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    .line 30
    aget p1, p1, v1

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 31
    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 32
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public abstract getWidgetId()I
.end method
