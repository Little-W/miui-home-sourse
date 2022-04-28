.class Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecommendGamesGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 109
    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public updateView(I)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;

    invoke-static {v0, p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->access$000(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;I)Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2, v1}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/globallauncher/util/DimenUtils;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$drawable;->place_holder:I

    .line 117
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/util/RoundTransform;

    invoke-direct {v1}, Lcom/mi/globallauncher/util/RoundTransform;-><init>()V

    .line 118
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 120
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
