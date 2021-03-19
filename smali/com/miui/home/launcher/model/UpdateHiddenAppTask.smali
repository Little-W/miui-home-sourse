.class public final Lcom/miui/home/launcher/model/UpdateHiddenAppTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "UpdateHiddenAppTask.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateHiddenAppTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateHiddenAppTask.kt\ncom/miui/home/launcher/model/UpdateHiddenAppTask\n*L\n1#1,35:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 7

    .line 11
    sget-object p1, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/HideAppList$Companion;->getSHideAppList()Lcom/miui/home/launcher/HideAppList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/HideAppList;->updateHiddenApp()V

    .line 12
    iget-object p1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/miui/launcher/utils/PortableUtils;->launcherApps_getActivityList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;

    .line 16
    iget-object v0, p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    const-string v1, "componentAndUser.componentName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    const-string v3, "componentAndUser.componentName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 30
    :cond_4
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_5
    return-void
.end method
