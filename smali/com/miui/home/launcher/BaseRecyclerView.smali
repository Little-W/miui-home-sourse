.class public abstract Lcom/miui/home/launcher/BaseRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseRecyclerView.java"


# instance fields
.field protected mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

.field private mScrollerEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object v0, Lcom/miui/home/R$styleable;->BaseRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollerEnable:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bindFastScrollbar(Z)V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollerEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00c2

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00c1

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    const v3, 0x7f0a00c0

    .line 82
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 83
    invoke-virtual {v2, p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 84
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 87
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 88
    iput-object v2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 91
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setVisibility(I)V

    .line 92
    iput-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    :goto_0
    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->requestLayout()V

    .line 97
    :cond_2
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .line 129
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

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    return-object v0
.end method

.method public getScrollbarTrackHeight()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result v0

    return v0
.end method

.method public abstract getSectionFromFraction(F)Ljava/lang/String;
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->bindFastScrollbar(Z)V

    return-void
.end method

.method public onColorModeChange()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->onColorModeChange()V

    :cond_0
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 103
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 104
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public abstract scrollToPositionAtSection(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 169
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

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 154
    iget-object p2, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method
