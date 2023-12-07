.class public Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;
.super Ljava/lang/Object;
.source "MiuiRecommendApp.java"


# instance fields
.field private mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

.field private mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;->mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    .line 14
    new-instance v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;->mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    return-void
.end method


# virtual methods
.method public getRecommendApps(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 21
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->isNewInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;->mLaunchCountComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/recommend/MiuiRecommendApp;->mNewInstallComparator:Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x2

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int p0, p2, p0

    move p1, p0

    :goto_1
    if-ge p1, p2, :cond_2

    sub-int v2, p1, p0

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
