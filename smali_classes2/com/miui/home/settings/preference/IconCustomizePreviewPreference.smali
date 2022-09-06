.class public final Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;
.super Landroidx/preference/Preference;
.source "IconCustomizePreviewPreference.kt"


# instance fields
.field private mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mInNoWordMode:Z

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d008b

    .line 47
    invoke-virtual {p0, p2}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->setLayoutResource(I)V

    .line 48
    new-instance p2, Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    invoke-direct {p2, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    .line 49
    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method public static final synthetic access$getPreviewApps(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getPreviewApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWallpaperTopArea(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getWallpaperTopArea()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLoadPreviewApps(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Ljava/util/List;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onLoadPreviewApps(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onLoadPreviewBackground(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getPreviewApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/common/LauncherActivityInfoComparator;-><init>(Landroid/content/Context;)V

    .line 88
    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 92
    new-instance v4, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activityInfo"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 93
    iget-object v5, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/AppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final getWallpaperTopArea()Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 106
    :try_start_0
    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    const-string v2, "WallpaperManagerCompat.getInstance(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 109
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 116
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f060128

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private final onLoadPreviewApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final onLoadPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public final initPreviewApp()V
    .locals 2

    .line 78
    new-instance v0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 79
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 80
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    check-cast v1, Lio/reactivex2/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public final initPreviewBackground()V
    .locals 2

    .line 71
    new-instance v0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$1;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 72
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 73
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;-><init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V

    check-cast v1, Lio/reactivex2/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    .line 56
    iget-object v1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f0a0281

    .line 57
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_8

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    .line 60
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    .line 60
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    :cond_4
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mInNoWordMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setInNoWordMode(Z)V

    .line 66
    :cond_5
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    :cond_6
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mPreviewContainer:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void

    .line 57
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_5

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mWallpaperDisposable:Lio/reactivex2/disposables/Disposable;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_5
    return-void
.end method

.method public final onIconScaleChange(F)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mAdapter:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->setIconScale(F)V

    return-void
.end method

.method public final setInNoWordMode(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->mInNoWordMode:Z

    return-void
.end method
