.class public Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;
.super Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
.source "DefaultRecyclerViewFastScroller.java"


# instance fields
.field protected final mThumbHeight:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    const p3, 0x7f060032

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    const/16 p3, 0x3c

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    .line 59
    iget-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    const p3, 0x7f060030

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700cb

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackWidth:I

    const p2, 0x7f0700ca

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbHeight:I

    return-void
.end method


# virtual methods
.method public getThumbHeight()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbHeight:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 89
    iget v1, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    :goto_0
    const/4 v10, 0x0

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v11, v1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v2

    int-to-float v6, v2

    iget v2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackWidth:I

    int-to-float v7, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v11

    move v5, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget v2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbHeight:I

    int-to-float v6, v2

    iget v2, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mTrackWidth:I

    int-to-float v7, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected updateFastScrollSectionNameAndThumbOffset(I)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->mThumbHeight:I

    sub-int/2addr v0, v1

    .line 76
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v1

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->setPopupSectionName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->animatePopupVisibility(Z)V

    float-to-int p1, p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->updatePopupY(I)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/DefaultRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method
