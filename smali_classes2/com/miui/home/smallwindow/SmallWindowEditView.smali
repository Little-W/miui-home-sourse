.class public Lcom/miui/home/smallwindow/SmallWindowEditView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "SmallWindowEditView.java"


# instance fields
.field mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

.field private mIconProvider:Lcom/miui/home/library/IconProviderHelper;

.field private mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

.field private mItemInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/home/smallwindow/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    .line 32
    new-instance p2, Lcom/miui/home/smallwindow/SmallWindowEditView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/smallwindow/SmallWindowEditView$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowEditView;)V

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 74
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 75
    invoke-static {p1}, Lcom/miui/home/library/IconProviderHelper;->newInstance(Landroid/content/Context;)Lcom/miui/home/library/IconProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowEditView;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowEditView;)Lcom/miui/home/smallwindow/SmallWindowEditAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    return-object p0
.end method


# virtual methods
.method public getItemInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/smallwindow/ItemInfo;
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/smallwindow/ItemInfo;

    monitor-exit v0

    return-object p1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 127
    new-instance v7, Lcom/miui/home/smallwindow/ItemInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    .line 128
    invoke-virtual {v1, p2}, Lcom/miui/home/library/IconProviderHelper;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/home/smallwindow/R$drawable;->sample_footer_loading:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 129
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/smallwindow/ItemInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemInfos:Ljava/util/Map;

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v0

    return-object v7

    .line 133
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initView(Landroid/content/Context;Lcom/miui/home/smallwindow/BadgeCheckedListener;)V
    .locals 4

    .line 79
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 80
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowEditView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowEditView$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowEditView;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/home/smallwindow/R$dimen;->edit_top_padding:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 88
    new-instance v2, Lcom/miui/home/smallwindow/SpacesItemDecoration;

    invoke-direct {v2, v1, p1, v1, v1}, Lcom/miui/home/smallwindow/SpacesItemDecoration;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/miui/home/smallwindow/SmallWindowEditView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 90
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/home/smallwindow/R$layout;->small_window_edit_icon:I

    sget v3, Lcom/miui/home/smallwindow/R$layout;->small_window_header:I

    invoke-direct {p1, v1, v2, p2, v3}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;-><init>(Landroid/content/Context;ILcom/miui/home/smallwindow/BadgeCheckedListener;I)V

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    new-instance p1, Lcom/miui/home/smallwindow/MiuiScaleItemAnimator;

    invoke-direct {p1}, Lcom/miui/home/smallwindow/MiuiScaleItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 54
    invoke-super {p0}, Lmiuix/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 60
    invoke-super {p0}, Lmiuix/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowEditView$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditView$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowEditView;Ljava/util/List;)V

    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowEditView$4;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/smallwindow/SmallWindowEditView$4;-><init>(Lcom/miui/home/smallwindow/SmallWindowEditView;I)V

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
