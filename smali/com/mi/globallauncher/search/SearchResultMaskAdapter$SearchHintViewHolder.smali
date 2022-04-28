.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchHintViewHolder"
.end annotation


# instance fields
.field searchHintTitle:Landroid/widget/TextView;

.field searchResultHintContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

.field uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 284
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 285
    sget p1, Lcom/mi/globallauncher/R$id;->search_result_hint:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchResultHintContainer:Landroid/widget/LinearLayout;

    .line 286
    sget p1, Lcom/mi/globallauncher/R$id;->uni_search_hint:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/view/ReversibleTagGroup;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    .line 287
    sget p1, Lcom/mi/globallauncher/R$id;->search_hint_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchHintTitle:Landroid/widget/TextView;

    return-void
.end method

.method private updateSearchResultHints()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchResultHintContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchHintTitle:Landroid/widget/TextView;

    sget v2, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    sget v2, Lcom/mi/globallauncher/R$color;->alpha60black:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchHintTitle:Landroid/widget/TextView;

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    sget v2, Lcom/mi/globallauncher/R$color;->dark_mode_bg_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setBackgroundColor(I)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$600(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$600(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    .line 311
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$600(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags(Ljava/util/List;)V

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags(Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->searchResultHintContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method updateView(I)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags(Ljava/util/List;)V

    .line 294
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->updateSearchResultHints()V

    .line 295
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->uniSearchHintGroup:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$SearchHintViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$500(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setOnTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V

    return-void
.end method
