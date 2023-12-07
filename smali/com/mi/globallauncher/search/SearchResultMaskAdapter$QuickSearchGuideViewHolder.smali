.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;


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

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_guide_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    sget p1, Lcom/mi/globallauncher/R$id;->quick_search_close_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    sget p1, Lcom/mi/globallauncher/R$id;->guide_all_apps_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsContainer:Landroid/widget/RelativeLayout;

    sget p1, Lcom/mi/globallauncher/R$id;->guide_quick_search_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchContainer:Landroid/widget/RelativeLayout;

    sget p1, Lcom/mi/globallauncher/R$id;->checkbox_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    sget p1, Lcom/mi/globallauncher/R$id;->checkbox_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    sget p1, Lcom/mi/globallauncher/R$id;->guide_image_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    sget p1, Lcom/mi/globallauncher/R$id;->guide_image_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    sget p1, Lcom/mi/globallauncher/R$id;->title_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    sget p1, Lcom/mi/globallauncher/R$id;->title_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    sget p1, Lcom/mi/globallauncher/R$id;->desc_all_apps:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    sget p1, Lcom/mi/globallauncher/R$id;->desc_quick_search:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    sget p1, Lcom/mi/globallauncher/R$id;->search_guide_ok_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->okBtn:Landroid/widget/TextView;

    return-void
.end method

.method private removeViewHolder(I)V
    .locals 1

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

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldQuickSearchGuideShow(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateView$0$SearchResultMaskAdapter$QuickSearchGuideViewHolder(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic lambda$updateView$1$SearchResultMaskAdapter$QuickSearchGuideViewHolder(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic lambda$updateView$2$SearchResultMaskAdapter$QuickSearchGuideViewHolder(ILandroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->removeViewHolder(I)V

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-interface {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;->onGuideOpen(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateView$3$SearchResultMaskAdapter$QuickSearchGuideViewHolder(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->removeViewHolder(I)V

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;->onGuideClose()V

    :cond_0
    return-void
.end method

.method updateView(I)V
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->search_guide_desc_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->search_guide_desc_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_all_apps:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_quick_search:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->guideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_close_btn_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/mi/globallauncher/R$drawable;->search_guide_checkbox_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_all_apps_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchImage:Landroid/widget/ImageView;

    sget v1, Lcom/mi/globallauncher/R$drawable;->guide_quick_search_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->allAppsContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ru_szDfemZCEliIfzOCdqQJ7rPc;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ru_szDfemZCEliIfzOCdqQJ7rPc;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->quickSearchContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ayl_-eG2t3Am6JD9dNInC417ZUI;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$ayl_-eG2t3Am6JD9dNInC417ZUI;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->okBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$BlsPL8R-c7MFvL9T2f6JwHMlMS8;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$BlsPL8R-c7MFvL9T2f6JwHMlMS8;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$wVuXUopAg_zAgbozy2ok3aqubKI;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$QuickSearchGuideViewHolder$wVuXUopAg_zAgbozy2ok3aqubKI;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$QuickSearchGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setQuickSearchGuideShowTime(J)V

    return-void
.end method
