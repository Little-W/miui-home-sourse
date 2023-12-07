.class Lcom/mi/globallauncher/manager/BranchSearchResultUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

.field private static mAutoSuggestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNeedToRefreshAutoSuggest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;
    .locals 2

    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    return-object v0
.end method

.method static synthetic lambda$setupAutoSuggestView$1(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;->onTagClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setupBranchItemView$0(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/branch/search/BranchLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoSuggestView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_auto_suggest:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_search_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLdsBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_lds_search_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSearchLoadingDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_search_loading:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSearchResultDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$layout;->all_apps_search_result_divider:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setAutoSuggestList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAutoSuggestion;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    sget-object p0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchAutoSuggestion;

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestion;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    sput-boolean p0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    :cond_2
    return-void
.end method

.method public setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V
    .locals 2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isUseMiAppStore()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.xiaomi.mipicks"

    invoke-static {p1, p0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://details/detailmini?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&overlayStyle=normal"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lio/branch/search/BranchLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_0
    return-void
.end method

.method public setupAutoSuggestView(Landroid/view/View;ZLjava/lang/String;Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V
    .locals 1

    sget p0, Lcom/mi/globallauncher/R$id;->suggest_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lcom/mi/globallauncher/R$id;->suggest_group:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/mi/globallauncher/view/ReversibleTagGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha60black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha60white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    sget-boolean p0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-virtual {p3, p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags(Ljava/util/List;)V

    :cond_1
    new-instance p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$RgOa-GR89_KxQCed51GIGqAASRc;

    invoke-direct {p0, p4}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$RgOa-GR89_KxQCed51GIGqAASRc;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    invoke-virtual {p3, p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setOnTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    return-void
.end method

.method public setupBranchItemView(Landroid/view/View;ZLio/branch/search/BranchLinkResult;ILandroid/view/View$OnClickListener;Z)V
    .locals 9

    sget p0, Lcom/mi/globallauncher/R$id;->branch_item_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    sget p6, Lcom/mi/globallauncher/R$id;->deep_link_icon:I

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/ImageView;

    sget v0, Lcom/mi/globallauncher/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$id;->desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/mi/globallauncher/R$id;->source_app_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lio/branch/search/BranchLinkResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4, v3}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    if-eqz p4, :cond_5

    const/4 v6, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    if-eq p4, v6, :cond_3

    const/4 v6, 0x2

    if-eq p4, v6, :cond_1

    if-eqz p2, :cond_0

    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    goto :goto_0

    :cond_0
    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v6

    goto :goto_5

    :cond_1
    if-eqz p2, :cond_2

    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_top_radius:I

    goto :goto_1

    :cond_2
    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_top_radius_dark:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v5

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_4

    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_bottom_radius:I

    goto :goto_2

    :cond_4
    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_bottom_radius_dark:I

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v6

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_no_radius:I

    goto :goto_3

    :cond_6
    sget p4, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_no_radius_dark:I

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v5

    :goto_4
    move v8, v6

    move v6, v5

    move v5, v8

    :goto_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v5, v4, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p0

    invoke-virtual {p3}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    sget p4, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    new-instance p4, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {p4}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p0

    invoke-virtual {p3}, Lio/branch/search/BranchLinkResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    sget p4, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    new-instance p4, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {p4}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    invoke-virtual {p0, p4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha50black:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    new-instance p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;

    invoke-direct {p0, p1, p3, p5}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;-><init>(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupBranchSearchResultDivider(Landroid/view/View;Z)V
    .locals 4

    sget p0, Lcom/mi/globallauncher/R$id;->divider_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    sget v0, Lcom/mi/globallauncher/R$id;->start_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$id;->divider_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/mi/globallauncher/R$id;->end_divider:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha10black:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha10black:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mi/globallauncher/R$color;->alpha40black:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha20white:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$color;->alpha20white:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mi/globallauncher/R$color;->alpha40white:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
