.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickSearchGuideViewHolder"
.end annotation


# instance fields
.field allAppsCheckBox:Landroid/widget/CheckBox;

.field allAppsContainer:Landroid/widget/RelativeLayout;

.field allAppsDesc:Landroid/widget/TextView;

.field allAppsImage:Landroid/widget/ImageView;

.field allAppsTitle:Landroid/widget/TextView;

.field closeBtn:Landroid/widget/ImageView;

.field container:Landroid/widget/RelativeLayout;

.field guideTitle:Landroid/widget/TextView;

.field okBtn:Landroid/widget/TextView;

.field quickSearchCheckBox:Landroid/widget/CheckBox;

.field quickSearchContainer:Landroid/widget/RelativeLayout;

.field quickSearchDesc:Landroid/widget/TextView;

.field quickSearchImage:Landroid/widget/ImageView;

.field quickSearchTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 416
    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_guide_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 417
    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    .line 418
    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_close_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    .line 419
    sget p1, Lcom/mi/globallauncher/R$id;->guide_all_apps_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsContainer:Landroid/widget/RelativeLayout;

    .line 420
    sget p1, Lcom/mi/globallauncher/R$id;->guide_quick_search_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchContainer:Landroid/widget/RelativeLayout;

    .line 421
    sget p1, Lcom/mi/globallauncher/R$id;->checkbox_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    .line 422
    sget p1, Lcom/mi/globallauncher/R$id;->checkbox_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    .line 423
    sget p1, Lcom/mi/globallauncher/R$id;->guide_image_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    .line 424
    sget p1, Lcom/mi/globallauncher/R$id;->guide_image_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    .line 425
    sget p1, Lcom/mi/globallauncher/R$id;->title_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    .line 426
    sget p1, Lcom/mi/globallauncher/R$id;->title_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    .line 427
    sget p1, Lcom/mi/globallauncher/R$id;->desc_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    .line 428
    sget p1, Lcom/mi/globallauncher/R$id;->desc_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    .line 429
    sget p1, Lcom/mi/globallauncher/R$id;->search_guide_ok_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->okBtn:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic lambda$updateView$0(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;Landroid/view/View;)V
    .locals 1

    .line 460
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 461
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$updateView$1(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;Landroid/view/View;)V
    .locals 1

    .line 464
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$updateView$2(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;ILandroid/view/View;)V
    .locals 2

    .line 468
    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 469
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    goto :goto_0

    .line 471
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    .line 473
    :goto_0
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->removeViewHolder(I)V

    .line 474
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 475
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-interface {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;->onGuideOpen(I)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$updateView$3(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->removeViewHolder(I)V

    .line 480
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;->onGuideClose()V

    :cond_0
    return-void
.end method

.method private removeViewHolder(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 490
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    .line 491
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldQuickSearchGuideShow(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method updateView(I)V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->search_guide_desc_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->search_guide_desc_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 443
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 444
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_all_apps:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_quick_search:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 448
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 455
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 456
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_all_apps_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_quick_search_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ru_szDfemZCEliIfzOCdqQJ7rPc;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ru_szDfemZCEliIfzOCdqQJ7rPc;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ayl_-eG2t3Am6JD9dNInC417ZUI;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ayl_-eG2t3Am6JD9dNInC417ZUI;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->okBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$BlsPL8R-c7MFvL9T2f6JwHMlMS8;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$BlsPL8R-c7MFvL9T2f6JwHMlMS8;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$wVuXUopAg_zAgbozy2ok3aqubKI;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$wVuXUopAg_zAgbozy2ok3aqubKI;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setQuickSearchGuideShowTime(J)V

    return-void
.end method
