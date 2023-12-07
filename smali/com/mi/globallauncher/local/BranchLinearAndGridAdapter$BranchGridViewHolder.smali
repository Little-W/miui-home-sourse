.class Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


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

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->imageView:Landroid/widget/ImageView;

    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateView$0$BranchLinearAndGridAdapter$BranchGridViewHolder(Lio/branch/search/BranchLinkResult;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {p2}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$200(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    invoke-static {p2}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-interface {p2, p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V

    return-void
.end method

.method public updateView(Lio/branch/search/BranchLinkResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BranchGridViewHolder updateView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchLinearAndGridAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;-><init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLinkResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v1}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method
