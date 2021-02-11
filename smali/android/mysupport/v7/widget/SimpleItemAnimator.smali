.class public abstract Landroid/mysupport/v7/widget/SimpleItemAnimator;
.super Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Landroid/mysupport/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    if-eqz p2, :cond_1

    .line 115
    iget v0, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    iget v4, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateMove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateAdd(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateChange(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    .line 152
    iget v3, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 153
    iget v4, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 155
    invoke-virtual {p2}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget p4, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 157
    iget p3, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 159
    :cond_0
    iget p3, p4, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 160
    iget p4, p4, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 162
    invoke-virtual/range {v0 .. v6}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateChange(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public animateDisappearance(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    .line 91
    iget v2, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 92
    iget v3, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 93
    iget-object p2, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_1
    move v5, p3

    .line 96
    invoke-virtual {p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 98
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 97
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateMove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 108
    :cond_3
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateRemove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateMove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    .line 134
    iget v0, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_1
    :goto_0
    iget v2, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->animateMove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract animateRemove(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroid/mysupport/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchAddFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onAddFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    .line 302
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onAddStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onChangeFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 317
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onChangeStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onMoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    .line 292
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onMoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onRemoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    .line 278
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroid/mysupport/v7/widget/SimpleItemAnimator;->onRemoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAddFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
