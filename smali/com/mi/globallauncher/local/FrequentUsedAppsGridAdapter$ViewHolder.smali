.class Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FrequentUsedAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget p1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 98
    sget p1, Lcom/mi/globallauncher/R$id;->item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 99
    sget p1, Lcom/mi/globallauncher/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mi/globallauncher/util/CommercialUtils;->getNoWordState(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public updateView(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$000(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$000(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$000(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;

    .line 108
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$dimen;->dp60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 109
    iget-object v1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$100(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 110
    iget-object v1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object v1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 113
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->getOriginalData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->isNewInstall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$200(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$drawable;->new_install_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->this$0:Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->access$300(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
