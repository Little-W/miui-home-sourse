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

    .line 55
    new-instance v0, Lcom/mi/globallauncher/BranchClientImplement;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchClientImplement;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchClientImplement;->instance:Lcom/mi/globallauncher/BranchClientImplement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 141
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    const-string v0, ""

    .line 314
    iput-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    const-string v0, ""

    .line 327
    iput-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchClientImplement;
    .locals 1

    .line 61
    sget-object v0, Lcom/mi/globallauncher/BranchClientImplement;->instance:Lcom/mi/globallauncher/BranchClientImplement;

    return-object v0
.end method

.method private getShortInfoPackageName(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->clearRvData()V

    .line 277
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setNeedToShowSearchSuggestion(Z)V

    .line 278
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setSearchText(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->resetEventReportValues()V

    const/4 p0, 0x2

    .line 280
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    .line 281
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemClick(I)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x5

    .line 290
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    return-void
.end method

.method private trackShowBranchHotSuggest(ILjava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowHotSuggest(Z)V

    .line 319
    iput-object p2, p0, Lcom/mi/globallauncher/BranchClientImplement;->hotSuggestLastQueryWord:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    .line 321
    invoke-virtual {p3}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hasReportedBranchShowHotSuggest()Z

    move-result p2

    if-nez p2, :cond_1

    .line 322
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemShow(I)V

    const/4 p1, 0x1

    .line 323
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowHotSuggest(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public branchAddKeepList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public branchQuery(Ljava/lang/String;)Z
    .locals 2

    .line 349
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBranchDatabaseReady()Z
    .locals 1

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getUpdateDrawerModeForCloudConfig()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewHolder(Landroid/view/ViewGroup;ILandroid/view/LayoutInflater;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 1

    const/16 v0, 0x800

    if-eq p2, v0, :cond_5

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4000

    if-eq p2, v0, :cond_2

    const v0, 0x8000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_0
    new-instance p2, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getLdsBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 260
    :cond_1
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 258
    :cond_2
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getSearchResultDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 249
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getAutoSuggestView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 251
    :cond_4
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 256
    :cond_5
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->getSearchLoadingDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public internationalInitMethod(Lcom/miui/home/launcher/Application;)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/BranchClientImplement$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/BranchClientImplement$1;-><init>(Lcom/mi/globallauncher/BranchClientImplement;)V

    invoke-virtual {v0, p1, v1}, Lcom/mi/globallauncher/manager/BranchImplement;->initPrivacy(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    .line 193
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 194
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

    const/16 p6, 0x4000

    if-eq p1, p6, :cond_3

    const p6, 0x8000

    if-eq p1, p6, :cond_2

    const/high16 p6, 0x10000

    if-eq p1, p6, :cond_1

    const/high16 p6, 0x20000

    if-eq p1, p6, :cond_0

    goto/16 :goto_0

    .line 298
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 299
    check-cast p3, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    iget-object p4, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast p4, Lio/branch/search/BranchAppResult;

    iget p5, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    iget-boolean p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isSearchContent:Z

    invoke-virtual {p3, p2, p4, p5, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->updateView(ZLio/branch/search/BranchAppResult;IZ)V

    goto/16 :goto_0

    .line 294
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 295
    check-cast p3, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    iget-object p4, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast p4, Lio/branch/search/BranchLocalAppResult;

    iget p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    invoke-virtual {p3, p2, p4, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->updateLocalBranchView(ZLio/branch/search/BranchLocalAppResult;I)V

    goto/16 :goto_0

    .line 309
    :cond_2
    iget-object p1, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->dividerHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 305
    :cond_3
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p1

    iget-object p2, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 306
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p3

    .line 305
    invoke-interface {p1, p2, p3}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupBranchSearchResultDivider(Landroid/view/View;Z)V

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 272
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p4

    iget-object v0, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {p4, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setAutoSuggestList(Ljava/util/List;)V

    .line 273
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p4

    iget-object p3, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p5

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    new-instance v0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;

    invoke-direct {v0, p2, p6}, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;-><init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 273
    invoke-interface {p4, p3, p5, p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupAutoSuggestView(Landroid/view/View;ZLjava/lang/String;Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    const/4 p1, 0x2

    .line 283
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p6}, Lcom/mi/globallauncher/BranchClientImplement;->trackShowBranchHotSuggest(ILjava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    goto :goto_0

    .line 286
    :cond_5
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 287
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    iget-object v1, p3, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 288
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v2

    iget-object p2, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lio/branch/search/BranchLinkResult;

    iget v4, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    sget-object v5, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$F22n5ZTGOW9-N9jqFepm5KobCE0;->INSTANCE:Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$F22n5ZTGOW9-N9jqFepm5KobCE0;

    const/4 v6, 0x0

    .line 287
    invoke-interface/range {v0 .. v6}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setupBranchItemView(Landroid/view/View;ZLio/branch/search/BranchLinkResult;ILandroid/view/View$OnClickListener;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResume(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updateDrawerModeForCloudConfig(Lcom/miui/home/launcher/Launcher;)V

    .line 89
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onResume()V

    :cond_1
    return-void
.end method

.method public showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 161
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 167
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchStatic()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;->showNewFeatureTag()Z

    move-result p1

    return p1
.end method

.method public trackInfo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 65
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->getShortInfoPackageName(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/miui/privacy/track/TrackManager;->trackPlayStoreClick(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/miui/privacy/track/TrackManager;->trackGetappsClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trackShowBranchFrequentLocalApp(Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iput-object p1, p0, Lcom/mi/globallauncher/BranchClientImplement;->branchLastQueryWord:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public trackShowBranchResult(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;I)V
    .locals 1

    const/16 v0, 0x1000

    if-ne v0, p2, :cond_0

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hasReportedBranchShowEvent()Z

    move-result p2

    if-nez p2, :cond_0

    .line 338
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultShow()V

    const/4 p2, 0x1

    .line 339
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowEvent(Z)V

    :cond_0
    return-void
.end method

.method public updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    .line 118
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setVisibility(I)V

    .line 125
    iget-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackNewFeatureTagShow()V

    .line 127
    iput-boolean v2, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 129
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getShowNewFeatureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 130
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->updateShowNewFeatureTime()V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 134
    iput-boolean v1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newFeatureTagShowing:Z

    .line 136
    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    :cond_4
    return-void
.end method

.method public updateDrawerModeForCloudConfig(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updatePocoPageIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getUpdateDrawerModeForCloudConfig()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isCloudConfigReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 107
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 108
    invoke-static {p1, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setDrawerModeEnable(Landroid/content/Context;Z)V

    .line 109
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchStatic()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;->updateDrawerModeForCloudConfig()V

    .line 110
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->showBranchSearchGuideView()V

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updatePocoPageIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 144
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/mi/globallauncher/util/CommonUtilities;->isFirstInstall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;->needToShowPocoSearchGuide()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->shouldShowNewFeatureForQuickSearch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 150
    iget-boolean p1, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    if-nez p1, :cond_4

    .line 151
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackNewFeatureTagShow()V

    .line 152
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->updateAllAppsIndicator(Z)V

    .line 156
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchClientImplement;->newPocoFeatureShowing:Z

    :cond_4
    :goto_0
    return-void
.end method
