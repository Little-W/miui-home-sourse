.class public Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;
.super Landroid/app/Fragment;
.source "AppCategorySelectSearchFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/SearchUiResultView;


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

.field private mBackButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field private mEditFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

.field private mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private back()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->back()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->save()V

    return-void
.end method

.method private refreshSpanCount()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->refreshSpanCount()V

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getAddApps()Ljava/util/List;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getRemoveApps()Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mEditFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->checkList(Ljava/util/List;Ljava/util/List;)V

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->back()V

    return-void
.end method

.method private updatePoolSize()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v1, 0x2

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v1, 0x3

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private updateUIColorMode()V
    .locals 3

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mBackButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroid/mysupport/v7/widget/RecyclerView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 59
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsStore;Z)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 60
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v4

    invoke-direct {p1, v0, v1, v3, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a004e

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mEditFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofEmpty()Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 67
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0043

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 152
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenOrientationChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-eqz p1, :cond_1

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updateUIColorMode()V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updatePoolSize()V

    .line 178
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->refreshSpanCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a01a3

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const v0, 0x7f0a0054

    .line 91
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/mysupport/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->createEdgeEffectFactory()Landroid/mysupport/v7/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/mysupport/v7/widget/RecyclerView;->setEdgeEffectFactory(Landroid/mysupport/v7/widget/RecyclerView$EdgeEffectFactory;)V

    .line 95
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroid/mysupport/v7/widget/GridLayoutManager;

    move-result-object p2

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/GridLayoutManager;->setReverseLayout(Z)V

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroid/mysupport/v7/widget/RecyclerView;->setLayoutManager(Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p2, v1}, Landroid/mysupport/v7/widget/RecyclerView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    const p2, 0x7f0a0065

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mBackButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    const p2, 0x7f0a0067

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mBackButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    new-instance p2, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AppCategorySelectSearchFragment$o3nEwpqghkyTY_3IJorh-nCbbJs;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AppCategorySelectSearchFragment$o3nEwpqghkyTY_3IJorh-nCbbJs;-><init>(Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    new-instance p2, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AppCategorySelectSearchFragment$LxjaGUjUXpCQH8VjDpeSdKNIjME;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AppCategorySelectSearchFragment$LxjaGUjUXpCQH8VjDpeSdKNIjME;-><init>(Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updateUIColorMode()V

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updatePoolSize()V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mSaveButton:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    return-void
.end method

.method public updateCategory()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mEditFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getSelectedApps()Ljava/util/Collection;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 76
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-static {v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofComponentKeys(Ljava/util/HashSet;)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-void
.end method
