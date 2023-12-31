.class Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BranchLocalSearchGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BranchGridViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field context:Landroid/content/Context;

.field imageView:Lcom/mi/globallauncher/view/CircleImageView;

.field itemView:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    .line 78
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    iput-object p2, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->itemView:Landroid/view/View;

    .line 80
    sget p1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 81
    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/view/CircleImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->imageView:Lcom/mi/globallauncher/view/CircleImageView;

    .line 82
    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateView$0$BranchLocalSearchGridAdapter$BranchGridViewHolder(Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x5

    .line 100
    invoke-static {p2}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    .line 101
    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {p2}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 102
    invoke-static {p2}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchLocalLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method

.method public updateView(Lio/branch/search/BranchLocalLinkResult;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->imageView:Lcom/mi/globallauncher/view/CircleImageView;

    iget-object v1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/CircleImageView;->isInstalled(Z)V

    .line 92
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->imageView:Lcom/mi/globallauncher/view/CircleImageView;

    invoke-virtual {p1, v0}, Lio/branch/search/BranchLocalLinkResult;->loadImageDrawable(Landroid/widget/ImageView;)V

    .line 93
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$200(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;-><init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLocalLinkResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method
