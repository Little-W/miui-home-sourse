.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;
.super Ljava/lang/Object;
.source "BranchSearchAlgorithm.java"

# interfaces
.implements Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalBranchSearchEventszLDS"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$onBranchLocalSearchComplete$0(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchLocalSearchResult;)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onUniLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method

.method static synthetic lambda$onBranchRemoteSearchComplete$1(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onUniSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method


# virtual methods
.method public onAppStoreSearchComplete(Lio/branch/search/BranchAppStoreSearchResult;Lio/branch/search/BranchError;)V
    .locals 0

    return-void
.end method

.method public onBranchLocalSearchComplete(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    invoke-static {v0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$000(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;

    invoke-direct {v2, v0, p1}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchLocalSearchResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBranchRemoteSearchComplete(Lio/branch/search/BranchSearchResult;Lio/branch/search/BranchSearchError;)V
    .locals 2

    .line 70
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 73
    invoke-static {p2}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$100(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$200(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchSearchResult;->getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p2}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$000(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;

    invoke-direct {v1, p2, p1}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
