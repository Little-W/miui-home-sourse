.class public Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;
.super Landroid/app/Fragment;
.source "DrawerBackgroundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;
.implements Lcom/miui/home/launcher/common/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;",
        "Lcom/miui/home/launcher/common/OnItemClickListener<",
        "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlphaSeekBar:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

.field private mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

.field private mPreview:Landroid/widget/ImageView;

.field private mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getScaledWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/high16 v0, 0x41400000    # 12.0f

    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    mul-int/lit8 v1, p2, 0x9

    .line 120
    div-int/lit8 v1, v1, 0x10

    int-to-float v3, p2

    .line 122
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 124
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    invoke-virtual {v7, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 126
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 129
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    mul-int/lit8 v1, p2, 0x9

    .line 135
    div-int/lit8 v1, v1, 0x10

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const v1, 0x7f0600d3

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 138
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p1
.end method

.method public static synthetic lambda$dLE4Tp3O2qfYwnwot-UNG-9Ghuk(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$null$351(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getScaledWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onViewCreated$352(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;)V
    .locals 2

    .line 73
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$zcI6CM-PV184Yu0zo3l38QoOE3E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$zcI6CM-PV184Yu0zo3l38QoOE3E;-><init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 75
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$dLE4Tp3O2qfYwnwot-UNG-9Ghuk;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$dLE4Tp3O2qfYwnwot-UNG-9Ghuk;-><init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;)V

    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private updatePreview(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->getSelectedColor()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mAlphaSeekBar:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->getCurrentSetAlphaValue()I

    move-result v1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackgroundColor(Landroid/content/Context;I)I

    move-result v2

    .line 94
    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->getSelectedColor()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mAlphaSeekBar:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->getCurrentSetAlphaValue()I

    move-result v0

    .line 104
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    .line 105
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorMode(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setBackgroundAlpha(I)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1000ea

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0047

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onDrawerBackgroundAlphaChange(I)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 36
    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->onItemClick(Landroid/view/View;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 150
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    const v0, 0x7f0a0146

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a00a0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mAlphaSeekBar:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mAlphaSeekBar:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->setDrawerBackgroundAlphaChangeListener(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;)V

    const v0, 0x7f0a0054

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->setOnItemClickListener(Lcom/miui/home/launcher/common/OnItemClickListener;)V

    const p2, 0x7f0a0081

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 69
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mColorAdapter:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;

    .line 71
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 70
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->mPreview:Landroid/widget/ImageView;

    new-instance p2, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$XAwKNDwC3-oAB4GmHSceMhmr-O4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundFragment$XAwKNDwC3-oAB4GmHSceMhmr-O4;-><init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
