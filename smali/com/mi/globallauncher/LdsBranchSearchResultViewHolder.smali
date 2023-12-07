.class public Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;
.super Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;


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

.field linksTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

.field mContext:Landroid/content/Context;

.field remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

.field showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f0a02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a03ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a03b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    const v0, 0x7f0a03ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    const v0, 0x7f0a03b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    new-instance p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    new-instance p1, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    return-void
.end method

.method private installedVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V
    .locals 0

    if-eqz p5, :cond_0

    const p0, 0x7f060054

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f060049

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f060055

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f06004a

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p6, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private setUpRvAdapterData(Lio/branch/search/BranchAppResult;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;-><init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Ljava/lang/String;Lio/branch/search/BranchLinkResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lio/branch/search/BranchLinkResult;->getDescription()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {v4, p3}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setIsInLightMode(Z)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchAppResult;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lio/branch/search/BranchLinkResult;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "App"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_1
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->linksTmp:Ljava/util/List;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setList(Ljava/util/List;IZZ)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->setEmptyList()V

    :goto_2
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->remoteResultAdapter:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V
    .locals 4

    const/high16 p0, 0x41400000    # 12.0f

    invoke-static {p0, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v0

    invoke-static {p0, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p0

    const/high16 v1, 0x40a00000    # 5.0f

    if-eqz p4, :cond_5

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    if-eq p4, v2, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_1

    if-eqz p3, :cond_0

    const p3, 0x7f0801c0

    goto :goto_0

    :cond_0
    const p3, 0x7f0801c1

    :goto_0
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    goto :goto_4

    :cond_1
    if-eqz p3, :cond_2

    const p3, 0x7f0801be

    goto :goto_1

    :cond_2
    const p3, 0x7f0801bf

    :goto_1
    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    invoke-static {v1, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    goto :goto_4

    :cond_3
    if-eqz p3, :cond_4

    const p3, 0x7f0801ba

    goto :goto_2

    :cond_4
    const p3, 0x7f0801bb

    :goto_2
    invoke-static {v1, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    invoke-static {v3, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    goto :goto_4

    :cond_5
    if-eqz p3, :cond_6

    const p3, 0x7f0801bc

    goto :goto_3

    :cond_6
    const p3, 0x7f0801bd

    :goto_3
    invoke-static {v1, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result p4

    invoke-static {v1, p2}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    :goto_4
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, p4, p0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateLocalBranchView$0$LdsBranchSearchResultViewHolder(Ljava/lang/String;Lio/branch/search/BranchLocalAppResult;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackGpOrGetApps(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    iget-object p0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method public updateLocalBranchView(ZLio/branch/search/BranchLocalAppResult;I)V
    .locals 9

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V

    invoke-virtual {p2}, Lio/branch/search/BranchLocalAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installedVisibility(Z)V

    iget-object v2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3, p1, p3}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lio/branch/search/BranchLocalAppResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lio/branch/search/BranchLocalAppResult;->loadIconDrawable(Landroid/widget/ImageView;)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appTitleContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;

    invoke-direct {v2, p0, v0, p2}, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;-><init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Ljava/lang/String;Lio/branch/search/BranchLocalAppResult;)V

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lio/branch/search/BranchLocalAppResult;->getLinks()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setIsInLightMode(Z)V

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3, v1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setList(Ljava/util/List;IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->setEmptyList()V

    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->showSearchBranch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->localResultAdapter:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updateView(ZLio/branch/search/BranchAppResult;IZ)V
    .locals 7

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appDes:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appNameCenter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installState:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setTextColor(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setupContainerBg(Landroid/widget/RelativeLayout;Landroid/content/Context;ZI)V

    iget-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lio/branch/search/BranchAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->installedVisibility(Z)V

    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p3

    invoke-virtual {p2}, Lio/branch/search/BranchAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    const v0, 0x7f080682

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    new-instance v0, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v0}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    invoke-direct {p0, p2, p4, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setUpRvAdapterData(Lio/branch/search/BranchAppResult;ZZ)V

    return-void
.end method
