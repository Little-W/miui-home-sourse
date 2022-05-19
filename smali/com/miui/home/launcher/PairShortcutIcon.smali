.class public Lcom/miui/home/launcher/PairShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "PairShortcutIcon.java"


# instance fields
.field private mIconBackground:Landroid/graphics/drawable/Drawable;

.field private mPairIconContainer:Landroid/widget/LinearLayout;

.field private mPairIconContainerHeight:I

.field private mPairIconContainerWidth:I

.field private mPairIconHeight:I

.field private mPairIconWidth:I

.field private mShortcutIcon1:Landroid/widget/ImageView;

.field private mShortcutIcon2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/PairShortcutIcon;
    .locals 1

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/PairShortcutIcon;

    return-object p0
.end method

.method public static synthetic lambda$P8bTAZBi8E-rXqFhGn3LNi_5wlc(Lcom/miui/home/launcher/PairShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->showFirstTipMenuItem()V

    return-void
.end method

.method private showFirstTipMenuItem()V
    .locals 3

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isFirstShowPairIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutTip(Landroid/view/View;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsFirstShowPairIcon()V

    :cond_0
    return-void
.end method

.method private updateIconSize()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherPairIconHeight()I

    move-result v1

    .line 54
    iget v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainerWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainerHeight:I

    if-eq v1, v2, :cond_1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainerWidth:I

    .line 58
    iput v1, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainerHeight:I

    .line 60
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherPairIconWidth()I

    move-result v0

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherPairIconHeight()I

    move-result v1

    .line 62
    iget v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconWidth:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconHeight:I

    if-eq v1, v2, :cond_3

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon1:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon1:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon2:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    iput v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconWidth:I

    .line 68
    iput v1, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconHeight:I

    :cond_3
    return-void
.end method

.method private updatePairIconBg()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgLight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgDark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/PairShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bindGroupShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/PairShortcutInfo;Landroid/view/ViewGroup;)V
    .locals 3

    .line 35
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/PairShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon2:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairIconAsync(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IconCache;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->updateIconSize()V

    .line 38
    invoke-virtual {p2, p0, p3}, Lcom/miui/home/launcher/PairShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getPairIconContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onAttachedToWindow()V

    .line 94
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$PairShortcutIcon$P8bTAZBi8E-rXqFhGn3LNi_5wlc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$PairShortcutIcon$P8bTAZBi8E-rXqFhGn3LNi_5wlc;-><init>(Lcom/miui/home/launcher/PairShortcutIcon;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/PairShortcutIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    const v0, 0x7f0a01c0

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/PairShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mPairIconContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01be

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/PairShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon1:Landroid/widget/ImageView;

    const v0, 0x7f0a01bf

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/PairShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/PairShortcutIcon;->mShortcutIcon2:Landroid/widget/ImageView;

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->updateIconSize()V

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->updatePairIconBg()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onWallpaperColorChanged()V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/PairShortcutIcon;->updatePairIconBg()V

    return-void
.end method
