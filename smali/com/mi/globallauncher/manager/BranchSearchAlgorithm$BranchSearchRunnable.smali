.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;
.super Ljava/lang/Object;
.source "BranchSearchAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BranchSearchRunnable"
.end annotation


# instance fields
.field private query:Ljava/lang/String;

.field final synthetic this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->query:Ljava/lang/String;

    invoke-static {v0}, Lio/branch/search/BranchSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;

    move-result-object v0

    .line 158
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v1

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$400(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lio/branch/search/BranchSearch;->query(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->query:Ljava/lang/String;

    invoke-static {v0}, Lio/branch/search/BranchCompositeSearchRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchCompositeSearchRequest;

    move-result-object v0

    .line 162
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v1

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$500(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lio/branch/search/BranchSearch;->compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    :cond_1
    :goto_0
    return-void
.end method
