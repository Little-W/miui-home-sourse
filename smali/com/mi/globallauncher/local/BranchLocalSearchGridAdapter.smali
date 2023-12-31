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

.field private installed:Z

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

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->installed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->mIsInLightMode:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 57
    check-cast p1, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->updateView(Lio/branch/search/BranchLocalLinkResult;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 52
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

    .line 46
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setList(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;IZ)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 39
    iput-boolean p3, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->installed:Z

    .line 40
    iget-object p3, p0, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->list:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
