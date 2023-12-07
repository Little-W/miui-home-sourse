.class public Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;,
        Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final GRID:I = 0x0

.field private static final LINEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BranchLinearAndGridAdapter"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isContentSearch:Z

.field private isInstalled:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsInLightMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->mIsInLightMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->isInstalled:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->isContentSearch:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    instance-of v0, p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->updateView(Lio/branch/search/BranchLinkResult;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->updateView(Lio/branch/search/BranchLinkResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/mi/globallauncher/R$layout;->branch_search_linear:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;-><init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/mi/globallauncher/R$layout;->all_apps_search_lds_item:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;-><init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;Landroid/view/View;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public setEmptyList()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setList(Ljava/util/List;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;IZZ)V"
        }
    .end annotation

    iput-boolean p3, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->isContentSearch:Z

    iput-boolean p4, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->isInstalled:Z

    iget-object p3, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->list:Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p1, p4, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
