.class public Lcom/miui/launcher/views/LauncherFrameLayout;
.super Landroid/widget/FrameLayout;
.source "LauncherFrameLayout.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object p1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 53
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public isInScrollingContainer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
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

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->correctFrame(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 42
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/launcher/views/LauncherFrameLayout;->onSetFrame(IIII)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->overrideSetFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->doSetFrame(IIII)Z

    move-result p0

    return p0

    .line 46
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method
