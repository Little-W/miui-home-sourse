.class Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BranchLinearAndGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BranchGridViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field context:Landroid/content/Context;

.field imageView:Landroid/widget/ImageView;

.field itemView:Landroid/view/View;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    iput-object p2, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->itemView:Landroid/view/View;

    .line 109
    sget p1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 110
    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->imageView:Landroid/widget/ImageView;

    .line 111
    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$updateView$0(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLinkResult;Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V

    return-void
.end method


# virtual methods
.method public updateView(Lio/branch/search/BranchLinkResult;)V
    .locals 3

    const-string v0, "BranchLinearAndGridAdapter"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BranchGridViewHolder updateView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;-><init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLinkResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v1}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->imageView:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 129
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    sget v1, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
