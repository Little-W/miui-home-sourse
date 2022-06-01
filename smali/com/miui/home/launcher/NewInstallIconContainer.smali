.class public interface abstract Lcom/miui/home/launcher/NewInstallIconContainer;
.super Ljava/lang/Object;
.source "NewInstallIconContainer.java"


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    return-void
.end method

.method public getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/NewInstallAppIcon;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-interface {p0}, Lcom/miui/home/launcher/NewInstallIconContainer;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 28
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 29
    instance-of v5, v4, Lcom/miui/home/launcher/NewInstallAppIcon;

    if-eqz v5, :cond_0

    const-string v5, "com.xiaomi.market"

    check-cast v4, Lcom/miui/home/launcher/NewInstallAppIcon;

    .line 30
    invoke-interface {v4}, Lcom/miui/home/launcher/NewInstallAppIcon;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    invoke-interface {v4}, Lcom/miui/home/launcher/NewInstallAppIcon;->isNewInstalled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public abstract getContainerView()Landroid/view/ViewGroup;
.end method

.method public abstract hasNewInstallApps()Z
.end method
