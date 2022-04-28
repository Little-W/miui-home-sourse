.class public Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;
.super Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
.source "LdsBranchSearchResultViewHolder.java"


# instance fields
.field appDes:Landroid/widget/TextView;

.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field appNameCenter:Landroid/widget/TextView;

.field appTitleContainer:Landroid/widget/RelativeLayout;

.field container:Landroid/widget/RelativeLayout;

.field gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field installState:Landroid/widget/TextView;

.field linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

.field mContext:Landroid/content/Context;

.field remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

.field showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f0a01f6

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01f2

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a012a

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0169

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02aa

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a02ac

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    const v0, 0x7f0a02ab

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    const v0, 0x7f0a02ae

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    .line 59
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 60
    new-instance p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    .line 61
    new-instance p1, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    .line 62
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 64
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-void
.end method

.method public static synthetic lambda$updateLocalBranchView$0(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLocalAppResult;Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V
    .locals 1

    if-eqz p5, :cond_0

    const p5, 0x7f060061

    .line 152
    invoke-static {p6, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-static {p6, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060050

    .line 154
    invoke-static {p6, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-static {p6, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p5, 0x7f060062

    .line 157
    invoke-static {p6, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-static {p6, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060051

    .line 159
    invoke-static {p6, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-static {p6, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private setUpRvAdapterData(Lio/branch/search/BranchAppResult;ZZ)V
    .locals 6

    .line 87
    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLinkResult;

    .line 90
    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;

    invoke-direct {v4, p0, v2}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;-><init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLinkResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 98
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 99
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {v2}, Lio/branch/search/BranchLinkResult;->getDescription()Ljava/lang/String;

    move-result-object p2

    .line 103
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {v4, p3}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setIsInLightMode(Z)V

    .line 107
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 108
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "App"

    .line 112
    invoke-virtual {v2}, Lio/branch/search/BranchLinkResult;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 116
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    const/4 p3, 0x4

    invoke-virtual {p1, v0, p3, p2}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setList(Ljava/util/List;IZ)V

    goto :goto_2

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setEmptyList()V

    .line 125
    :goto_2
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V
    .locals 4

    const/high16 v0, 0x41400000    # 12.0f

    .line 165
    invoke-static {v0, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    .line 166
    invoke-static {v0, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41500000    # 13.0f

    packed-switch p4, :pswitch_data_0

    if-eqz p3, :cond_3

    const p3, 0x7f0800d8

    goto :goto_3

    :pswitch_0
    if-eqz p3, :cond_0

    const p3, 0x7f0800d6

    goto :goto_0

    :cond_0
    const p3, 0x7f0800d7

    .line 183
    :goto_0
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    .line 184
    invoke-static {v2, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    goto :goto_4

    :pswitch_1
    if-eqz p3, :cond_1

    const p3, 0x7f0800d2

    goto :goto_1

    :cond_1
    const p3, 0x7f0800d3

    .line 178
    :goto_1
    invoke-static {v2, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    .line 179
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    goto :goto_4

    :pswitch_2
    if-eqz p3, :cond_2

    const p3, 0x7f0800d4

    goto :goto_2

    :cond_2
    const p3, 0x7f0800d5

    .line 173
    :goto_2
    invoke-static {v2, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    .line 174
    invoke-static {v2, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    goto :goto_4

    :cond_3
    const p3, 0x7f0800d9

    .line 189
    :goto_3
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    .line 190
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    .line 193
    :goto_4
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {p1, v1, p4, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 195
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public updateLocalBranchView(ZLio/branch/search/BranchLocalAppResult;I)V
    .locals 9

    .line 132
    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V

    .line 135
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lio/branch/search/BranchLocalAppResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lio/branch/search/BranchLocalAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    .line 137
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;

    invoke-direct {v0, p0, p2}, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;-><init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLocalAppResult;)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p2}, Lio/branch/search/BranchLocalAppResult;->getLinks()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 140
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setIsInLightMode(Z)V

    .line 141
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setList(Ljava/util/List;I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setEmptyList()V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updateView(ZLio/branch/search/BranchAppResult;IZ)V
    .locals 7

    .line 71
    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V

    .line 73
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lio/branch/search/BranchAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p3

    invoke-virtual {p2}, Lio/branch/search/BranchAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    const v0, 0x7f080533

    .line 79
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    new-instance v0, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v0}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    .line 80
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 82
    invoke-direct {p0, p2, p4, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setUpRvAdapterData(Lio/branch/search/BranchAppResult;ZZ)V

    return-void
.end method
