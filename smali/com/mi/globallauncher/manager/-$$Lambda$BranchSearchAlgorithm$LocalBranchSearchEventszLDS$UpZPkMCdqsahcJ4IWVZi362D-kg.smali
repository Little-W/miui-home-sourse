.class public final synthetic Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;
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

    iput-object p1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iput-object p2, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;->f$1:Lio/branch/search/BranchSearchResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;->f$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    iget-object p0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSearchAlgorithm$LocalBranchSearchEventszLDS$UpZPkMCdqsahcJ4IWVZi362D-kg;->f$1:Lio/branch/search/BranchSearchResult;

    invoke-static {v0, p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;->lambda$onBranchRemoteSearchComplete$1(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Lio/branch/search/BranchSearchResult;)V

    return-void
.end method
