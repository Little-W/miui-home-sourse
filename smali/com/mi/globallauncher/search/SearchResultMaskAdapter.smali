.class public Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;,
        Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchResultMaskAdapter"


# instance fields
.field private gameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

.field private mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

.field private mContext:Landroid/content/Context;

.field private mFrequentUsedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/local/FrequentUsedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInLightMode:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionRequestCode:I

.field private mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

.field private mRecommendGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendNumColumn:I

.field private mScale:F

.field private mSearchMaskPermissionListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

.field private mTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

.field private mTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mTagList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendGameList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mFrequentUsedAppList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mIsInLightMode:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendNumColumn:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mScale:F

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mIsInLightMode:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mFrequentUsedAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)F
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mScale:F

    return p0
.end method

.method static synthetic access$1200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mSearchMaskPermissionListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mTagList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendGameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->gameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendNumColumn:I

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    iget p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->type:I

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    const/4 v1, 0x5

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_zero_state_item:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_quick_search_guide:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_recommend:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_frequent_use:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_result_hint:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_location_permission:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;->updateView(I)V

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;->updateView(I)V

    :cond_8
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public isRecommendAppsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendGameList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPermissionViewShow()V
    .locals 1

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mSearchMaskPermissionListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isUniSearchPermissionButtonClicked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;->onPermissionGuideShow(Z)V

    :cond_2
    return-void
.end method

.method public setFrequentUseIconScale(F)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mScale:F

    return-void
.end method

.method public setFrequentUsedAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    return-void
.end method

.method public setFrequentUsedAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/local/FrequentUsedAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mFrequentUsedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mFrequentUsedAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackRecommendApp()V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGameClickListener(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->gameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPermissionListener(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mSearchMaskPermissionListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    return-void
.end method

.method public setPermissionRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mPermissionRequestCode:I

    return-void
.end method

.method public setQuickSearchGuideListener(Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    return-void
.end method

.method public setRecommendGameList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendGameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRecommendNumColumn(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mRecommendNumColumn:I

    return-void
.end method

.method public setTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->mTagList:Ljava/util/List;

    return-void
.end method

.method public updateShowingRecommendAdList()V
    .locals 0

    return-void
.end method
