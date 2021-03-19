.class public Lcom/miui/launcher/views/LauncherFrameLayout;
.super Landroid/widget/FrameLayout;
.source "LauncherFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/views/LauncherFrameLayout$_lancet;
    }
.end annotation


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

.method static synthetic access$000(Lcom/miui/launcher/views/LauncherFrameLayout;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/launcher/views/LauncherFrameLayout;->onLayout$___twin___(ZIIII)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/launcher/views/LauncherFrameLayout;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->drawChild$___twin___(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method private drawChild$___twin___(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method private onLayout$___twin___(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method


# virtual methods
.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout$_lancet;->com_miui_home_launcher_aop_ViewTraversalTrace_launcherFrameLayoutLayoutDrawChild(Lcom/miui/launcher/views/LauncherFrameLayout;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public isInScrollingContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/launcher/views/LauncherFrameLayout$_lancet;->com_miui_home_launcher_aop_ViewTraversalTrace_launcherFrameLayoutOnLayout(Lcom/miui/launcher/views/LauncherFrameLayout;ZIIII)V

    return-void
.end method

.method protected onSetFrame(IIII)V
    .locals 0

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    move-result p1

    return p1

    .line 46
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result p1

    return p1
.end method
