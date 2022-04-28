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

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$BaseRecyclerViewFastScroller$xH62CHtR01IgpsErjMjQMGnAsZE;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)Lcom/miui/home/launcher/BaseRecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    return-object p0
.end method

.method private dragEnd()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 189
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
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupVisible:Z

    if-eq v0, p1, :cond_2

    .line 71
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupVisible:Z

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    return-object v0
.end method

.method public abstract getThumbHeight()I
.end method

.method public getThumbOffsetY()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mStartDraggingTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "click"

    .line 173
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->dragEnd()V

    const-string p1, "slide"

    .line 176
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mDragEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isNearScrollBar(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    .line 158
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbDetached(Z)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mStartDraggingTime:J

    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->updateFastScrollSectionNameAndThumbOffset(I)V

    .line 180
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDraggingThumb()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsDragging:Z

    return v0
.end method

.method public isHitInParent(Landroid/view/ViewGroup;FFLandroid/graphics/Point;)Z
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 122
    sget-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 123
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

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_1

    .line 125
    sget-object p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 127
    :cond_1
    sget-object p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->sTempRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected isNearScrollBar(II)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isThumbDetached()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return v0
.end method

.method public onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    return-void
.end method

.method public reattachThumbToScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void
.end method

.method protected setPopupSectionName(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupSectionName:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/BaseRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    .line 55
    new-instance p1, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;-><init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mRecyclerView:Lcom/miui/home/launcher/BaseRecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 62
    iput-object p2, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    return-void
.end method

.method public setThumbDetached(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 1

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    return-void

    .line 97
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mThumbOffsetY:I

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->invalidate()V

    return-void
.end method

.method protected abstract updateFastScrollSectionNameAndThumbOffset(I)V
.end method

.method protected updatePopupY(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 87
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

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
