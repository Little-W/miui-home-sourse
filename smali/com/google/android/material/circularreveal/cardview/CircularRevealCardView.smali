.class public Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.super Lcom/google/android/material/card/MaterialCardView;

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public actualIsOpaque()Z
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public buildCircularRevealCache()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result p0

    return p0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p0

    return-object p0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
