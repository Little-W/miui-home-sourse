.class public Lcom/miui/home/smallwindow/SmallWindowSelectedView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SmallWindowSelectedView.java"


# instance fields
.field private mIconProvider:Lcom/miui/home/library/IconProviderHelper;

.field private mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

.field private mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 37
    invoke-static {p1}, Lcom/miui/home/library/IconProviderHelper;->newInstance(Landroid/content/Context;)Lcom/miui/home/library/IconProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowSelectedView;)Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    return-object p0
.end method


# virtual methods
.method public getItemInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/smallwindow/ItemInfo;
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 79
    new-instance v6, Lcom/miui/home/smallwindow/ItemInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    .line 80
    invoke-virtual {v0, p2}, Lcom/miui/home/library/IconProviderHelper;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/miui/home/smallwindow/R$drawable;->sample_footer_loading:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 81
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/smallwindow/ItemInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initView(Landroid/content/Context;Lcom/miui/home/smallwindow/BadgeCheckedListener;)V
    .locals 5

    .line 41
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/home/smallwindow/R$dimen;->selected_left_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/home/smallwindow/R$dimen;->selected_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/home/smallwindow/R$dimen;->selected_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/home/smallwindow/R$dimen;->selected_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 46
    new-instance v4, Lcom/miui/home/smallwindow/SpacesItemDecoration;

    invoke-direct {v4, p1, v2, v1, v3}, Lcom/miui/home/smallwindow/SpacesItemDecoration;-><init>(IIII)V

    invoke-virtual {p0, v4}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 48
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/home/smallwindow/R$layout;->small_window_seclected_icon:I

    invoke-direct {p1, v1, v2, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;-><init>(Landroid/content/Context;ILcom/miui/home/smallwindow/BadgeCheckedListener;)V

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    .line 50
    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->mItemAdapter:Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    new-instance p1, Lcom/miui/home/smallwindow/MiuiScaleItemAnimator;

    invoke-direct {p1}, Lcom/miui/home/smallwindow/MiuiScaleItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowSelectedView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowSelectedView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/smallwindow/SmallWindowSelectedView$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowSelectedView;Ljava/util/List;)V

    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowSelectedView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowSelectedView$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowSelectedView;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
