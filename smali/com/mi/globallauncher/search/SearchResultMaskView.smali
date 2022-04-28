.class public Lcom/mi/globallauncher/search/SearchResultMaskView;
.super Landroid/widget/RelativeLayout;
.source "SearchResultMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;,
        Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;,
        Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;,
        Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;
    }
.end annotation


# static fields
.field private static final PERMISSION_GUIDE_CLOSE_INTERVAL:J = 0xf731400L

.field private static final QUICK_SEARCH_GUIDE_INTERVAL:J = 0x5265c00L

.field private static final SEARCH_HINT_REFRESH_INTERVAL:J = 0x36ee80L

.field public static final SEARCH_MASK_TYPE_FREQUENT_USE:I = 0x2

.field public static final SEARCH_MASK_TYPE_HINT:I = 0x1

.field public static final SEARCH_MASK_TYPE_LOCATION:I = 0x0

.field public static final SEARCH_MASK_TYPE_QUICK_SEARCH_GUIDE:I = 0x4

.field public static final SEARCH_MASK_TYPE_RECOMMEND:I = 0x3

.field public static final SEARCH_MASK_TYPE_SHORTCUT_ZERO_STATE:I = 0x5


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mHintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

.field private mMaskListView:Lcom/mi/globallauncher/view/CustomListView;

.field private mNeedToShowUniSearchContent:Z

.field private mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

.field private mSearchMaskHintsListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mNeedToShowUniSearchContent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mNeedToShowUniSearchContent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mNeedToShowUniSearchContent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/search/SearchResultMaskView;)Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/search/SearchResultMaskView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->refreshTagView()V

    return-void
.end method

.method private addFrequentUsedAppsIfNeeded(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 258
    new-instance p1, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 259
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addLocationPermissionGuideIfNeeded(Z)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show permission = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowLocationPermissionView()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowLocationPermissionView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    new-instance p1, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 290
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->onPermissionViewShow()V

    :cond_0
    return-void
.end method

.method private addQuickSearchGuideIfNeeded()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowLocationPermissionView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/search/SearchResultMaskView;->shouldShowQuickSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 329
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;->onGuideShow()V

    :cond_0
    return-void
.end method

.method private addRecommendAppsIfNeeded()V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show recommend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowRecommendGamesAndApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowRecommendGamesAndApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 353
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->updateShowingRecommendAdList()V

    :cond_0
    return-void
.end method

.method private addSearchHintIfNeeded()V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show search hint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowSearchHintView()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowSearchHintView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 194
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->updateUniSearchHint()V

    .line 196
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mSearchMaskHintsListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;->onSearchHintShow()V

    :cond_0
    return-void
.end method

.method private addZeroStateIfNeeded()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->needToShowSearchHintView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getZeroStateFromServer()V

    :cond_0
    return-void
.end method

.method private getSearchHintFromServer()V
    .locals 3

    .line 220
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lio/branch/search/BranchQueryHintRequest;->create()Lio/branch/search/BranchQueryHintRequest;

    move-result-object v0

    .line 224
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v1

    new-instance v2, Lcom/mi/globallauncher/search/SearchResultMaskView$2;

    invoke-direct {v2, p0}, Lcom/mi/globallauncher/search/SearchResultMaskView$2;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;)V

    invoke-virtual {v1, v0, v2}, Lio/branch/search/BranchSearch;->localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    .line 243
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setLastGetSearchHintTime(J)V

    return-void
.end method

