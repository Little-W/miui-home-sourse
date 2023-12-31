.class public Lcom/mi/globallauncher/BranchClientImplement;
.super Ljava/lang/Object;
.source "BranchClientImplement.java"


# static fields
.field private static final instance:Lcom/mi/globallauncher/BranchClientImplement;


# instance fields
.field private branchLastQueryWord:Ljava/lang/String;

.field private hotSuggestLastQueryWord:Ljava/lang/String;

.field public newFeatureTagShowing:Z

.field private newPocoFeatureShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/mi/globallauncher/BranchClientImplement;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchClientImplement;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchClientImplement;->instance:Lcom/mi/globallauncher/BranchClientImplement;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 146
    iput-boolean v1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    .line 336
    iput-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchClientImplement;
    .locals 1

    .line 68
    sget-object v0, Lcom/mi/globallauncher/BranchClientImplement;->instance:Lcom/mi/globallauncher/BranchClientImplement;

    return-object v0
.end method

.method private getShortInfoPackageName(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Ljava/lang/String;)V
    .locals 2

    .line 286
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setNeedToShowSearchSuggestion(Z)V

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setSearchText(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->resetEventReportValues()V

    const/4 p0, 0x2

    .line 289
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    .line 290
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemClick(I)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x5

    .line 299
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    return-void
.end method

.method private trackShowBranchHotSuggest(ILjava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowHotSuggest(Z)V

    if-nez p2, :cond_0

    const-string p2, ""

    .line 326
    :cond_0
    iput-object p2, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    .line 328
    invoke-virtual {p3}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hasReportedBranchShowHotSuggest()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 329
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowHotSuggest(Z)V

    .line 330
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->needToShowSearchSuggestion()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 331
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemShow(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public branchAddKeepList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public branchQuery(Ljava/lang/String;)Z
    .locals 1

    .line 358
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public branchSwitchTrack(Landroid/content/Context;)V
    .locals 2

    .line 367
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "branch_open_state_daily"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v1

    invoke-static {v1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackSwitchState(Z)V

    .line 370
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBranchDatabaseReady()Z
    .locals 0

    .line 354
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getUpdateDrawerModeForCloudConfig()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getViewHolder(Landroid/view/ViewGroup;ILandroid/view/LayoutInflater;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 0

    const/16 p0, 0x800

    if-eq p2, p0, :cond_5

    const/16 p0, 0x1000

    if-eq p2, p0, :cond_4

    const/16 p0, 0x2000

    if-eq p2, p0, :cond_3

    const/16 p0, 0x4000

    if-eq p2, p0, :cond_2

    const p0, 0x8000

    if-eq p2, p0, :cond_1

    const/high16 p0, 0x10000

    if-eq p2, p0, :cond_0

    const/high16 p0, 0x20000

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 264
    :cond_0
    new-instance p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getLdsBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 270
    :cond_1
    new-instance p0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 268
    :cond_2
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getSearchResultDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 259
    :cond_3
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getAutoSuggestView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 261
    :cond_4
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 266
    :cond_5
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getSearchLoadingDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public internationalInitMethod(Lcom/miui/home/launcher/Application;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/BranchClientImplement$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/BranchClientImplement$1;-><init>(Lcom/mi/globallauncher/BranchClientImplement;)V

    invoke-virtual {v0, p1, v1}, Lcom/mi/globallauncher/manager/BranchImplement;->initPrivacy(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    .line 198
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/BranchClientImplement$2;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/BranchClientImplement$2;-><init>(Lcom/mi/globallauncher/BranchClientImplement;)V

    invoke-interface {v0, p1, v1}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->init(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(ILcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;ILcom/miui/home/launcher/allapps/AllAppsColorMode;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 7

    const/16 v0, 0x800

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_4

    const/16 p0, 0x4000

    if-eq p1, p0, :cond_3

    const p0, 0x8000

    if-eq p1, p0, :cond_2

    const/high16 p0, 0x10000

    if-eq p1, p0, :cond_1

    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_0

    goto/16 :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 308
    check-cast p3, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast p2, Lio/branch/search/BranchAppResult;

    iget p4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isSearchContent:Z

    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->updateView(ZLio/branch/search/BranchAppResult;IZ)V

    goto/16 :goto_0

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 304
    check-cast p3, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast p2, Lio/branch/search/BranchLocalAppResult;

    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    invoke-virtual {p3, p1, p2, p0}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->updateLocalBranchView(ZLio/branch/search/BranchLocalAppResult;I)V

    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object p0, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->dividerHeight:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 314
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p0

    iget-object p1, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 315
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    .line 314
    invoke-interface {p0, p1, p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupBranchSearchResultDivider(Landroid/view/View;Z)V

    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 282
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p4

    iget-object v0, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {p4, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setAutoSuggestList(Ljava/util/List;)V

    .line 283
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p4

    iget-object p3, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p5

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    new-instance v0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$BD1kS6TKGFJbYCyPfOkU7BjhP4k;

    invoke-direct {v0, p6}, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$BD1kS6TKGFJbYCyPfOkU7BjhP4k;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 283
    invoke-interface {p4, p3, p5, p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupAutoSuggestView(Landroid/view/View;ZLjava/lang/String;Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    const/4 p1, 0x2

    .line 292
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p6}, Lcom/mi/globallauncher/BranchClientImplement;->trackShowBranchHotSuggest(ILjava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    goto :goto_0

    .line 295
    :cond_5
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 296
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    iget-object v1, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v2

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lio/branch/search/BranchLinkResult;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    sget-object v5, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$F22n5ZTGOW9-N9jqFepm5KobCE0;->INSTANCE:Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$F22n5ZTGOW9-N9jqFepm5KobCE0;

    const/4 v6, 0x0

    .line 296
    invoke-interface/range {v0 .. v6}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupBranchItemView(Landroid/view/View;ZLio/branch/search/BranchLinkResult;ILandroid/view/View$OnClickListener;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResume(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updateDrawerModeForCloudConfig(Lcom/miui/home/launcher/Launcher;)V

    .line 95
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onResume()V

    :cond_1
    return-void
.end method

.method public showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 172
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchStatic()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;->showNewFeatureTag()Z

    move-result p0

    return p0
.end method

.method public trackInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 72
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->getShortInfoPackageName(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackGpOrGetApps(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trackShowBranchFrequentLocalApp(Ljava/lang/String;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iput-object p1, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public trackShowBranchResult(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;I)V
    .locals 0

    const/high16 p0, 0x20000

    if-eq p0, p2, :cond_0

    const/high16 p0, 0x10000

    if-ne p0, p2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hasReportedBranchShowEvent()Z

    move-result p0

    if-nez p0, :cond_1

    .line 347
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultShow()V

    const/4 p0, 0x1

    .line 348
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowEvent(Z)V

    :cond_1
    return-void
.end method

.method public updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    .line 124
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    if-nez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackNewFeatureTagShow()V

    .line 132
    iput-boolean v2, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 134
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getShowNewFeatureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_3

    .line 135
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->updateShowNewFeatureTime()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 139
    iput-boolean v1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 141
    :cond_3
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    :cond_4
    return-void
.end method

.method public updateDrawerModeForCloudConfig(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updatePocoPageIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getUpdateDrawerModeForCloudConfig()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isCloudConfigReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 113
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 114
    invoke-static {p1, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setDrawerModeEnable(Landroid/content/Context;Z)V

    .line 115
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchStatic()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;->updateDrawerModeForCloudConfig()V

    .line 116
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->showBranchSearchGuideView()V

    .line 118
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updatePocoPageIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 149
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;->needToShowPocoSearchGuide()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->shouldShowNewFeatureForQuickSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 161
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    goto :goto_1

    .line 154
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 155
    iget-boolean p1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    if-nez p1, :cond_3

    .line 156
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackNewFeatureTagShow()V

    .line 157
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    :cond_3
    :goto_1
    return-void
.end method
