.class public Lmiuix/viewpager/widget/ViewPager;
.super Landroidx/viewpager/widget/OriginalViewPager;
.source "ViewPager.java"


# instance fields
.field mDragEnabled:Z


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    return-void
.end method
