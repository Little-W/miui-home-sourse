.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "RecommendCategoryAppListFragment.java"


# instance fields
.field private isShow:Z

.field private mLastClickPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method

.method private findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-gt v1, v0, :cond_6

    goto :goto_2

    :cond_2
    if-lt v1, v0, :cond_6

    .line 71
    :goto_2
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    return-object v2

    .line 75
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v3, :cond_4

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 77
    iget-object v4, v3, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    if-eqz p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 48
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->isShowRecommendApps()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const-string p1, "recommend"

    .line 41
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "apps"

    .line 43
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setShowRecommendApps(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 59
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V

    .line 94
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recommend_app_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setShowRecommendApps(Z)V

    :cond_0
    return-void
.end method

.method public onScrollUpEnd()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onScrollUpEnd()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method

.method public resetView()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->resetView()V

    .line 110
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method
