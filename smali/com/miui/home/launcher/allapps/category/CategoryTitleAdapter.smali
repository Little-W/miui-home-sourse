.class public Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
.source "CategoryTitleAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPagerAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

.field private mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    .line 29
    invoke-virtual {p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getAdapter()Lcom/miui/home/library/view/viewpager/PagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mPagerAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mPagerAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz p1, :cond_0

    .line 33
    new-instance p2, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$1;-><init>(Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "pager adapter is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$getTitleView$0(Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;ILandroid/view/View;)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p2, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private setupIndicator(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;)V
    .locals 4

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getCategoryIndicatorColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    return-void
.end method

.method private setupTitleView(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V
    .locals 3

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getCategoryTitleNormalColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getCategoryIndicatorColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mPagerAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .locals 3

    .line 65
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 67
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setRoundRadius(F)V

    .line 68
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 70
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setXOffset(F)V

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070158

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701b2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setYOffset(F)V

    .line 72
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->setupIndicator(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;)V

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 3

    .line 48
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0xf

    .line 50
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setMaxEms(I)V

    .line 51
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->setupTitleView(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070156

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07005a

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setTextSize(F)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->mPagerAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {p1, p2}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance p1, Lcom/miui/home/launcher/allapps/category/-$$Lambda$CategoryTitleAdapter$yUeR2-7NTLAW9Zu9wki_VBj5z4s;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$CategoryTitleAdapter$yUeR2-7NTLAW9Zu9wki_VBj5z4s;-><init>(Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;I)V

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
