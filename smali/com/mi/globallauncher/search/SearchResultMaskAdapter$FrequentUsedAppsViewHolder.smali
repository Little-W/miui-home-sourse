.class Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrequentUsedAppsViewHolder"
.end annotation


# instance fields
.field frequentContainer:Landroid/widget/LinearLayout;

.field frequentGrid1:Landroid/widget/GridView;

.field frequentGrid2:Landroid/widget/GridView;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 358
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 359
    sget p1, Lcom/mi/globallauncher/R$id;->frequent_apps_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentContainer:Landroid/widget/LinearLayout;

    .line 360
    sget p1, Lcom/mi/globallauncher/R$id;->frequent_apps_grid1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid1:Landroid/widget/GridView;

    .line 361
    sget p1, Lcom/mi/globallauncher/R$id;->frequent_apps_grid2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid2:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method updateView(I)V
    .locals 3

    .line 366
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 368
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid2:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 370
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid1:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid2:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/mi/globallauncher/R$drawable;->branch_item_card_bg_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    new-instance p1, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;-><init>(Landroid/content/Context;)V

    .line 379
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setFrequentUsedApps(Ljava/util/List;I)V

    .line 380
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setScale(F)V

    .line 381
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setIsInLightMode(Z)V

    .line 383
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid1:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->notifyDataSetChanged()V

    .line 386
    new-instance p1, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;-><init>(Landroid/content/Context;)V

    .line 387
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1000(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$900(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setFrequentUsedApps(Ljava/util/List;I)V

    .line 388
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setScale(F)V

    .line 389
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$1200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->setIsInLightMode(Z)V

    .line 391
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentGrid2:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$FrequentUsedAppsViewHolder;->frequentContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
