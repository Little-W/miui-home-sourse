.class public final Lcom/miui/home/launcher/model/UpdateHiddenAppTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "UpdateHiddenAppTask.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateHiddenAppTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateHiddenAppTask.kt\ncom/miui/home/launcher/model/UpdateHiddenAppTask\n*L\n1#1,34:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 7

    .line 10
    sget-object p1, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/HideAppList$Companion;->getSHideAppList()Lcom/miui/home/launcher/HideAppList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/HideAppList;->getAllHiddenAppList()Ljava/util/HashSet;

    move-result-object p1

    .line 11
    sget-object p2, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HideAppList$Companion;->getSHideAppList()Lcom/miui/home/launcher/HideAppList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/HideAppList;->updateHiddenApp()V

    .line 12
    iget-object p2, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 13
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/bean/HideAppBean;

    .line 14
    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :cond_4
    :goto_3
    if-nez v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/bean/HideAppBean;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 22
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 25
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, v1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 28
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-nez v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 29
    :cond_8
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_9
    return-void
.end method
