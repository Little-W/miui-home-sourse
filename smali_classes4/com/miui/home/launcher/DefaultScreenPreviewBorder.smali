.class public Lcom/miui/home/launcher/DefaultScreenPreviewBorder;
.super Lcom/miui/home/launcher/ThumbnailContainerBorder;
.source "DefaultScreenPreviewBorder.java"


# instance fields
.field private mHomeImageView:Landroid/widget/ImageView;

.field private mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

.field private final mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->onFinishInflate()V

    const v0, 0x7f0a01a1

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->setmHomeIconLayoutBackgroundDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->updateColor()V

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->updateColor()V

    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mSelectAnimController:Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method protected updateColor()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewBorder;->mHomeImageViewColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
