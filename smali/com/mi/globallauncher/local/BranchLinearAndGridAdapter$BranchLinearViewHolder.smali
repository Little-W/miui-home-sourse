.class Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BranchLinearAndGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BranchLinearViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field content:Landroid/widget/TextView;

.field context:Landroid/content/Context;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    .line 154
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 155
    sget p1, Lcom/mi/globallauncher/R$id;->rv_branch_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 156
    sget p1, Lcom/mi/globallauncher/R$id;->iv_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->icon:Landroid/widget/ImageView;

    .line 157
    sget p1, Lcom/mi/globallauncher/R$id;->tv_app_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->content:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateView$0$BranchLinearAndGridAdapter$BranchLinearViewHolder(Lio/branch/search/BranchLinkResult;Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p2

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    invoke-interface {p2, p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V

    return-void
.end method

.method public updateView(Lio/branch/search/BranchLinkResult;)V
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BranchLinearViewHolder updateView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchLinearAndGridAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/globallauncher/util/CommercialUtils;->isActivityDestroy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;

    invoke-direct {v2, p0, p1}, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;-><init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;Lio/branch/search/BranchLinkResult;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView: linkResult.getImageUrl()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    .line 172
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    const/high16 v2, 0x41d00000    # 26.0f

    .line 173
    invoke-static {v2, v1}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/util/RoundTransform;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Lcom/mi/globallauncher/util/RoundTransform;-><init>(F)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->icon:Landroid/widget/ImageView;

    .line 176
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 177
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/branch/search/BranchLinkResult;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->this$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->access$100(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->content:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->content:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method
