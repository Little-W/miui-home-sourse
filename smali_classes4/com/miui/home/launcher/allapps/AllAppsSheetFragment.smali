.class public Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.source "AllAppsSheetFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;-><init>()V

    return-object v0
.end method

.method private updateCellHeight()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setCellHeight(I)V

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updateHeightCache()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount(I)Z

    .line 40
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
    .locals 2

    .line 82
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/16 v1, 0xff

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenOrientationChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->updateCellHeight()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenSizeChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->updateCellHeight()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "color_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->updateStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLetterScrollerEnable(Z)V

    const p2, 0x7f0a0154

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    if-eqz p1, :cond_0

    .line 51
    sget-object p2, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/16 v0, 0xff

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setScrollerStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSheetFragment;->updateCellHeight()V

    return-void
.end method
