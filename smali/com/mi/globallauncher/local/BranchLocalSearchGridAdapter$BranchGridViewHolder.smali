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

.field imageView:Lcom/mi/globallauncher/view/RoundImageView;

.field itemView:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    iput-object p2, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->itemView:Landroid/view/View;

    .line 77
    sget p1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 78
    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/view/RoundImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->imageView:Lcom/mi/globallauncher/view/RoundImageView;

    .line 79
    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$updateView$0(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lio/branch/search/BranchLocalLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    return-void
.end method


# virtual methods
.method public updateView(Lio/branch/search/BranchLocalLinkResult;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->imageView:Lcom/mi/globallauncher/view/RoundImageView;

    invoke-virtual {p1, v0}, Lio/branch/search/BranchLocalLinkResult;->loadImageDrawable(Landroid/widget/ImageView;)V

    .line 89
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;-><init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLocalLinkResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
