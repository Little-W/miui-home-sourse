.class public Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "SmallWindowListRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;
    }
.end annotation


# instance fields
.field private mIconProvider:Lcom/miui/home/library/IconProviderHelper;

.field private mItemAdapter:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

.field private mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    new-instance p2, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$3;

    invoke-direct {p2, p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)V

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 40
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 41
    invoke-static {p1}, Lcom/miui/home/library/IconProviderHelper;->newInstance(Landroid/content/Context;)Lcom/miui/home/library/IconProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    .line 42
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)Lcom/miui/home/smallwindow/BaseDelegateAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mItemAdapter:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->calculateAlphaAndScale(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method

.method private calculateAlphaAndScale(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 4

    .line 136
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 137
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 139
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/smallwindow/ItemView;

    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/miui/home/smallwindow/ItemView;->getWidth()I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/home/smallwindow/ItemView;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/smallwindow/ItemView;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 153
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 9

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/smallwindow/R$dimen;->left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/smallwindow/R$dimen;->top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/smallwindow/R$dimen;->bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/smallwindow/R$dimen;->space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 50
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;-><init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;IIIII)V

    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    new-instance v0, Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/home/smallwindow/R$layout;->icon_item:I

    invoke-direct {v0, v1, v2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mItemAdapter:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    .line 55
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mItemAdapter:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public getItemInfo(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

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

    .line 126
    new-instance v0, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;

    .line 127
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mIconProvider:Lcom/miui/home/library/IconProviderHelper;

    .line 128
    invoke-virtual {v2, p2}, Lcom/miui/home/library/IconProviderHelper;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 129
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/miui/home/smallwindow/BaseDelegateAdapter$ItemInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
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

    .line 103
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;Ljava/util/List;)V

    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setItemViewCallback(Lcom/miui/home/smallwindow/ItemViewCallback;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->mItemAdapter:Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->setItemViewCallback(Lcom/miui/home/smallwindow/ItemViewCallback;)V

    :cond_0
    return-void
.end method
