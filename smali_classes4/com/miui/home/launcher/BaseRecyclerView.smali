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
    .locals 7

    .line 87
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollerEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0155

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0154

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    const v3, 0x7f0a0153

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 94
    invoke-virtual {v2, p0, v1}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 95
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v3

    .line 98
    iget-boolean v4, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mLetterScrollerEnable:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setVisibility(I)V

    .line 100
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 101
    iput-object v2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 102
    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setScrollerStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setLetterFastScrollerPopupStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setVisibility(I)V

    .line 106
    invoke-virtual {v0, v6}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 107
    iput-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setDefaultFastScrollerPopupStyle()V

    :goto_0
    if-eqz p1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->requestLayout()V

    .line 113
    :cond_2
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected abstract getAvailableScrollHeight()I
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getLetterScrollerEnable()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mLetterScrollerEnable:Z

    return p0
.end method

.method public getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    return-object p0
.end method

.method public getScrollbarTrackHeight()I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result p0

    return p0
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
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    :cond_0
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0154

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070166

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070165

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

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

    new-array v0, v0, [I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 186
    iget-object p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p0

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 0

    if-gtz p2, :cond_0

    .line 163
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method
