.class public Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FrequentUsedAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

.field private mContext:Landroid/content/Context;

.field private mFrequentUsedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/local/FrequentUsedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInLightMode:Z

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mScale:F

    .line 29
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mIsInLightMode:Z

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/mi/globallauncher/R$layout;->all_apps_search_recommend_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance p3, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;-><init>(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;Landroid/view/View;)V

    .line 74
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->updateView(I)V

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;

    .line 78
    invoke-virtual {p3, p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->updateView(I)V

    .line 80
    :goto_0
    new-instance v0, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;

    invoke-direct {v0, p0, p1, p3}, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$iLdYdiXu3CtgEPMmMfShFNrRLDU;-><init>(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;ILcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance p1, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$G_Ups0BXSJeoDiwk3j1Yruc3pn8;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/local/-$$Lambda$FrequentUsedAppsGridAdapter$G_Ups0BXSJeoDiwk3j1Yruc3pn8;-><init>(Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getView$0$FrequentUsedAppsGridAdapter(ILcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    sget v1, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;->onAppClick(Landroid/view/View;)V

    .line 82
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;->setNewInstall(Z)V

    .line 83
    invoke-virtual {p2, p1}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter$ViewHolder;->updateView(I)V

    return-void
.end method

.method public synthetic lambda$getView$1$FrequentUsedAppsGridAdapter(Landroid/view/View;)Z
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    sget v0, Lcom/mi/globallauncher/R$id;->item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;->onAppLongClick(Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mAppClickListener:Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;

    return-void
.end method

.method public setFrequentUsedApps(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/local/FrequentUsedAppInfo;",
            ">;I)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 36
    iget-object v0, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mFrequentUsedAppList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIsInLightMode(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mIsInLightMode:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mi/globallauncher/local/FrequentUsedAppsGridAdapter;->mScale:F

    return-void
.end method
