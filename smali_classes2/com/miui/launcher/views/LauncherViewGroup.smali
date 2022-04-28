.class public Lcom/miui/launcher/views/LauncherViewGroup;
.super Landroid/view/ViewGroup;
.source "LauncherViewGroup.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->ensureChildrenVisibility()V

    .line 85
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->ensureChildrenVisibility()V

    .line 79
    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V

    return-void
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method protected ensureChildrenVisibility()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .line 15
    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 5

    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->correctFrame(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/launcher/views/LauncherViewGroup;->onSetFrame(IIII)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->overrideSetFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->doSetFrame(IIII)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setFrame(IIII)Z

    move-result p1

    return p1
.end method
