.class public Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BranchLocalSearchGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;
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
.field private static final TAG:Ljava/lang/String; = "BranchLocalSearchGridAdapter"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInLightMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->mIsInLightMode:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 54
    check-cast p1, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->updateView(Lio/branch/search/BranchLocalLinkResult;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 49
    new-instance p1, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/mi/globallauncher/R$layout;->local_shortcut_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;-><init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setEmptyList()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;I)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 37
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
