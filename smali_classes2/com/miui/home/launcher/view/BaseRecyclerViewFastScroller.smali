.class public abstract Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
.super Landroid/view/View;
.source "BaseRecyclerViewFastScroller.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mDragEndRunnable:Ljava/lang/Runnable;

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPopupSectionName:Ljava/lang/String;

.field private mPopupView:Landroid/widget/TextView;

.field private mPopupVisible:Z

.field private mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

.field private mStartDraggingTime:J

.field private mThumbOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)Lcom/miui/home/launcher/BaseRecyclerView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    return-object p0
.end method

.method private dragEnd()V
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 229
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->animatePopupVisibility(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$xH62CHtR01IgpsErjMjQMGnAsZE(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->dragEnd()V

    return-void
.end method


# virtual methods
.method protected animatePopupVisibility(Z)V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupVisible:Z

    if-eq v0, p1, :cond_2

    .line 79
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupVisible:Z

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x96

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    return-object p0
.end method

.method public abstract getThumbHeight()I
.end method

.method public getThumbOffsetY()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 205
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_5

    .line 206
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mStartDraggingTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "click"

    .line 213
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->dragEnd()V

    const-string p1, "slide"

    .line 216
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_4

    .line 194
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 196
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isNearScrollBar(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 197
    iput-boolean p2, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    .line 198
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbDetached(Z)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mStartDraggingTime:J

    .line 200
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    .line 220
    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingThumb()Z
    .locals 0

    .line 236
    iget-boolean p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    return p0
.end method

.method public isHitInParent(Landroid/view/ViewGroup;FFLandroid/graphics/Point;)Z
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 162
    sget-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 163
    sget-object p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result p0

    add-int/2addr v3, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_1

    .line 165
    sget-object p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4, p0, p1}, Landroid/graphics/Point;->set(II)V

    .line 167
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected isNearScrollBar(II)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result p0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThumbDetached()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return p0
.end method

.method public onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void
.end method

.method public setDefaultFastScrollerPopupStyle()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801ef

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setLetterFastScrollerPopupStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f40902e    # 0.7522f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07016e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070166

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 108
    iget-object v1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getFastScrollerPopupDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070163

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p2, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected setPopupBackground(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseRecyclerView;->getLetterScrollerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setLetterFastScrollerPopupStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setDefaultFastScrollerPopupStyle()V

    :goto_0
    return-void
.end method

.method protected setPopupSectionName(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performFastScrollSection(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/BaseRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    .line 60
    new-instance p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 70
    iput-object p2, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    return-void
.end method

.method public setThumbDetached(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 1

    .line 134
    iget v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    return-void

    .line 137
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->invalidate()V

    return-void
.end method

.method protected abstract updateFastScrollSectionNameAndThumbOffset(I)V
.end method

.method protected updatePopupY(I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
