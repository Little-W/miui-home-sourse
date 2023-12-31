.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZeroStateShortcutViewHolder"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

.field zeroStateDesc:Landroid/widget/TextView;

.field zeroStateIcon:Landroid/widget/ImageView;

.field zeroStateSecondIcon:Landroid/widget/ImageView;

.field zeroStateTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 505
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 506
    iput-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    .line 507
    sget p1, Lcom/mi/globallauncher/R$id;->zero_state_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateIcon:Landroid/widget/ImageView;

    .line 508
    sget p1, Lcom/mi/globallauncher/R$id;->text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateTitle:Landroid/widget/TextView;

    .line 509
    sget p1, Lcom/mi/globallauncher/R$id;->desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    .line 510
    sget p1, Lcom/mi/globallauncher/R$id;->second_app_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateSecondIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateView$0$SearchResultMaskAdapter$ZeroStateShortcutViewHolder(Lio/branch/search/ui/BranchEntity;Landroid/view/View;)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/branch/search/ui/BranchEntity;->open(Landroid/content/Context;)Lio/branch/search/BranchError;

    return-void
.end method

.method updateView(I)V
    .locals 4

    if-ltz p1, :cond_3

    .line 515
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/ui/BranchEntity;

    .line 517
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :goto_0
    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lio/branch/search/ui/ImageLoadingStrategy;->load(Landroid/widget/ImageView;)V

    .line 525
    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    invoke-interface {p1}, Lio/branch/search/ui/BranchEntity;->getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v0

    iget-object v2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lio/branch/search/ui/ImageLoadingStrategy;->load(Landroid/widget/ImageView;)V

    .line 527
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    :goto_1
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha90white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->zeroStateDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    :goto_2
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;->container:Landroid/view/View;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$ZeroStateShortcutViewHolder$mKN3mZ81JL3keInXdwfVk8hOOKg;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$ZeroStateShortcutViewHolder$mKN3mZ81JL3keInXdwfVk8hOOKg;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ZeroStateShortcutViewHolder;Lio/branch/search/ui/BranchEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
