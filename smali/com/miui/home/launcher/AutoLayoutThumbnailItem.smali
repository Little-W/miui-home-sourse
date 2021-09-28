.class public Lcom/miui/home/launcher/AutoLayoutThumbnailItem;
.super Lcom/miui/home/launcher/OnLongClickWrapper;
.source "AutoLayoutThumbnailItem.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field public contentTitle:Landroid/widget/TextView;

.field public icon:Lcom/miui/home/launcher/ThumbnailIcon;

.field public iconBackground:Landroid/widget/ImageView;

.field public iconForeground:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mSkipNextAutoLayoutAnimation:Z

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/OnLongClickWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doSetFrame(IIII)Z
    .locals 0

    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/miui/home/launcher/OnLongClickWrapper;->onFinishInflate()V

    const v0, 0x7f0a010e

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->icon:Lcom/miui/home/launcher/ThumbnailIcon;

    const v0, 0x7f0a0069

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->iconBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a00f3

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->iconForeground:Landroid/widget/ImageView;

    const v0, 0x7f0a0221

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->invalidate()V

    :cond_1
    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTitleColorMode(ZLandroid/widget/TextView;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v0, 0x7f1102f4

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    .line 100
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 99
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v0, 0x7f1102f3

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    .line 105
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 104
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method