.method private getZeroStateFromServer()V
    .locals 3

    .line 155
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lio/branch/search/BranchZeroStateRequest;->create()Lio/branch/search/BranchZeroStateRequest;

    move-result-object v0

    .line 159
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v1

    new-instance v2, Lcom/mi/globallauncher/search/SearchResultMaskView$1;

    invoke-direct {v2, p0}, Lcom/mi/globallauncher/search/SearchResultMaskView$1;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;)V

    invoke-virtual {v1, v0, v2}, Lio/branch/search/BranchSearch;->zeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/mi/globallauncher/search/SearchResultMaskView;Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mSearchMaskHintsListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;->onSearchHintClick(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setNeedToShowSearchSuggestion(Z)V

    .line 102
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getSearchHintFromServer()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-interface {p0, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$setOnClickListener$2(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private needToShowLocationPermissionView()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mNeedToShowUniSearchContent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->shouldAskForLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->overRequestPermissionInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToShowRecommendGamesAndApps()Z
    .locals 1

    .line 359
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isSearchMaskRecommendConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isRecommendInSearchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->isRecommendAppsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToShowSearchHintView()Z
    .locals 1

    .line 203
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    return v0
.end method

.method private overRequestPermissionInterval()Z
    .locals 4

    .line 315
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->hasRequestedLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getRequestLocationPermissionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isMaskViewPermissionButtonClicked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshTagView()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setTagList(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private shouldAskForLocationPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static shouldShowQuickSearchGuide()Z
    .locals 4

    .line 337
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFocusSearchOnEnterDrawerSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->shouldQuickSearchGuideShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getEnterSearchTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateUniSearchHint()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v2

    invoke-interface {v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getLastGetSearchHintTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mHintList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getSearchHintFromServer()V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->refreshTagView()V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getSearchHintFromServer()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mActivity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mSearchMaskHintsListener:Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;

    .line 80
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setPermissionRequestCode(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 95
    sget v0, Lcom/mi/globallauncher/R$id;->mask_list_view:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/view/CustomListView;

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskListView:Lcom/mi/globallauncher/view/CustomListView;

    .line 96
    new-instance v0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    .line 97
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$GgrabK82Jo9tiQdve1paIf08Xbo;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$GgrabK82Jo9tiQdve1paIf08Xbo;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;)V

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskListView:Lcom/mi/globallauncher/view/CustomListView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    sget v0, Lcom/mi/globallauncher/R$id;->mask_close_btn:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mCloseBtn:Landroid/widget/ImageView;

    return-void
.end method

.method public refreshRecommendList()V
    .locals 0

    return-void
.end method

.method public setFrequentUsedAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setFrequentUsedAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V

    return-void
.end method

.method public setFrequentUsedAppIconScale(F)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setFrequentUseIconScale(F)V

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

    if-eqz p1, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setFrequentUsedAppList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setFrequentUsedAppsColumn(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setRecommendNumColumn(I)V

    return-void
.end method

.method public setGameClickListener(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setGameClickListener(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;)V

    return-void
.end method

.method public setNeedToShowUniSearchContentOnMaskView(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mNeedToShowUniSearchContent:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskListView:Lcom/mi/globallauncher/view/CustomListView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$j2HDyM8vK5ZItMeehUo-LY9oPA0;

    invoke-direct {v1, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$j2HDyM8vK5ZItMeehUo-LY9oPA0;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/CustomListView;->setOnNoItemClickListener(Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$EpCEKJi8bmUcpYLeT9IiBB4uK6M;

    invoke-direct {v1, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskView$EpCEKJi8bmUcpYLeT9IiBB4uK6M;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setQuickSearchGuideListener(Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mQuickSearchGuideListener:Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    .line 89
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setQuickSearchGuideListener(Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;)V

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

    .line 364
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setRecommendGameList(Ljava/util/List;)V

    return-void
.end method

.method public setSearchMaskPermissionListener(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setPermissionListener(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;)V

    return-void
.end method

.method public updateSearchMaskViewContent(ZZZZ)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 125
    sget v1, Lcom/mi/globallauncher/R$color;->search_mask_white_bg_90:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mi/globallauncher/R$color;->alpha90black:I

    .line 124
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setBackgroundColor(I)V

    .line 127
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setItemList(Ljava/util/List;)V

    .line 130
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mCloseBtn:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mCloseBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addZeroStateIfNeeded()V

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addRecommendAppsIfNeeded()V

    .line 139
    invoke-direct {p0, p4}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addFrequentUsedAppsIfNeeded(Z)V

    .line 140
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addSearchHintIfNeeded()V

    .line 141
    invoke-direct {p0, p2}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addLocationPermissionGuideIfNeeded(Z)V

    .line 142
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->addQuickSearchGuideIfNeeded()V

    .line 144
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setIsInLightMode(Z)V

    .line 145
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mMaskAdapter:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView;->mItemList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setItemList(Ljava/util/List;)V

    return-void
.end method
