.class public abstract Lcom/miui/home/launcher/model/DatabaseUpdateTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "DatabaseUpdateTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z
.end method

.method public run()V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/miui/home/launcher/model/DatabaseUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/model/DatabaseUpdateTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    iget-object v2, p0, Lcom/miui/home/launcher/model/DatabaseUpdateTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/model/DatabaseUpdateTask;->executeDatabase(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-super {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->run()V

    :cond_0
    return-void
.end method
