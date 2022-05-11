.class public abstract Lcom/miui/home/launcher/BaseRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseRecyclerView.java"


# instance fields
.field private mLetterScrollerEnable:Z

.field protected mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

.field private mScrollerEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lcom/miui/home/R$styleable;->BaseRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollerEnable:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bindFastScrollbar(Z)V
    .locals 5

    .line 83
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollerEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0109

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0108

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    const v3, 0x7f0a0107

    .line 89
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 90
    invoke-virtual {v2, p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 91
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 92
    iget-boolean v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mLetterScrollerEnable:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 95
    iput-object v2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 98
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 99
    iput-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    :goto_0
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->requestLayout()V

    .line 104
    :cond_2
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract getAvailableScrollHeight()I
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    return-object v0
.end method

.method public getScrollbarTrackHeight()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result v0

    return v0
.end method

.method public abstract getSectionFromFraction(F)Ljava/lang/String;
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->bindFastScrollbar(Z)V

    return-void
.end method

.method public onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    :cond_0
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0108

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070104

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070103

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public abstract scrollToPositionAtSection(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public setLetterScrollerEnable(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mLetterScrollerEnable:Z

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseRecyclerView;->bindFastScrollbar(Z)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    .line 174
    new-array v0, v0, [I

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 177
    iget-object p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    if-gtz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 0

    if-gtz p2, :cond_0

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 165
    iget-object p2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method
