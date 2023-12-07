.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

.field protected mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field protected mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

.field protected mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

.field protected final mUsedTimeComparator:Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mUsedTimeComparator:Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->highLightLocatedApp(I)V

    return-void
.end method

.method private highLightLocatedApp(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 235
    instance-of v0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 183
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    .line 184
    iget-object v5, v3, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isHitInParent(Landroid/view/ViewGroup;FFLandroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d007d

    return p0
.end method

.method public final getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    .line 147
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppsCompat(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 150
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mUsedTimeComparator:Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    .line 151
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 3

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 159
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 160
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAppPosition(Lcom/miui/home/launcher/AppInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->smoothScrollToPosition(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->branchOrMaskLocalAppClick(Landroid/view/View;)V

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    .line 135
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 137
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 65
    new-instance p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    .line 68
    sget-object p1, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, v0}, Lcom/miui/home/LauncherDecoupleHelper;->setAppListFilter(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method public abstract onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a033e

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/view/SpringRelativeLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    .line 85
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const p3, 0x7f0a0074

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    .line 86
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    .line 87
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p3}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 88
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setApps(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    .line 89
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 92
    new-instance p2, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-direct {p2, p3, v0}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V

    .line 93
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 94
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 100
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    new-instance p3, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->updatePoolSize()V

    const p2, 0x7f0a0154

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;

    if-eqz p2, :cond_1

    .line 113
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz p0, :cond_0

    .line 114
    sget-object p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->DEFAULT_INDEX_ITEM:[Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setLetterItems([Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->DEFAULT_INDEX_ITEM_WITHOUT_RECENT:[Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setLetterItems([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onDestroy()V

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 143
    sget-object p0, Lcom/miui/home/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected final updatePoolSize()V
    .locals 3

    .line 193
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-nez p0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    const/4 v0, 0x2

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v0, 0x8

    .line 199
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v0, 0x10

    .line 200
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v0, 0x20

    .line 201
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v0, 0x40

    .line 202
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method
