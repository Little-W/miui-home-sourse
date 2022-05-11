.class public Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;
.super Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;
.source "SearchResultMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/search/SearchResultMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionGuideViewHolder"
.end annotation


# instance fields
.field btnClose:Landroid/widget/TextView;

.field permissionButton:Landroid/widget/TextView;

.field permissionGuideContent:Landroid/widget/TextView;

.field permissionGuideTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Landroid/view/View;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;Lcom/mi/globallauncher/search/SearchResultMaskAdapter$1;)V

    .line 224
    sget p1, Lcom/mi/globallauncher/R$id;->permission_guide_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideTitle:Landroid/widget/TextView;

    .line 225
    sget p1, Lcom/mi/globallauncher/R$id;->permission_guide_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideContent:Landroid/widget/TextView;

    .line 226
    sget p1, Lcom/mi/globallauncher/R$id;->btn_request_permission:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionButton:Landroid/widget/TextView;

    .line 227
    sget p1, Lcom/mi/globallauncher/R$id;->btn_close:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->btnClose:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic lambda$updateView$0(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->onPermissionBtnClicked(I)V

    return-void
.end method

.method public static synthetic lambda$updateView$1(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->onCloseBtnClicked(I)V

    return-void
.end method

.method private onCloseBtnClicked(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    .line 273
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMaskViewPermissionButtonClicked()V

    .line 275
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    move-result-object p1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isUniSearchPermissionButtonClicked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;->onCloseButtonClick(Z)V

    :cond_1
    return-void
.end method

.method private onPermissionBtnClicked(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->notifyDataSetChanged()V

    .line 259
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setMaskViewPermissionButtonClicked()V

    .line 260
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;->onPermissionShow()V

    .line 262
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$400(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;

    move-result-object p1

    .line 263
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "uni_search_permission_button_clicked"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    .line 262
    invoke-interface {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskPermissionListener;->onPermissionButtonClick(Z)V

    :cond_1
    return-void
.end method

.method private updateTextColorAndContent()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideTitle:Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$string;->request_permission_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideContent:Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$string;->request_permission_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionButton:Landroid/widget/TextView;

    sget v1, Lcom/mi/globallauncher/R$string;->btn_request_permission:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha80black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->btnClose:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha30black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionGuideContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha80white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->btnClose:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mi/globallauncher/R$color;->alpha30white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method updateView(I)V
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->updateTextColorAndContent()V

    .line 233
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->permissionButton:Landroid/widget/TextView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$PermissionGuideViewHolder$NVPsS2EWDnuf-cPmz0EMKW9FaIA;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$PermissionGuideViewHolder$NVPsS2EWDnuf-cPmz0EMKW9FaIA;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;->btnClose:Landroid/widget/TextView;

    new-instance v1, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$PermissionGuideViewHolder$r-an8oth-c76lrZdkIjb3vypV38;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/search/-$$Lambda$SearchResultMaskAdapter$PermissionGuideViewHolder$r-an8oth-c76lrZdkIjb3vypV38;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskAdapter$PermissionGuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
