.class public Lcom/miui/home/launcher/DefaultScreenPreviewBorder;
.super Lcom/miui/home/launcher/ThumbnailContainerBorder;
.source "DefaultScreenPreviewBorder.java"


# instance fields
.field private mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHomeImageView:Landroid/widget/ImageView;

.field private mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

.field private mThumbnailHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070087

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mThumbnailHeight:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 54
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getBorderLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v3, v1, v0

    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mThumbnailHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mThumbnailHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getBorderLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->onFinishInflate()V

    const v0, 0x7f0a00e2

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setIsCurrentScreen(ZZ)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->setIsCurrentScreen(ZZ)V

    return-void
.end method

.method protected updateBorderLineColor(F)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateBorderLineColor(F)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getBorderlineSelectedColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    return-void
.end method

.method protected updateColor()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateColor()V

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060090

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060091

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->setBorderlineSelectedColor(I)V

    return-void
.end method
