.class public Lcom/miui/home/launcher/SearchBarLeftIconLayout;
.super Landroid/widget/FrameLayout;
.source "SearchBarLeftIconLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSearchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01b0

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800b8

    goto :goto_0

    :cond_0
    const v0, 0x7f0800b7

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarLeftIconLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
