.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "RecommendCategoryAppListFragment.java"


# instance fields
.field private isShow:Z

.field private mLastClickPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method

.method private findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-gt v1, v0, :cond_7

    goto :goto_2

    :cond_2
    if-lt v1, v0, :cond_7

    .line 72
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v2

    .line 75
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_4

    return-object v3

    .line 78
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/AppInfo;

    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 80
    iget-object v4, v2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 81
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v3

    :cond_5
    if-eqz p2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    return-object v2
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 64
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

    .line 49
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

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 41
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

    .line 42
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "apps"

    .line 44
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
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

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 60
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recommend_app_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
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

    .line 106
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onScrollUpEnd()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method

.method public resetView()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->resetView()V

    .line 113
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method
