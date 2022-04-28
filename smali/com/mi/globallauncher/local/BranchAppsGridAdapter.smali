.class public Lcom/mi/globallauncher/local/BranchAppsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "BranchAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BranchAppsGridAdapter"


# instance fields
.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsInLightMode:Z

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mScale:F

    .line 32
    iput-object p1, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/local/BranchAppsGridAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/local/BranchAppsGridAdapter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mIsInLightMode:Z

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_lds_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance p3, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/local/BranchAppsGridAdapter;Landroid/view/View;)V

    .line 73
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;->updateView(I)V

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;

    .line 77
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;->updateView(I)V

    :goto_0
    return-object p2
.end method

.method public setFrequentUsedApps(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;I)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

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
    iget-object v0, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->links:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/mi/globallauncher/local/BranchAppsGridAdapter;->mScale:F

    return-void
.end method
