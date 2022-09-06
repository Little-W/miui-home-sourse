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

.field private mIsEnableAutoLayoutAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/OnLongClickWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doSetFrame(IIII)Z
    .locals 0

    .line 67
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

    .line 62
    iget-boolean v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/miui/home/launcher/OnLongClickWrapper;->onFinishInflate()V

    const v0, 0x7f0a019e

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->icon:Lcom/miui/home/launcher/ThumbnailIcon;

    const v0, 0x7f0a0083

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->iconBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a016e

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->iconForeground:Landroid/widget/ImageView;

    const v0, 0x7f0a0389

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    const v0, 0x7f0a00de

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->setTitleColorMode(ZLandroid/widget/TextView;)V

    .line 94
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

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTitleColorMode(ZLandroid/widget/TextView;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v1, 0x7f1205e0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 102
    invoke-virtual {p2}, Landroid/widget/TextView;->getShadowDy()F

    move-result p2

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 101
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->mContext:Landroid/content/Context;

    const v0, 0x7f1205df

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->contentTitle:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/AutoLayoutThumbnailItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 106
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method
