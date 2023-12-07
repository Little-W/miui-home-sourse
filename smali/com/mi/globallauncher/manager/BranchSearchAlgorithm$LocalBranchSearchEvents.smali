.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/IBranchSearchEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalBranchSearchEvents"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$onBranchSearchError$1(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V
    .locals 1

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onUniSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method

.method static synthetic lambda$onBranchSearchResult$0(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onUniSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method


# virtual methods
.method public onBranchSearchError(Lio/branch/search/BranchSearchError;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "branch search error, message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSearchAlgorithm"

    invoke-static {v0, p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$100(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$000(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$Q5Euegkz3BtlMKa7vI2n5recW2M;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$Q5Euegkz3BtlMKa7vI2n5recW2M;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "BranchSearchAlgorithm"

    const-string v1, "branch search result"

    invoke-static {v0, v1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$100(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$200(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchSearchResult;->getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$000(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;

    invoke-direct {v1, p0, p1}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
