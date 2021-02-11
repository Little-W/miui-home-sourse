.class public Lcom/miui/home/settings/IconCustomizeFragment;
.super Landroid/app/Fragment;
.source "IconCustomizeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;


# instance fields
.field private mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

.field private mApply:Landroid/view/View;

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mCustomizeLayout:Landroid/view/View;

.field private mIconSizeSeekBar:Lcom/miui/home/settings/IconSizeSeekBar;

.field private mPreviewContainer:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getPreviewApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;

    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 159
    new-instance v4, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 160
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 161
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getWallpaperTopArea()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 169
    :try_start_0
    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 172
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070083

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 175
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 176
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f0600d1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method

.method public static synthetic lambda$6ls0JJsm2Fc6ua8gFds70wFQVBY(Lcom/miui/home/settings/IconCustomizeFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$E4wwQHXOj-OH4pmtkWsIlBeZ5vI(Lcom/miui/home/settings/IconCustomizeFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getWallpaperTopArea()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Omwow6CivFbrB4dCNGtDLtZmLaY(Lcom/miui/home/settings/IconCustomizeFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->onLoadPreviewApps(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$WFxoG2cjrjfFHjfhZs1qgc0CQPY(Lcom/miui/home/settings/IconCustomizeFragment;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getPreviewApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private onLoadPreviewApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setList(Ljava/util/List;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCustomizeLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mApply:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSizeSeekBar:Lcom/miui/home/settings/IconSizeSeekBar;

    invoke-virtual {p1}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result p1

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 141
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f10014c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0041

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 115
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public onIconSizeChange(F)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setIconScale(F)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 192
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const p2, 0x7f0a00e0

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCustomizeLayout:Landroid/view/View;

    const p2, 0x7f0a0086

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mPreviewContainer:Landroid/view/View;

    const p2, 0x7f0a00e1

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0a0144

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/mysupport/v7/widget/RecyclerView;

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setItemAnimator(Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator;)V

    .line 80
    new-instance v0, Landroid/mysupport/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/mysupport/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setLayoutManager(Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance v0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    .line 82
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a00e7

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/settings/IconSizeSeekBar;

    iput-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSizeSeekBar:Lcom/miui/home/settings/IconSizeSeekBar;

    .line 85
    iget-object p2, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mIconSizeSeekBar:Lcom/miui/home/settings/IconSizeSeekBar;

    invoke-virtual {p2, p0}, Lcom/miui/home/settings/IconSizeSeekBar;->setIconSizeChangeListener(Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;)V

    const p2, 0x7f0a0052

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mApply:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mApply:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mCustomizeLayout:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mApply:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$WFxoG2cjrjfFHjfhZs1qgc0CQPY;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$WFxoG2cjrjfFHjfhZs1qgc0CQPY;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 95
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 96
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$Omwow6CivFbrB4dCNGtDLtZmLaY;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$Omwow6CivFbrB4dCNGtDLtZmLaY;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    .line 97
    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    .line 99
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$E4wwQHXOj-OH4pmtkWsIlBeZ5vI;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$E4wwQHXOj-OH4pmtkWsIlBeZ5vI;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    invoke-static {p1}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 100
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 101
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$6ls0JJsm2Fc6ua8gFds70wFQVBY;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$IconCustomizeFragment$6ls0JJsm2Fc6ua8gFds70wFQVBY;-><init>(Lcom/miui/home/settings/IconCustomizeFragment;)V

    .line 102
    invoke-virtual {p1, p2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizeFragment;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method
