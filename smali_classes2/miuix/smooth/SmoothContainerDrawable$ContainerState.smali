.class final Lmiuix/smooth/SmoothContainerDrawable$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothContainerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerState"
.end annotation


# instance fields
.field mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 379
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 380
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 384
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 385
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>(Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    .line 386
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 387
    iget-object p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    iput-object p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 388
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 389
    iget p1, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    iput p1, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 486
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 458
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 417
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 470
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 433
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 429
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 445
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 490
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final isStateful()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 441
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 395
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 401
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 407
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 425
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 449
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 482
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method
