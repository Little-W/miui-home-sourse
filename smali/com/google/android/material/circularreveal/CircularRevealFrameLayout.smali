.class public Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public actualIsOpaque()Z
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
