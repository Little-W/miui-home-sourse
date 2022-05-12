.class public Lcom/miui/home/launcher/ThumbnailContainerBorder;
.super Lcom/miui/home/launcher/AutoLayoutThumbnailItem;
.source "ThumbnailContainerBorder.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/anim/IBackgroundController;


# instance fields
.field private final mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

.field private mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->drawBackground(Landroid/graphics/Canvas;)V

    .line 36
    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBackgroundAnimController()Lcom/miui/home/launcher/anim/BackgroundAnimController;
    .locals 4

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;-><init>(II)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->setBgRadius(F)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailContainer()Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->onFinishInflate()V

    const v0, 0x7f0a029a

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mThumbnailContainer:Lcom/miui/home/launcher/ThumbnailContainer;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->updateColor()V

    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder;->mBackgroundAnimController:Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method
