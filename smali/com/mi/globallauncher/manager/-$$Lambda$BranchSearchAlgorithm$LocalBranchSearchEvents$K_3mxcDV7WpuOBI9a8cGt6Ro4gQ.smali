.class public final synthetic Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

.field private final synthetic f$1:Lio/branch/search/BranchSearchResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iput-object p2, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;->f$1:Lio/branch/search/BranchSearchResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iget-object v1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEvents$K_3mxcDV7WpuOBI9a8cGt6Ro4gQ;->f$1:Lio/branch/search/BranchSearchResult;

    invoke-static {v0, v1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;->lambda$onBranchSearchResult$0(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V

    return-void
.end method
