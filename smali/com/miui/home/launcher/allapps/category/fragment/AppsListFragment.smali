.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


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

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mUsedTimeComparator:Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->highLightLocatedApp(I)V

    return-void
.end method

.method private highLightLocatedApp(I)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 231
    instance-of v0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I

    :cond_0
    return-void
.end method

.method private refreshSpanCount()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount()V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method private updatePoolSize()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v1, 0x2

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 194
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v1, 0x8

    .line 195
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v1, 0x10

    .line 196
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v1, 0x20

    .line 197
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/16 v1, 0x40

    .line 198
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 179
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    .line 180
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

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0045

    return v0
.end method

.method public final getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    .line 123
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppsCompat(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mUsedTimeComparator:Lcom/miui/home/launcher/allapps/AppInfoLastUseTimeComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    .line 127
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 3

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 136
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAppPosition(Lcom/miui/home/launcher/AppInfo;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->smoothScrollToPosition(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 63
    new-instance p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 64
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01f5

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/view/SpringRelativeLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    .line 78
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const p3, 0x7f0a0061

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    .line 80
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p3}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 81
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setApps(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    .line 82
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 85
    new-instance p2, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-direct {p2, p3, v0}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V

    .line 86
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 92
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->updatePoolSize()V

    .line 97
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/allapps/category/fragment/-$$Lambda$BnQ43Lfjl7Mo-FHpL12i9j8nMbI;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/allapps/category/fragment/-$$Lambda$BnQ43Lfjl7Mo-FHpL12i9j8nMbI;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 104
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->refreshSpanCount()V

    .line 239
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->onScreenOrientationChanged()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/miui/home/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "letter_fast_scroller_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->bindFastScrollbar(Z)V

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->notifyItemRangeChanged(II)V

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->onColorModeChange()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->updatePoolSize()V

    .line 156
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->refreshSpanCount()V

    return-void
.end method
