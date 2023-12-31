.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecommendAppsViewHolder"
.end annotation


# instance fields
.field recommendContainer:Landroid/widget/LinearLayout;

.field recommendLine1:Landroid/widget/GridView;

.field recommendLine2:Landroid/widget/GridView;

.field recommendTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 328
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 329
    sget p1, Lcom/mi/globallauncher/R$id;->recommend_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendContainer:Landroid/widget/LinearLayout;

    .line 330
    sget p1, Lcom/mi/globallauncher/R$id;->recommend_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendTitle:Landroid/widget/TextView;

    .line 331
    sget p1, Lcom/mi/globallauncher/R$id;->recommend_line_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendLine1:Landroid/widget/GridView;

    .line 332
    sget p1, Lcom/mi/globallauncher/R$id;->recommend_line_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendLine2:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method updateView(I)V
    .locals 2

    .line 337
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendTitle:Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendTitle:Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    :goto_0
    new-instance p1, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;-><init>(Landroid/content/Context;)V

    .line 347
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$700(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->setRecommendGameItems(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$800(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->setGameClickListener(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;)V

    .line 350
    iget-object p0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$RecommendAppsViewHolder;->recommendLine1:Landroid/widget/GridView;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
