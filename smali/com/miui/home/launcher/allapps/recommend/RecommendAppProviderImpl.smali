.class public Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;
.super Ljava/lang/Object;
.source "RecommendAppProviderImpl.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;


# instance fields
.field private mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

.field private mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;->mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    .line 12
    new-instance v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;->mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    return-void
.end method


# virtual methods
.method public getRecommendApps(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 21
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->isNewInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;->mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;->mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x2

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int p1, v0, p1

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_2

    sub-int v4, v3, p1

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
