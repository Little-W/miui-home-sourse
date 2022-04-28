.class public Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendGamesGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;,
        Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAllGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

.field private mGameIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mAllGameList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameIndexMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;I)Lcom/mi/globallauncher/advertise/data/RecommendGameItem;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->getRecommendGameWithPosition(I)Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    move-result-object p0

    return-object p0
.end method

.method private getRecommendGameWithPosition(I)Lcom/mi/globallauncher/advertise/data/RecommendGameItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$getView$0(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;ILandroid/view/View;)V
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->getRecommendGameWithPosition(I)Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getGameLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getGameLinkType()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;->onRecommendGameClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mAllGameList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object p2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->updateShowingGameList()V

    .line 91
    invoke-virtual {p0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateShowingGameList()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 41
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mAllGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    .line 42
    iget-object v2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;

    .line 48
    iget-object v2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

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

    .line 63
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mShowingGameList:Ljava/util/List;

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

    .line 75
    iget-object p2, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_recommend_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance p3, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;Landroid/view/View;)V

    .line 77
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->updateView(I)V

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;

    .line 81
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$ViewHolder;->updateView(I)V

    .line 83
    :goto_0
    new-instance p3, Lcom/mi/globallauncher/advertise/adapter/-$$Lambda$RecommendGamesGridAdapter$lwqHMmicaUsAiWOD5sH-tG0okJ4;

    invoke-direct {p3, p0, p1}, Lcom/mi/globallauncher/advertise/adapter/-$$Lambda$RecommendGamesGridAdapter$lwqHMmicaUsAiWOD5sH-tG0okJ4;-><init>(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setGameClickListener(Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mGameClickListener:Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter$RecommendGameClickListener;

    return-void
.end method

.method public setRecommendGameItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/advertise/data/RecommendGameItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->mAllGameList:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->updateShowingGameList()V

    .line 36
    invoke-virtual {p0}, Lcom/mi/globallauncher/advertise/adapter/RecommendGamesGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
