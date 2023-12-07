.class public final synthetic Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

.field private final synthetic f$1:Lio/branch/search/BranchLocalSearchResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchLocalSearchResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iput-object p2, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;->f$1:Lio/branch/search/BranchLocalSearchResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iget-object p0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$nfqZ9HVB8wBu3HVR2vkrTYxHUyM;->f$1:Lio/branch/search/BranchLocalSearchResult;

    invoke-static {v0, p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;->lambda$onBranchLocalSearchComplete$0(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method
