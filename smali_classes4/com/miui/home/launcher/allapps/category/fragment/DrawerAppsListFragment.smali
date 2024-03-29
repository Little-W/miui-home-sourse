.class public Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.source "DrawerAppsListFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;-><init>()V

    return-void
.end method

.method private refreshSpanCount()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateCellHeight()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setCellHeight(I)V

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updateHeightCache()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount(I)Z

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 39
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
    .locals 2

    .line 58
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 113
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenOrientationChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->updateCellHeight()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/ScreenSizeChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->updateCellHeight()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "letter_fast_scroller_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLetterScrollerEnable(Z)V

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->updateStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DrawerCellsColumnsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->refreshSpanCount()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->updatePoolSize()V

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->refreshSpanCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLetterScrollerEnable(Z)V

    const p2, 0x7f0a0154

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setScrollerStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->updateCellHeight()V

    return-void
.end method
