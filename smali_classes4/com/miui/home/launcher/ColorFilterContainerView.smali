.class public Lcom/miui/home/launcher/ColorFilterContainerView;
.super Landroid/widget/RelativeLayout;
.source "ColorFilterContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;
    }
.end annotation


# instance fields
.field private isColorFilterAnimOpen:Z

.field private isColorFilterEnabled:Z

.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

.field private mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field private mColorFilterGroup:Landroid/widget/RadioGroup;

.field private mColorFilterSearchBarIcon:Landroid/view/View;

.field private mColorMap:Landroid/util/SparseIntArray;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRevealAnimRadius:I

.field private mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

.field private mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field private mSelectedColorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0050

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/anim/RevealDrawable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->updateColorFilterItemDrawable(Landroid/widget/RadioButton;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->animateRecycleView()V

    return-void
.end method

.method private animateRecycleView()V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAnimation()V

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scheduleLayoutAnimation()V

    :cond_0
    return-void
.end method

.method private changeToColorFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setVisibility(I)V

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->setVisibility(I)V

    return-void
.end method

.method private changeToSearchBar()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->setAlpha(F)V

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->setVisibility(I)V

    const/4 v0, 0x4

    .line 339
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$selectColor$1(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->filterAppsWithColor(I)V

    return-void
.end method

.method private updateColorFilterItemDrawable(Landroid/widget/RadioButton;II)V
    .locals 5

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "button width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , button height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p3, :cond_0

    move v2, p3

    move v0, v1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    .line 295
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v2

    .line 299
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const v4, 0x7f060020

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-nez p2, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/graphics/IconPalette;->getColorItemAllDrawableId()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 302
    invoke-virtual {p0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0801d8

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 305
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 306
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int p0, v2, v0

    .line 307
    invoke-virtual {p2, v1, v0, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object p0, p2

    :goto_1
    const/4 p2, 0x0

    .line 309
    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cancelRevealAnim()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->cancel()V

    :cond_0
    return-void
.end method

.method public changeSearchBarState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeToColorFilter()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeToSearchBar()V

    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getSelectedColorType()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    return p0
.end method

.method public hideColorFilter()V
    .locals 1

    const/4 v0, 0x4

    .line 313
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setVisibility(I)V

    return-void
.end method

.method public init(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    return-void
.end method

.method public isColorFilterEnabled()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    return p0
.end method

.method public isFilteringAppsWithColor()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getSelectedColorType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setupColorFilterView$0$ColorFilterContainerView(Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View;)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    .line 172
    iget v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0, p2, v2, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->playRevealAnim(Landroid/view/View;I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0, v2, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->playRevealAnim(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 89
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    .line 90
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setUp()V

    return-void
.end method

.method public playRevealAnim(Landroid/view/View;I)V
    .locals 12

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsView()Landroid/view/View;

    move-result-object v2

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->cancelRevealAnim()V

    .line 231
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->animateRecycleView()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const v1, 0x7f060020

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    div-int/lit8 v1, v5, 0x2

    int-to-float v3, v1

    add-float v7, v0, v3

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 238
    new-instance v3, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;-><init>(FFIII)V

    iput-object v3, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    .line 242
    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 243
    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    const/16 v3, 0x1f4

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setDuring(I)V

    const/4 p2, 0x1

    .line 245
    invoke-static {p1, p0, v0, p2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 p1, 0x0

    .line 248
    aget p1, v0, p1

    add-int v3, p1, v1

    .line 249
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getTop()I

    move-result p2

    add-int/2addr p1, p2

    add-int v4, p1, v1

    .line 252
    new-instance p1, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;

    iget v6, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;-><init>(Landroid/view/View;IIII)V

    .line 255
    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    new-instance v0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setRevealListener(Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 191
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    return-void
.end method

.method public selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    .line 196
    iput p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isFilteringAppsWithColor()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->showScrollbar(Z)V

    .line 202
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    .line 207
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setColorSelecting(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 209
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$Hyz-QyEdr0Gl3TDDGpTymoZjlhg;-><init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->filterAppsWithColor(I)V

    .line 213
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 214
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    return-void

    :cond_4
    if-nez p4, :cond_5

    const/4 p1, 0x0

    .line 218
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setColorSelecting(Z)V

    .line 219
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, p2}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setColorFilterAnimOpen(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    return-void
.end method

.method public setColorFilterEnabled(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    return-void
.end method

.method public setUp()V
    .locals 3

    .line 275
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const v2, 0x7f060020

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f060022

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f060023

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f06001f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f06001e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f060021

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    const v1, 0x7f06001d

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public setUpColorFilterContainerView()V
    .locals 2

    const v0, 0x7f0a00d9

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00da

    .line 98
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterSearchBarIcon:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterSearchBarIcon:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/ColorFilterContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ColorFilterContainerView$1;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0a02e9

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color filter size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 152
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 153
    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 155
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 156
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 159
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v3, 0x0

    .line 161
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    new-instance v3, Lcom/miui/home/launcher/ColorFilterContainerView$2;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/miui/home/launcher/ColorFilterContainerView$2;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;Ljava/lang/Integer;I)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 170
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;

    invoke-direct {v3, p0, v2, p1}, Lcom/miui/home/launcher/-$$Lambda$ColorFilterContainerView$seJDS_e2aiUY_M1Cw4wOD32kJYk;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "button count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 134
    move-object p1, p0

    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    .line 138
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method
