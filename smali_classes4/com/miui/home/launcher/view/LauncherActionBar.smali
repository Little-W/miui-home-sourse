.class public Lcom/miui/home/launcher/view/LauncherActionBar;
.super Landroid/widget/FrameLayout;
.source "LauncherActionBar.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mBackImageView:Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$LauncherActionBar(Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onBackPressed()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0033

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LauncherActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mBackImageView:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mBackImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/view/-$$Lambda$LauncherActionBar$dLO8kcmgJ5lOkBQeD39OGf0zfs0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/-$$Lambda$LauncherActionBar$dLO8kcmgJ5lOkBQeD39OGf0zfs0;-><init>(Lcom/miui/home/launcher/view/LauncherActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0043

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LauncherActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mTitleTextView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LauncherActionBar;->onWallpaperColorChanged()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LauncherActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mBackImageView:Landroid/widget/ImageView;

    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LauncherActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mBackImageView:Landroid/widget/ImageView;

    const v0, 0x7f08019e

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/view/LauncherActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
