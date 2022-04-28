.class Lcom/mi/globallauncher/manager/BranchSearchResultUtils;
.super Ljava/lang/Object;
.source "BranchSearchResultUtils.java"

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

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;
    .locals 2

    .line 41
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->instance:Lcom/mi/globallauncher/manager/BranchSearchResultUtils;

    return-object v0
.end method

.method static synthetic lambda$setupAutoSuggestView$1(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;->onTagClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setupBranchItemView$0(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 138
    invoke-virtual {p1, p3}, Lio/branch/search/BranchLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    if-eqz p2, :cond_0

    .line 140
    invoke-interface {p2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoSuggestView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 66
    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_auto_suggest:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 56
    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_search_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLdsBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 61
    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_lds_search_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSearchLoadingDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 71
    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_uni_search_loading:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSearchResultDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 76
    sget v0, Lcom/mi/globallauncher/R$layout;->all_apps_search_result_divider:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setAutoSuggestList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAutoSuggestion;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 148
    sput-boolean v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    .line 149
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchAutoSuggestion;

    .line 151
    invoke-virtual {v0}, Lio/branch/search/BranchAutoSuggestion;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 157
    sput-boolean p1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    :cond_2
    return-void
.end method

.method public setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V
    .locals 3

    .line 206
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isUseMiAppStore()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.mipicks"

    invoke-static {p1, v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimarket://details/detailmini?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&overlayStyle=normal"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p2, p1}, Lio/branch/search/BranchLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    :goto_0
    return-void
.end method

.method public setupAutoSuggestView(Landroid/view/View;ZLjava/lang/String;Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V
    .locals 2

    .line 163
    sget v0, Lcom/mi/globallauncher/R$id;->suggest_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    sget p3, Lcom/mi/globallauncher/R$id;->suggest_group:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/mi/globallauncher/view/ReversibleTagGroup;

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/mi/globallauncher/R$color;->alpha60black:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/mi/globallauncher/R$color;->alpha60white:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :goto_0
    sget-boolean p1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mNeedToRefreshAutoSuggest:Z

    if-eqz p1, :cond_1

    .line 176
    sget-object p1, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->mAutoSuggestList:Ljava/util/List;

    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags(Ljava/util/List;)V

    .line 178
    :cond_1
    new-instance p1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$RgOa-GR89_KxQCed51GIGqAASRc;

    invoke-direct {p1, p4}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$RgOa-GR89_KxQCed51GIGqAASRc;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setOnTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    return-void
.end method

.method public setupBranchItemView(Landroid/view/View;ZLio/branch/search/BranchLinkResult;ILandroid/view/View$OnClickListener;Z)V
    .locals 13

    move-object v0, p1

    .line 82
    sget v1, Lcom/mi/globallauncher/R$id;->branch_item_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 83
    sget v2, Lcom/mi/globallauncher/R$id;->deep_link_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    sget v3, Lcom/mi/globallauncher/R$id;->text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    sget v4, Lcom/mi/globallauncher/R$id;->desc:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    sget v5, Lcom/mi/globallauncher/R$id;->source_app_icon:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 87
    invoke-virtual/range {p3 .. p3}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Lio/branch/search/BranchLinkResult;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7, v6}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v6

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41500000    # 13.0f

    packed-switch p4, :pswitch_data_0

    if-eqz p2, :cond_3

    .line 112
    sget v8, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    goto :goto_3

    :pswitch_0
    if-eqz p2, :cond_0

    .line 106
    sget v10, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_top_radius:I

    goto :goto_0

    :cond_0
    sget v10, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_top_radius_dark:I

    .line 107
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v9

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v8

    goto :goto_4

    :pswitch_1
    if-eqz p2, :cond_1

    .line 101
    sget v10, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_bottom_radius:I

    goto :goto_1

    :cond_1
    sget v10, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_bottom_radius_dark:I

    .line 102
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v8

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v9

    move v12, v9

    move v9, v8

    move v8, v12

    goto :goto_4

    :pswitch_2
    if-eqz p2, :cond_2

    .line 96
    sget v9, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_no_radius:I

    goto :goto_2

    :cond_2
    sget v9, Lcom/mi/globallauncher/R$drawable;->branch_item_bg_no_radius_dark:I

    :goto_2
    move v10, v9

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v9

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v8

    goto :goto_4

    .line 112
    :cond_3
    sget v8, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    :goto_3
    move v10, v8

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v9

    move v12, v9

    move v9, v8

    move v8, v12

    .line 117
    :goto_4
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {v1, v6, v9, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    sget v6, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    .line 121
    invoke-virtual {v1, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v6, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v6}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    .line 122
    invoke-virtual {v1, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 124
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/BranchLinkResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    .line 125
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v2}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    .line 126
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 133
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :goto_5
    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v1, p1, v2, v3}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchResultUtils$kvHMZrA3t_taO95uqqRMozilhis;-><init>(Landroid/view/View;Lio/branch/search/BranchLinkResult;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupBranchSearchResultDivider(Landroid/view/View;Z)V
    .locals 5

    .line 187
    sget v0, Lcom/mi/globallauncher/R$id;->divider_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 188
    sget v1, Lcom/mi/globallauncher/R$id;->start_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    sget v2, Lcom/mi/globallauncher/R$id;->divider_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    sget v3, Lcom/mi/globallauncher/R$id;->end_divider:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v4, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha10black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha10black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->alpha40black:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v4, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha20white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/mi/globallauncher/R$color;->alpha20white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mi/globallauncher/R$color;->alpha40white:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
